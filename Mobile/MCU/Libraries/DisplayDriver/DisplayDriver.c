/****************************************Copyright (c)**************************************************                         
**
**                                 http://www.powermcu.com
**
**--------------File Info-------------------------------------------------------------------------------
** File name:			GLCD.c
** Descriptions:		STM32 FSMC TFT²Ù×÷º¯Êý¿â
**						
**------------------------------------------------------------------------------------------------------
** Created by:			poweravr
** Created date:		2010-11-7
** Version:				1.0
** Descriptions:		The original version
**
**------------------------------------------------------------------------------------------------------
** Modified by:			
** Modified date:	
** Version:
** Descriptions:		
********************************************************************************************************/

/* Includes ------------------------------------------------------------------*/
#include "stm32f10x_fsmc.h"
#include "stm32f10x_tim.h"
#include "stm32f10x_gpio.h"
#include "DisplayDriver.h"

void LCD_PutChar(uint16_t left, uint16_t top, char c);

/* Private define ------------------------------------------------------------*/
#define LCD_REG              (*((volatile unsigned short *) 0x60000000)) /* RS = 0 */
#define LCD_RAM              (*((volatile unsigned short *) 0x60020000)) /* RS = 1 */
#define TTY_WIDTH			(LCD_XSIZE / FONT_WIDTH)
#define TTY_HEIGHT			(LCD_YSIZE / FONT_HEIGHT)

/* Private variables ---------------------------------------------------------*/
static uint16_t DeviceCode;
static uint16_t TimerPeriod = 0;
static uint16_t Channel2Pulse = 1000;


/*******************************************************************************
* Function Name  : LCD_CtrlLinesConfig
* Description    : Configures LCD Control lines (FSMC Pins) in alternate function
                   Push-Pull mode.
* Input          : None
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
static void LCD_CtrlLinesConfig(void)
{
  GPIO_InitTypeDef GPIO_InitStructure;

  /* Enable FSMC, GPIOD, GPIOE and AFIO clocks */
  RCC_AHBPeriphClockCmd(RCC_AHBPeriph_FSMC, ENABLE);

  RCC_APB2PeriphClockCmd(RCC_APB2Periph_GPIOD | RCC_APB2Periph_GPIOE | RCC_APB2Periph_AFIO, ENABLE);
                        
  /* PE.07(D4), PE.08(D5), PE.09(D6), PE.10(D7), PE.11(D8), PE.12(D9),
     PE.13(D10), PE.14(D11), PE.15(D12) */
  GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_7 | GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_10 |
                                 GPIO_Pin_11 | GPIO_Pin_12 | GPIO_Pin_13 | GPIO_Pin_14 | 
                                 GPIO_Pin_15;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_Init(GPIOE, &GPIO_InitStructure);

  /* PD.00(D2), PD.01(D3), PD.04(RD), PD.5(WR), PD.7(CS), PD.8(D13), PD.9(D14),
     PD.10(D15), PD.11(RS) PD.14(D0) PD.15(D1) */
  GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_0 | GPIO_Pin_1 | GPIO_Pin_4 | GPIO_Pin_5 | GPIO_Pin_7 | 
                                 GPIO_Pin_8 | GPIO_Pin_9 | GPIO_Pin_10 | GPIO_Pin_11 | 
                                 GPIO_Pin_14 | GPIO_Pin_15;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_Init(GPIOD, &GPIO_InitStructure);
}

