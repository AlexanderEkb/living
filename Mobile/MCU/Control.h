#ifndef CONTROL_H
#define CONTROL_H

#define CTL_BUTTON_A 				0x0001
#define CTL_BUTTON_B 				0x0002
#define CTL_BUTTON_C				0x0004
#define CTL_BUTTON_SELECT		    0x0008
#define	CTL_BUTTON_START		    0x0010
#define CTL_BUTTON_UP				0x0020
#define CTL_BUTTON_DOWN			    0x0040
#define CTL_BUTTON_LEFT			    0x0080
#define CTL_BUTTON_RIGHT		    0x0100

void Ctl_Initialize();
void Control(void *);
unsigned short Ctl_GetDiscreteControlsState();
unsigned short Ctl_WaitForDiscreteControlsChanged();

#endif /*CONTROL_H*/
