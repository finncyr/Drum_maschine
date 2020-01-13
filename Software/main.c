/*
 * DM_IO.c
 *
 *  This is the Main IO Functions of the Drum Maschine
 * 
 *  7Segments from Left to Right: [7][6] [5][4]  [3][2][1][0]
 *  7-6:
 *  5-4: Bank Number
 *  3-0: BPM
 * 
 *  Buttons from Left to Right: [1] [2] [3] [4]
 *  1: Play/Pause
 *  2: BPM up/down in Steps of 10 (Range: 60-240)
 *  3: Bank Change 1-4 and save pattern
 *  4: Reset
 * 
 *  Created on: 14.12.2019
 *      Author: Finn Cyriax
 */

#include "main.h"


void init(
    alt_up_parallel_port_dev *greenLEDs,
    alt_up_parallel_port_dev *redLEDs,
    alt_up_parallel_port_dev *hex3to0,
    alt_up_parallel_port_dev *hex7to4) {

        IOWR_ALT_UP_PARALLEL_PORT_DATA(GREEN_LEDS_BASE, (1<<0));
}


int main(void) {
    alt_up_parallel_port_dev *greenLEDs, *redLEDs, *hex3to0, *hex7to4;

    static int currentBank = 0;
    static alt_u16 currentBPM = 120;
    static alt_u8 playState = 0; // 0: pause, 255: play
    alt_u8 keys = 0;
    alt_u32 switches = 0;
    alt_u16 pattern[4];
    static alt_u32 BPM_data = 0xffffffff;

    greenLEDs = alt_up_parallel_port_open_dev(GREEN_LEDS_NAME);
    redLEDs = alt_up_parallel_port_open_dev(RED_LEDS_NAME);
    hex3to0 = alt_up_parallel_port_open_dev(HEX3_HEX0_NAME);
    hex7to4 = alt_up_parallel_port_open_dev(HEX7_HEX4_NAME);

    init(greenLEDs, redLEDs, hex3to0, hex7to4);
    ///////////////
    // MAIN LOOP //
    ///////////////

    while(1){
        //Grab Inputs
        check_KEYs(&keys);
        check_SWITCHs(&switches);

        //Play/Pause Button
        if(keys & (1<<1)){
            if(playState != 0) playState = 0;
            else playState = 255;
        }

        //BPM Up/Down
        if(keys & (1<<2)){
            if(switches & (1<<18)){
                currentBPM = currentBPM + 10;
            }
            else{
                currentBPM = currentBPM - 10;
            }

            if(currentBPM >= 250) currentBPM = 240;
            if(currentBPM <= 50)  currentBPM = 60;
        }

        //Process Bank Change and save pattern
        if(keys & (1<<3)){
            pattern[currentBank] = switches<<16;
            currentBank++;
            if (currentBank > 3) currentBank = 0;
        }

        //Output to RAM
        for(int i = 0; i<=3; i++){
            IOWR_ALT_UP_PARALLEL_PORT_DATA(SRAM_BASE + OFFSET_PATTERN + (i*16), pattern[i]);
        }
        IOWR_ALT_UP_PARALLEL_PORT_DATA(SRAM_BASE + OFFSET_BPM, currentBPM);
        IOWR_ALT_UP_PARALLEL_PORT_DATA(SRAM_BASE + OFFSET_PLAYPAUSE, playState);

        //Output to red LEDs
        IOWR_ALT_UP_PARALLEL_PORT_DATA(RED_LEDS_BASE, pattern[currentBank]);

        ///TODO: 7 Segment Display Data
        
        hexTo7Seg(currentBPM / 100)<<16;
        hexTo7Seg((currentBPM % 100) / 10)<<8;
        hexTo7Seg(((currentBPM % 100) % 10))<<0;
    }
}


// Subroutine to check Pushbuttons

void check_KEYs(alt_u8 *keys) {
	int KEY_value = 0;

	keys = IORD_ALT_UP_PARALLEL_PORT_EDGE_CAPTURE(PUSHBUTTONS_BASE); 				// read the pushbutton KEY values
}

// Subroutine to check Switches

void check_SWITCHs(alt_u32 *switches) {
    // switches[0] => SW17 ; switches[1] => SW16 ...
    switches = IORD_ALT_UP_PARALLEL_PORT_DATA(SLIDER_SWITCHES_BASE);
}

// Subroutine Converts Number to 7Seg Data

unsigned char hexTo7Seg(int *input){
    static unsigned char digit_data = {
        0x01, 0x4f, 0x12, 0x06, 0x4c, 0x24, 0x20, 0x0f, 0x00, 0x04, // 0-9
        0x08, 0x60, 0x72, 0x42, 0x30, 0x38 }; // a-f
    

    if (input >= 0 && input <= 16){
        return digit_data[input];
    }
}