/*******************************************************************************
* Function Name  : LCD_FSMCConfig
* Description    : Configures the Parallel interface (FSMC) for LCD(Parallel mode)
* Input          : None
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
static void LCD_FSMCConfig(void)
{
  FSMC_NORSRAMInitTypeDef  FSMC_NORSRAMInitStructure;
  FSMC_NORSRAMTimingInitTypeDef FSMC_NORSRAMTimingInitStructure;
  /* FSMC¶ÁËÙ¶ÈÉèÖÃ */
  FSMC_NORSRAMTimingInitStructure.FSMC_AddressSetupTime = 60;  /* µØÖ·½¨Á¢Ê±¼ä  */
  FSMC_NORSRAMTimingInitStructure.FSMC_AddressHoldTime = 0;	   
  FSMC_NORSRAMTimingInitStructure.FSMC_DataSetupTime = 60;	   /* Êý¾Ý½¨Á¢Ê±¼ä  */
  FSMC_NORSRAMTimingInitStructure.FSMC_BusTurnAroundDuration = 0x00;
  FSMC_NORSRAMTimingInitStructure.FSMC_CLKDivision = 0x00;
  FSMC_NORSRAMTimingInitStructure.FSMC_DataLatency = 0x00;
  FSMC_NORSRAMTimingInitStructure.FSMC_AccessMode = FSMC_AccessMode_A;	/* FSMC ·ÃÎÊÄ£Ê½ */

  FSMC_NORSRAMInitStructure.FSMC_Bank = FSMC_Bank1_NORSRAM1;
  FSMC_NORSRAMInitStructure.FSMC_DataAddressMux = FSMC_DataAddressMux_Disable;
  FSMC_NORSRAMInitStructure.FSMC_MemoryType = FSMC_MemoryType_SRAM;
  FSMC_NORSRAMInitStructure.FSMC_MemoryDataWidth = FSMC_MemoryDataWidth_16b;
  FSMC_NORSRAMInitStructure.FSMC_BurstAccessMode = FSMC_BurstAccessMode_Disable;
  FSMC_NORSRAMInitStructure.FSMC_WaitSignalPolarity = FSMC_WaitSignalPolarity_Low;
  FSMC_NORSRAMInitStructure.FSMC_WrapMode = FSMC_WrapMode_Disable;
  FSMC_NORSRAMInitStructure.FSMC_WaitSignalActive = FSMC_WaitSignalActive_BeforeWaitState;
  FSMC_NORSRAMInitStructure.FSMC_WriteOperation = FSMC_WriteOperation_Enable;
  FSMC_NORSRAMInitStructure.FSMC_WaitSignal = FSMC_WaitSignal_Disable;
  FSMC_NORSRAMInitStructure.FSMC_AsynchronousWait = FSMC_AsynchronousWait_Disable;
  FSMC_NORSRAMInitStructure.FSMC_ExtendedMode = FSMC_ExtendedMode_Disable;
  FSMC_NORSRAMInitStructure.FSMC_WriteBurst = FSMC_WriteBurst_Disable;
  FSMC_NORSRAMInitStructure.FSMC_ReadWriteTimingStruct = &FSMC_NORSRAMTimingInitStructure;
  FSMC_NORSRAMInit(&FSMC_NORSRAMInitStructure); 
  /* FSMCÐ´ËÙ¶ÈÉèÖÃ */
  FSMC_NORSRAMTimingInitStructure.FSMC_AddressSetupTime = 2;   /* µØÖ·½¨Á¢Ê±¼ä  */
  FSMC_NORSRAMTimingInitStructure.FSMC_AddressHoldTime = 0;	   
  FSMC_NORSRAMTimingInitStructure.FSMC_DataSetupTime = 2;	   /* Êý¾Ý½¨Á¢Ê±¼ä  */
  FSMC_NORSRAMTimingInitStructure.FSMC_BusTurnAroundDuration = 0x00;
  FSMC_NORSRAMTimingInitStructure.FSMC_CLKDivision = 0x00;
  FSMC_NORSRAMTimingInitStructure.FSMC_DataLatency = 0x00;
  FSMC_NORSRAMTimingInitStructure.FSMC_AccessMode = FSMC_AccessMode_A;	/* FSMC ·ÃÎÊÄ£Ê½ */
  FSMC_NORSRAMInitStructure.FSMC_WriteTimingStruct = &FSMC_NORSRAMTimingInitStructure;	  

  FSMC_NORSRAMInit(&FSMC_NORSRAMInitStructure); 

  /* Enable FSMC Bank1_SRAM Bank */
  FSMC_NORSRAMCmd(FSMC_Bank1_NORSRAM1, ENABLE);  
}

/*******************************************************************************
* Function Name  : LCD_Configuration
* Description    : Configure the LCD Control pins and FSMC Parallel interface
* Input          : None
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
static void LCD_Configuration(void)
{
 /* Configure the LCD Control pins --------------------------------------------*/
  LCD_CtrlLinesConfig();

/* Configure the FSMC Parallel interface -------------------------------------*/
  LCD_FSMCConfig();
}

/*******************************************************************************
* Function Name  : LCD_WriteReg
* Description    : Writes to the selected LCD register.
* Input          : - LCD_Reg: address of the selected register.
*                  - LCD_RegValue: value to write to the selected register.
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
static inline void LCD_WriteReg(uint8_t LCD_Reg,uint16_t LCD_RegValue)
{
  /* Write 16-bit Index, then Write Reg */
  LCD_REG = LCD_Reg;
  /* Write 16-bit Reg */
  LCD_RAM = LCD_RegValue;
}

