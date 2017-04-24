#include "stm32f10x.h"
#include "stm32f10x_rcc.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_spi.h"

#include "FreeRTOS.h"
#include "task.h"
#include "semphr.h"

#include "Control.h"

#define CS	(12)

#define RAW_BUTTON_A 				0x0001
#define RAW_BUTTON_B 				0x0002
#define RAW_BUTTON_C				0x0003
#define RAW_BUTTON_SELECT		    0x0004
#define	RAW_BUTTON_START		    0x0008
#define RAW_BUTTON_UP				0x0010
#define RAW_BUTTON_DOWN			    0x0020
#define RAW_BUTTON_LEFT			    0x0040
#define RAW_BUTTON_RIGHT		    0x0080

void DecodeInput();

volatile static short mDiscreteControls;
static unsigned int DiscreteControls;
xSemaphoreHandle SPISemaphore;
xSemaphoreHandle CtlSemaphore;

void SPI2_IRQHandler() {
		static signed portBASE_TYPE xHigherPriorityTaskWoken;
		SPI_I2S_ITConfig(SPI2, SPI_I2S_IT_RXNE, DISABLE);
		SPI_Cmd(SPI2, DISABLE);

		xHigherPriorityTaskWoken = pdFALSE;

		mDiscreteControls = SPI_I2S_ReceiveData(SPI2);
		xSemaphoreGiveFromISR(SPISemaphore, &xHigherPriorityTaskWoken);
		SPI_I2S_ClearITPendingBit(SPI2, SPI_I2S_IT_RXNE);

		portEND_SWITCHING_ISR(xHigherPriorityTaskWoken);
}

void Ctl_Initialize() {
	xTaskHandle foo;
	GPIO_InitTypeDef GPIO_InitStruct;
	SPI_InitTypeDef SPI_InitStruct;

	vSemaphoreCreateBinary(SPISemaphore);
	xSemaphoreTake(SPISemaphore, 0);

	vSemaphoreCreateBinary(CtlSemaphore);
	xSemaphoreTake(CtlSemaphore, 0);

	RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOB, ENABLE);
	RCC_APB1PeriphClockCmd(RCC_APB1Periph_SPI2, ENABLE);

	GPIO_InitStruct.GPIO_Speed = GPIO_Speed_2MHz;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_Out_PP;
	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_12;
	GPIO_Init(GPIOB, &GPIO_InitStruct);

	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_13;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_Init(GPIOB, &GPIO_InitStruct);

	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_15;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_IN_FLOATING;
	GPIO_Init(GPIOB, &GPIO_InitStruct);

	SPI_InitStruct.SPI_Direction = SPI_Direction_1Line_Rx;
	SPI_InitStruct.SPI_Mode = SPI_Mode_Master;
	SPI_InitStruct.SPI_DataSize = SPI_DataSize_16b;
	SPI_InitStruct.SPI_CPOL = SPI_CPOL_High;
	SPI_InitStruct.SPI_CPHA = SPI_CPHA_1Edge;
	SPI_InitStruct.SPI_NSS = SPI_NSS_Soft;
	SPI_InitStruct.SPI_BaudRatePrescaler = SPI_BaudRatePrescaler_128;
	SPI_InitStruct.SPI_FirstBit = SPI_FirstBit_LSB;
	SPI_InitStruct.SPI_CRCPolynomial = 7;
	SPI_Init(SPI2, &SPI_InitStruct);

	NVIC_EnableIRQ(SPI2_IRQn);
	xTaskCreate(Control, "ctrl", configMINIMAL_STACK_SIZE, NULL, 3, &foo);

}

void Control(void *p) {
		int PrevState;

		while(1) {
				GPIOB->BSRR = 1 << CS;
				vTaskDelay(1);
				GPIOB->BSRR = 1 << (CS+16);
				SPI_Cmd(SPI2, ENABLE);
				SPI_I2S_ITConfig(SPI2, SPI_I2S_IT_RXNE, ENABLE);

				xSemaphoreTake(SPISemaphore, portMAX_DELAY);
				if(PrevState != mDiscreteControls) {
						PrevState = mDiscreteControls;
						DecodeInput();
						xSemaphoreGive(CtlSemaphore);
				}
				vTaskDelay(20);
		}
}

void DecodeInput() {
	unsigned int _mDiscreteControls = ~mDiscreteControls;
	unsigned int _DiscreteControls = 0;

	if((_mDiscreteControls & RAW_BUTTON_C) == RAW_BUTTON_C)
		_DiscreteControls |= CTL_BUTTON_C;
	else if(_mDiscreteControls & RAW_BUTTON_A)
		_DiscreteControls |= CTL_BUTTON_A;
	else if(_mDiscreteControls & RAW_BUTTON_B)
		_DiscreteControls |= CTL_BUTTON_B;

	if(_mDiscreteControls & RAW_BUTTON_SELECT)
		_DiscreteControls |= CTL_BUTTON_SELECT;
	if(_mDiscreteControls & RAW_BUTTON_START)
		_DiscreteControls |= CTL_BUTTON_START;
	if(_mDiscreteControls & RAW_BUTTON_LEFT)
		_DiscreteControls |= CTL_BUTTON_LEFT;
	if(_mDiscreteControls & RAW_BUTTON_RIGHT)
		_DiscreteControls |= CTL_BUTTON_RIGHT;
	if(_mDiscreteControls & RAW_BUTTON_UP)
		_DiscreteControls |= CTL_BUTTON_UP;
	if(_mDiscreteControls & RAW_BUTTON_DOWN)
		_DiscreteControls |= CTL_BUTTON_DOWN;
	DiscreteControls = _DiscreteControls;
}

unsigned short Ctl_GetDiscreteControlsState() {
		return DiscreteControls;
}

unsigned short Ctl_WaitForDiscreteControlsChanged() {
		xSemaphoreTake(CtlSemaphore, portMAX_DELAY);
		return DiscreteControls;
}