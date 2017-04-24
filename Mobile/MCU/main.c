#include "FreeRTOS.h"
#include "task.h"

#include "DisplayDriver.h"
#include "Control.h"
#include "SndDriver.h"
#include "Game.h"

int main()
{
		LCD_Initializtion();
		Ctl_Initialize();
        SndDriver_Initialize();
		Game_Initialize();

		vTaskStartScheduler();
		while(1);
}