/*******************************************************************************
* Function Name  : LCD_WriteReg
* Description    : Reads the selected LCD Register.
* Input          : None
* Output         : None
* Return         : LCD Register Value.
* Attention		 : None
*******************************************************************************/
static inline uint16_t LCD_ReadReg(uint8_t LCD_Reg)
{
  /* Write 16-bit Index (then Read Reg) */
  LCD_REG = LCD_Reg;
  /* Read 16-bit Reg */
  return (LCD_RAM);
}

/*******************************************************************************
* Function Name  : LCD_WriteRAM_Prepare
* Description    : Prepare to write to the LCD RAM.
* Input          : None
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
inline void LCD_WriteRAM_Prepare(void)
{
  LCD_REG = R34;
}

/*******************************************************************************
* Function Name  : LCD_WriteRAM
* Description    : Writes to the LCD RAM.
* Input          : - RGB_Code: the pixel color in RGB mode (5-6-5).
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
inline void LCD_WriteRAM(uint16_t RGB_Code)					 
{
  /* Write 16-bit GRAM Reg */
  LCD_RAM = RGB_Code;
}

/*******************************************************************************
* Function Name  : LCD_ReadRAM
* Description    : Reads the LCD RAM.
* Input          : None
* Output         : None
* Return         : LCD RAM Value.
* Attention		 : None
*******************************************************************************/
static inline uint16_t LCD_ReadRAM(void)
{
  volatile uint16_t dummy; 
  /* Write 16-bit Index (then Read Reg) */
  LCD_REG = R34; /* Select GRAM Reg */
  /* Read 16-bit Reg */
  dummy = LCD_RAM; 
  
  return LCD_RAM;
}

