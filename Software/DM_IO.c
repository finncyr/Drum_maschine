/*
 * DM_IO.c
 *
 *  This is the Main IO Functions of the Drum Maschine
 * 
 *  
 * 
 *  Created on: 14.12.2019
 *      Author: Finn Cyriax
 */

#include "DM_IO.h"


void init() {


}


int main(void) {
    alt_up_parallel_port_dev *greenLEDs, *redLEDs;

    greenLEDs = alt_up_parallel_port_open_dev("/dev/green_leds");
    redLEDs = alt_up_parallel_port_open_dev("/dev/red_leds");


}


/****************************************************************************************
 * Subroutine to read KEYs
****************************************************************************************/
void check_KEYs(int * record, int * play, int * counter)
{
	int KEY_value = 0;

	KEY_value = IORD_ALT_UP_PARALLEL_PORT_EDGE_CAPTURE(PUSHBUTTONS_BASE); 				// read the pushbutton KEY values
	if (KEY_value)						// reset pushbutton register
		IOWR_ALT_UP_PARALLEL_PORT_EDGE_CAPTURE(PUSHBUTTONS_BASE, 0);

	if (KEY_value == (1<<1))					// check KEY1
	{
		// reset counter to start recording
		*counter = 0;
		// clear audio-in FIFO
		IOWR_ALT_UP_AUDIO_CONTROL(AUDIO_BASE, ALT_UP_AUDIO_CONTROL_CR_MSK);  // Set Clear Read FIFO
		IOWR_ALT_UP_AUDIO_CONTROL(AUDIO_BASE, 0x0);   // Release Clear

		*record = 1;
	}
	else if (KEY_value == (1<<2))				// check KEY2
	{
		// reset counter to start playback
		*counter = 0;
		// clear audio-out FIFO
		IOWR_ALT_UP_AUDIO_CONTROL(AUDIO_BASE, ALT_UP_AUDIO_CONTROL_CW_MSK); //Set Clear Write FIFO
		IOWR_ALT_UP_AUDIO_CONTROL(AUDIO_BASE, 0x0);   // Release Clear

		*play = 1;
	}
}