/*
 * digitalRecording.c
 *
 * In principle the code of the solution to the lab 8 of the NIOS2 labs, part 1 and 2.
 * A simple polling access solution to the AUDIO port of the DE2 media computer
 * Task of lab8 as described by Altera:
 *  "You are to write a C program that uses the Audio Port
 *   to record and play back sounds. Your program should
 *   read the data from the Audio Port and store it in
 *   memory when the user presses the KEY1 pushbutton.
 *   The recording should be played back by writing samples
 *   stored in memory to the Audio Port when the user
 *   presses the KEY2 pushbutton.
 *   The playback of the recording should also be controlled
 *   by slider switches SW1-0 .
 *   - When switch SW1 is 1, then the playback should skip
 *     every other sample when playing back the recording.
 *     [HAR] This multiplies output frequency with 2. Audio effect: one octave up
 *   - If SW0 is 1, then the playback should repeat every sample
 *     from the recording.
 *     [HAR] This divides output frequency by 2. Audio effect: one octave down.
 *   - Otherwise, the recorded sound should be played back normally."
 *   - With SW2, an echo is added with short delay (0,05 s)
 *   - With SW3, an echo is added with long delay (0,3 s)
 *  Ammendments:
 *   Code adapted to the audio HAL interface <altera_up_avalon_audio_regs.h>
 *
 *  Hint: Effects are chosen best by singing a high tone
 *
 *  Created on: 18.08.2014
 *      Author: ghartung
 */
#include "system.h"
#include <alt_types.h>
#include <altera_up_avalon_parallel_port_regs.h>
#include <altera_up_avalon_audio_regs.h>
//#include <sys/alt_alarm.h>
//#include <sys/alt_irq.h>

/* globals */
#define BUF_SIZE 150000			// about 3 seconds of buffer (@ 48K samples/sec)
#define ECHOSHORT 2400          // sample distance for short echo
#define ECHOLONG 13200          // sample distance for long echo
void check_KEYs(int * KEY1, int * KEY2, int * counter);

int main(void)
{

	/* used for audio record/playback */
	int fifospace;
	int buffer_index = 0;
	int leftInBuffer[BUF_SIZE];
	int rightInBuffer[BUF_SIZE];
	int leftOutBuffer[BUF_SIZE];
	int rightOutBuffer[BUF_SIZE];
	int play, record;

	IOWR_ALT_UP_PARALLEL_PORT_DATA(GREEN_LEDS_BASE,0x0);				// turn off LEDG
	/* read and echo audio data */
	while(1)
	{
		check_KEYs(&record, &play, &buffer_index);
		if (record)
		{
			IOWR_ALT_UP_PARALLEL_PORT_DATA(GREEN_LEDS_BASE,0x1);					// turn on LEDG[0]
			fifospace = IORD_ALT_UP_AUDIO_FIFOSPACE(AUDIO_BASE);	        		// read the audio port fifospace register
			// store data until the the audio-in FIFO is empty or the buffer is full
			while ( buffer_index < BUF_SIZE )
			{
				// Wait for the buffers to contain some data.
				while (((fifospace & 0x000000FF) == 0) && ((fifospace & 0x0000FF00) == 0))
				{
					fifospace = IORD_ALT_UP_AUDIO_FIFOSPACE(AUDIO_BASE);	        		// read the audio port fifospace register;	// read the audio port fifospace register
				}
				leftInBuffer[buffer_index] = IORD_ALT_UP_AUDIO_LEFTDATA(AUDIO_BASE);
				rightInBuffer[buffer_index] = IORD_ALT_UP_AUDIO_RIGHTDATA(AUDIO_BASE);
				++buffer_index;
				fifospace = IORD_ALT_UP_AUDIO_FIFOSPACE(AUDIO_BASE);	// read the audio port fifospace register
			}
			// done recording
			record = 0;
			IOWR_ALT_UP_PARALLEL_PORT_DATA(GREEN_LEDS_BASE,0x0);				// turn off LEDG
		}
		else if (play)
		{
			int mode = 0;  // mode of operation, changeable with the switches.
			int roll = 1;
			int echoIndex = 0;
			int output;
			int ix1, ix2;
			// we first have to compute the output buffer before we output it
			echoIndex = ((IORD_ALT_UP_PARALLEL_PORT_DATA(SLIDER_SWITCHES_BASE)&(1<<3))==0)?
					(((IORD_ALT_UP_PARALLEL_PORT_DATA(SLIDER_SWITCHES_BASE)&(1<<2))==0)?
							0:ECHOSHORT):ECHOLONG;
			if (echoIndex > 0) {
				for (ix1 = 0; ix1 < echoIndex; ix1++ ) {
					leftOutBuffer[ix1] = leftInBuffer[ix1];
					rightOutBuffer[ix1]= rightInBuffer[ix1];
				}
				ix2 = 0;
				for (ix1 = echoIndex; ix1 < BUF_SIZE; ix1++, ix2++ ) {
						leftOutBuffer[ix1] = leftInBuffer[ix1]+(leftInBuffer[ix2]>>2);
						rightOutBuffer[ix1]= rightInBuffer[ix1]+(rightInBuffer[ix2]>>2);
				}
			}
			else {
				for (ix1 = 0; ix1 < BUF_SIZE; ix1++ ) {
					leftOutBuffer[ix1] = leftInBuffer[ix1];
					rightOutBuffer[ix1]= rightInBuffer[ix1];
				}
			}

			if ((IORD_ALT_UP_PARALLEL_PORT_DATA(SLIDER_SWITCHES_BASE)& 0x1)>0) // patterns are
				mode = 1;  // playback repeats every sample
			else if ((IORD_ALT_UP_PARALLEL_PORT_DATA(SLIDER_SWITCHES_BASE) & 0x2)>0)
				mode = 2;  // playback skips every second sample
			IOWR_ALT_UP_PARALLEL_PORT_DATA(GREEN_LEDS_BASE,(1<<1));					// turn on LEDG[1]
			fifospace = IORD_ALT_UP_AUDIO_FIFOSPACE(AUDIO_BASE);	        		// read the audio port fifospace register;	 		// read the audio port fifospace register
			// output data until the buffer is empty or the audio-out FIFO is full
			while ( buffer_index < BUF_SIZE )
			{
				while (((fifospace & 0x00FF0000) == 0) && ((fifospace & 0xFF000000) == 0))
				{
					fifospace = IORD_ALT_UP_AUDIO_FIFOSPACE(AUDIO_BASE);	        		// read the audio port fifospace register;	// read the audio port fifospace register
				}
				IOWR_ALT_UP_AUDIO_LEFTDATA(AUDIO_BASE, leftOutBuffer[buffer_index]);
				IOWR_ALT_UP_AUDIO_RIGHTDATA(AUDIO_BASE, rightOutBuffer[buffer_index]);
				if (mode == 2)
					buffer_index = buffer_index + 2; // only every 2nd sample
				else if (mode == 1)
					buffer_index = buffer_index + roll; // roll is 0,1,0,1,0,... => sample repeated
				else
					buffer_index++;
				fifospace = IORD_ALT_UP_AUDIO_FIFOSPACE(AUDIO_BASE);	        		// read the audio port fifospace register;
				roll = 1 - roll; // toggles roll between 0 and 1
			}
			// done playback
			play = 0;
			IOWR_ALT_UP_PARALLEL_PORT_DATA(GREEN_LEDS_BASE,0x0);				// turn off LEDG;				// turn off LEDG
		}
	}
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