/*******************************************************************************
* Function Name  : LCD_Delay
* Description    : Delay Time
* Input          : - nCount: Delay Time
* Output         : None
* Return         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
static void LCD_Delay(uint16_t nCount)
{
 uint16_t TimingDelay; 
 while(nCount--)
   {
    for(TimingDelay=0;TimingDelay<10000;TimingDelay++);
   }
}

/*******************************************************************************
* Function Name  : LCD_Initializtion
* Description    : Initialize TFT Controller.
* Input          : None
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
void LCD_Initializtion(void)
{
	LCD_Configuration();
	LCD_Delay(5);  /* delay 50 ms */		
	DeviceCode = LCD_ReadReg(0x0000);		/* ¶ÁÈ¡ÆÁID	*/
	if(DeviceCode==0x0000)	/* HX8347 */
  {
	  // Gamma for CMO 2.8
	  LCD_WriteReg(0x46,0x95);     
	  LCD_WriteReg(0x47,0x51);     
	  LCD_WriteReg(0x48,0x00);     
	  LCD_WriteReg(0x49,0x36);     
	  LCD_WriteReg(0x4A,0x11);    
	  LCD_WriteReg(0x4B,0x66);     
	  LCD_WriteReg(0x4C,0x14);     
	  LCD_WriteReg(0x4D,0x77);     
	  LCD_WriteReg(0x4E,0x13);     
	  LCD_WriteReg(0x4F,0x4C);    
	  LCD_WriteReg(0x50,0x46);     
	  LCD_WriteReg(0x51,0x46);            

	  // Display Setting      
	  LCD_WriteReg(0x01,0x06);     // IDMON=0, INVON=1, NORON=1, PTLON=0    
//	  LCD_WriteReg(0x16,0x08);     // MY=0, MX=0, MV=0, ML=1, BGR=0, TEON=0     
 	  LCD_WriteReg(0x16,0xA8);     // MY=0, MX=0, MV=0, ML=1, BGR=0, TEON=0     
	  LCD_WriteReg(0x23,0x95);     // N_DC=1001 0101  
	  LCD_WriteReg(0x24,0x95);     // P_DC=1001 0101  
	  LCD_WriteReg(0x25,0xFF);     // I_DC=1111 1111       
	  LCD_WriteReg(0x27,0x06);     // N_BP=0000 0110  
	  LCD_WriteReg(0x28,0x06);     // N_FP=0000 0110  
	  LCD_WriteReg(0x29,0x06);     // P_BP=0000 0110  
	  LCD_WriteReg(0x2A,0x06);     // P_FP=0000 0110  
	  LCD_WriteReg(0x2C,0x06);     // I_BP=0000 0110   
	  LCD_WriteReg(0x2D,0x06);     // I_FP=0000 0110      
	  LCD_WriteReg(0x3A,0x01);     // N_RTN=0000, N_NW=001   
	  LCD_WriteReg(0x3B,0x00);     // P_RTN=0000, P_NW=000  
	  LCD_WriteReg(0x3C,0xF0);    // I_RTN=1111, I_NW=000  
	  LCD_WriteReg(0x3D,0x00);     // DIV=00  
	  LCD_Delay(20);
	  LCD_WriteReg(0x35,0x38);     // EQS=38h   
	  LCD_WriteReg(0x36,0x78);     // EQP=78h      
	  LCD_WriteReg(0x3E,0x38);     // SON=38h     
	  LCD_WriteReg(0x40,0x0F);     // GDON=0Fh  
	  LCD_WriteReg(0x41,0xF0);     // GDOFF    
	  
	  // Power Supply Setting    
	  LCD_WriteReg(0x19,0x49);  // OSCADJ=10 0000, OSD_EN=1 //60Hz  
	  LCD_WriteReg(0x93,0x0C);  // RADJ=1100  
	  LCD_Delay(20);
	  LCD_WriteReg(0x20,0x40);  // BT=0100      
	  LCD_WriteReg(0x1D,0x07);  // VC1=111  
	  LCD_WriteReg(0x1E,0x00);  // VC3=000  
	  LCD_WriteReg(0x1F,0x04);  // VRH=0100        
	  
	  // VCOM Setting for CMO 2.8” Panel      
	  LCD_WriteReg(0x44,0x4D);    // VCM=101 0000  
	  LCD_WriteReg(0x45,0x11);     // VDV=1 0001  
	  LCD_Delay(20);
	  LCD_WriteReg(0x1C,0x04);    // AP=100  
	  LCD_Delay(20);
	  LCD_WriteReg(0x1B,0x18);    // GASENB=0, PON=1, DK=1, XDK=0, DDVDH_TRI=0, STB=0  
	  LCD_Delay(20);
	  LCD_WriteReg(0x1B,0x10);    // GASENB=0, PON=1, DK=0, XDK=0, DDVDH_TRI=0, STB=0  
	  LCD_Delay(20);
	  LCD_WriteReg(0x43,0x80);     //Set VCOMG=1  
	  LCD_Delay(20);
	  
	  // Display ON Setting     
	  LCD_WriteReg(0x90,0x7F);     // SAP=0111 1111     
	  LCD_WriteReg(0x26,0x04);     //GON=0, DTE=0, D=01  
	  LCD_Delay(20);
	  LCD_WriteReg(0x26,0x24);     //GON=1, DTE=0, D=01  
	  LCD_WriteReg(0x26,0x2C);     //GON=1, DTE=0, D=11  
	  LCD_Delay(20);
	  LCD_WriteReg(0x26,0x3C);     //GON=1, DTE=1, D=11       
	  
	  // Internal register setting      
	  LCD_WriteReg(0x0057,0x0002);   //Test_Mode Enable    
	  LCD_WriteReg(0x0095,0x0001);   // Set Display clock and Pumping clock to synchronize    
	  LCD_WriteReg(0x0057,0x0000);   // Test_Mode Disable  

  	  LCD_WriteReg(0x000e, 0x0000);
	  LCD_WriteReg(0x000f, 0x0000);

  	  LCD_WriteReg(0x0010, 0x0000);
	  LCD_WriteReg(0x0011, 0x00F0);

	  LCD_WriteReg(0x0012, 0x0000);
	  LCD_WriteReg(0x0013, 0x0000);
	  
	  LCD_WriteReg(0x0014, 0x0000);
	  LCD_WriteReg(0x0015, 0x0000);
	  // misc
	  LCD_WriteReg(0x17, 0x05);
  }
  LCD_Delay(5);  /* delay 50 ms */		
	LCD_Clear(Black);
}

