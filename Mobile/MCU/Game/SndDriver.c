#include "SndDriver.h"
#include "stm32f10x.h"
#include "stm32f10x_gpio.h"
#include "stm32f10x_tim.h"

void SndDriver_Initialize() {
    GPIO_InitTypeDef GPIO_InitStruct;
    TIM_TimeBaseInitTypeDef TIM_InitStruct;
    TIM_OCInitTypeDef OC_InitStruct;

    RCC_APB2PeriphClockCmd(RCC_APB2Periph_AFIO, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOA, ENABLE);
    RCC_APB2PeriphClockCmd(RCC_APB2Periph_TIM1, ENABLE);

    GPIO_InitStruct.GPIO_Speed = GPIO_Speed_50MHz;
	GPIO_InitStruct.GPIO_Mode = GPIO_Mode_AF_PP;
	GPIO_InitStruct.GPIO_Pin = GPIO_Pin_7 | GPIO_Pin_8;
	GPIO_Init(GPIOA, &GPIO_InitStruct);

	GPIO_PinRemapConfig(GPIO_PartialRemap_TIM1, ENABLE);

    TIM_InitStruct.TIM_Prescaler = 15;
    TIM_InitStruct.TIM_CounterMode = TIM_CounterMode_Up;
    TIM_InitStruct.TIM_Period = 5000;
    TIM_InitStruct.TIM_ClockDivision = TIM_CKD_DIV1;
    TIM_InitStruct.TIM_RepetitionCounter = 0;
    TIM_TimeBaseInit(TIM1, &TIM_InitStruct);
    TIM_Cmd(TIM1, ENABLE);

    OC_InitStruct.TIM_OCMode = TIM_OCMode_PWM1;
    OC_InitStruct.TIM_OutputState = TIM_OutputState_Enable;
    OC_InitStruct.TIM_OutputNState = TIM_OutputNState_Enable;
    OC_InitStruct.TIM_Pulse = 10;
    OC_InitStruct.TIM_OCPolarity = TIM_OCPolarity_High;
    OC_InitStruct.TIM_OCNPolarity = TIM_OCNPolarity_High;
    OC_InitStruct.TIM_OCIdleState = TIM_OCIdleState_Set;
    OC_InitStruct.TIM_OCNIdleState = TIM_OCNIdleState_Reset;

    TIM_OC1Init(TIM1, &OC_InitStruct);

    TIM_CCxCmd(TIM1, TIM_Channel_1, TIM_CCx_Enable);
    TIM_CCxNCmd(TIM1, TIM_Channel_1, TIM_CCxN_Enable);

    TIM_CtrlPWMOutputs(TIM1, DISABLE);

}