/******************************************************************************
* Function Name  : LCD_SetWindow
* Description    : Sets Window Area.
* Input          : - StartX: Row Start Coordinate 
*                  - StartY: Line Start Coordinate  
*				   - xLong:  
*				   - yLong: 
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
void LCD_SetWindow(uint16_t left,uint16_t top,uint16_t right, uint16_t bottom)
{
  LCD_WriteReg(0x02,left >> 8);     // Column address start2  
  LCD_WriteReg(0x03,left & 0xff);     // Column address start1   
  LCD_WriteReg(0x04,right >> 8);     // Column address end2  
  LCD_WriteReg(0x05,right & 0xff);     // Column address end1     
  LCD_WriteReg(0x06,top >> 8);     // Row address start2  
  LCD_WriteReg(0x07,top & 0xff);     // Row address start1   
  LCD_WriteReg(0x08,bottom >> 8);     // Row address end2  
  LCD_WriteReg(0x09,bottom & 0xff);     // Row address end1
}

/*******************************************************************************
* Function Name  : LCD_Clear
* Description    : ½«ÆÁÄ»Ìî³ä³ÉÖ¸¶¨µÄÑÕÉ«£¬ÈçÇåÆÁ£¬ÔòÌî³ä 0xffff
* Input          : - Color: Screen Color
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
void LCD_Clear(uint16_t Color)
{
  uint32_t index=0;
  LCD_SetWindow(0,0, DISPLAY_WIDTH-1, DISPLAY_HEIGHT-1); 
  LCD_WriteRAM_Prepare(); /* Prepare to write GRAM */
  for(index=0;index<(DISPLAY_WIDTH*DISPLAY_HEIGHT);index++)
   {
     LCD_WriteRAM(Color);
   }
}

/******************************************************************************
* Function Name  : LCD_GetPoint
* Description    : »ñÈ¡Ö¸¶¨×ù±êµÄÑÕÉ«Öµ
* Input          : - Xpos: Row Coordinate
*                  - Xpos: Line Coordinate 
* Output         : None
* Return         : Screen Color
* Attention		 : None
*******************************************************************************/
uint16_t LCD_GetPoint(uint16_t Xpos,uint16_t Ypos)
{
  LCD_SetWindow(Xpos,Ypos, DISPLAY_WIDTH-1, DISPLAY_HEIGHT-1);
  if( DeviceCode==0x7783 || DeviceCode==0x4531 || DeviceCode==0x8989 )
    return ( LCD_ReadRAM() );
  else
    return ( LCD_BGR2RGB(LCD_ReadRAM()) );
}

/******************************************************************************
* Function Name  : LCD_SetPoint
* Description    : ÔÚÖ¸¶¨×ù±ê»­µã
* Input          : - Xpos: Row Coordinate
*                  - Ypos: Line Coordinate 
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
void LCD_SetPoint(uint16_t Xpos,uint16_t Ypos,uint16_t point)
{
  if ( ( Xpos >= DISPLAY_WIDTH ) ||( Ypos>=DISPLAY_HEIGHT ) ) return;
  LCD_SetWindow(Xpos,Ypos, DISPLAY_WIDTH-1, DISPLAY_HEIGHT-1);
  LCD_WriteRAM_Prepare();
  LCD_WriteRAM(point);
}

/******************************************************************************
* Function Name  : LCD_BGR2RGB
* Description    : RRRRRGGGGGGBBBBB ¸ÄÎª BBBBBGGGGGGRRRRR ¸ñÊ½
* Input          : - color: BRG ÑÕÉ«Öµ  
* Output         : None
* Return         : RGB ÑÕÉ«Öµ
* Attention		 : ÄÚ²¿º¯Êýµ÷ÓÃ
*******************************************************************************/
uint16_t LCD_BGR2RGB(uint16_t color)
{
  uint16_t  r, g, b, rgb;

  b = ( color>>0 )  & 0x1f;
  g = ( color>>5 )  & 0x3f;
  r = ( color>>11 ) & 0x1f;
 
  rgb =  (b<<11) + (g<<5) + (r<<0);

  return( rgb );
}

/******************************************************************************
* Function Name  : LCD_BackLight_Init
* Description    : LCD_BackLight Initializtion 
* Input          : None  
* Output         : None
* Return         : None
* Attention		 : None
*******************************************************************************/
void LCD_BackLight_Init(void)
{
  GPIO_InitTypeDef GPIO_InitStructure; 
  TIM_OCInitTypeDef TIM_OCInitStructure;
  TIM_TimeBaseInitTypeDef  TIM_TimeBaseStructure;

  RCC_APB2PeriphClockCmd( RCC_APB2Periph_GPIOB | RCC_APB2Periph_AFIO , ENABLE);
  RCC_APB1PeriphClockCmd(RCC_APB1Periph_TIM3, ENABLE);
 						 
  /*GPIOB Configuration:  PB5(TIM3 CH2) as alternate function push-pull */
  GPIO_InitStructure.GPIO_Pin =  GPIO_Pin_5 ;
  GPIO_InitStructure.GPIO_Mode = GPIO_Mode_AF_PP;
  GPIO_InitStructure.GPIO_Speed = GPIO_Speed_50MHz;
  GPIO_Init(GPIOB, &GPIO_InitStructure);

  GPIO_PinRemapConfig(GPIO_PartialRemap_TIM3, ENABLE);	 /* ¹Ü½ÅÖØÒýÉä */     

  /* -----------------------------------------------------------------------
    TIM3CLK = 36 MHz, Prescaler = 35, TIM3 counter clock = 1 MHz
    TIM3 ARR Register = 999 => TIM3 Frequency = TIM3 counter clock/(ARR + 1)
    TIM3 Frequency = 1 KHz.
    TIM3 Channel2 duty cycle = (TIM3_CCR2/ TIM3_ARR)* 100 
  ----------------------------------------------------------------------- */
   /* ÆµÂÊÎª 1MHz TIM3 counter clock = 1MHz */
  TimerPeriod = (uint16_t) (SystemCoreClock / 1000000) - 1;

  /* Êä³öÆµÂÊ=Ê±ÖÓ/(ARR+1)£¬ËùÒÔ½«Êä³öÒ»¸ö 1Mhz/(999 + 1 )=1kHz ÆµÂÊ	 */
  TIM_TimeBaseStructure.TIM_ClockDivision = 0;  /* Ê¹ÓÃÏµÍ³»ù´¡Ê±ÖÓ */
  TIM_TimeBaseStructure.TIM_CounterMode = TIM_CounterMode_Up;
  TIM_TimeBaseStructure.TIM_RepetitionCounter = 0;
  TIM_TimeBaseStructure.TIM_Prescaler = TimerPeriod;  /* Ê±ÖÓÔ¤·ÖÆµ */
  TIM_TimeBaseStructure.TIM_Period = 999;   /* TIM3 ARR Register */
  TIM_TimeBaseInit(TIM3, &TIM_TimeBaseStructure);
  
  /* TIM_PulseÓÃÀ´¿ØÖÆÕ¼¿Õ±È£¬ËûÊµ¼ÊÓ°ÏìTIMµÄCCR2¼Ä´æÆ÷£¬³ÌÐòÖÐ¿ÉËæÊ±¸ü¸Ä¸Ã¼Ä´æÆ÷µÄÖµ£¬¿ÉËæÊ±¸ü¸ÄÕ¼¿Õ±È¡£Õ¼¿Õ±È=(CCRx/ARR)*100¡£*/
  TIM_OCInitStructure.TIM_OCMode = TIM_OCMode_PWM1; /* Êä³öÄ£Ê½ */
  TIM_OCInitStructure.TIM_OutputState = TIM_OutputState_Enable;
  TIM_OCInitStructure.TIM_Pulse = Channel2Pulse; /* Õ¼¿Õ±È²ÎÊý */
  TIM_OCInitStructure.TIM_OCPolarity = TIM_OCPolarity_High;
  TIM_OC2Init(TIM3, &TIM_OCInitStructure);
  
  TIM_OC2PreloadConfig(TIM3, TIM_OCPreload_Enable);    /* Ê¹ÄÜTIM3ÔÚCCR2µÄÔ¤×°´¢´æÆ÷ */

  TIM_ARRPreloadConfig(TIM3, ENABLE);  /* Ê¹ÄÜ ARR×°ÔØ */
  TIM_Cmd(TIM3, ENABLE);			   /* Ê¹ÄÜTIM3 */

}
/******************************************************************************
* Function Name  : LCD_BackLight
* Description    : µ÷ÕûÒº¾§±³¹â
* Input          : - percent: ±³¹âÁÁ¶È°Ù·Ö±È 
* Output         : None
* Return         : ·µ»Ø1³É¹¦ ·µ»Ø0Ê§°Ü
* Attention		 : None
*******************************************************************************/
FunctionalState LCD_BackLight( uint8_t percent)
{

  if( percent <= 100)
  {
    Channel2Pulse = percent*10;
	LCD_BackLight_Init(); 
	return ENABLE;
  } 
  else
    return DISABLE;
}

/*********************************************************************************************************
      END FILE
*********************************************************************************************************/

