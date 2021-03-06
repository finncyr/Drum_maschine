/*
 * main.c
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
    alt_up_parallel_port_dev *PIO0, *PIO1, *PIO2) {

        alt_up_parallel_port_write_data(PIO0, 0x0000);
        alt_up_parallel_port_write_data(PIO0, 0x78);
        alt_up_parallel_port_write_data(PIO0, 0x00);
}


int main(void) {
    alt_up_parallel_port_dev *greenLEDs, *redLEDs, *hex3to0, *hex7to4, *PIO0, *PIO1, *PIO2;

    static int currentBank = 0;
    static alt_u16 currentBPM = 120;
    static alt_u8 playState = 0; // Data which indicates if the maschine is generating an output signal
    alt_u8 keys = 0; // Data that contains the current loops pushbutton setting
    alt_u32 switches = 0; // Data that contains the current loops switch setting
    alt_u32 pattern[4] = {0}; // Data which contains all Patterns, created from switches
    alt_u32 BPMData = 0; // Data that will be written to HEX3to0
    static unsigned char digit1 = 0, digit2 = 0, digit3 = 0; // Variables for computing Digit by Digit of the BPM Value
    static unsigned char digit_data[10] = {191, 134, 219, 207, 230, 237, 253, 135, 255, 239}; // Bit-Data for 7-Segment Digits

    // Initialization of HAL Ports
    greenLEDs = alt_up_parallel_port_open_dev(GREEN_LEDS_NAME);
    redLEDs = alt_up_parallel_port_open_dev(RED_LEDS_NAME);
    hex3to0 = alt_up_parallel_port_open_dev(HEX3_HEX0_NAME);
    hex7to4 = alt_up_parallel_port_open_dev(HEX7_HEX4_NAME);
    PIO0 = alt_up_parallel_port_open_dev(PIO_0_NAME);
    PIO1 = alt_up_parallel_port_open_dev(PIO_1_NAME);
    PIO2 = alt_up_parallel_port_open_dev(PIO_2_NAME);
    //Initiating functions
    init(PIO);
    ///////////////
    // MAIN LOOP //
    ///////////////

    while(1){
        //Grab Inputs
    	keys = IORD_ALT_UP_PARALLEL_PORT_DATA(PUSHBUTTONS_BASE);
        switches = IORD_ALT_UP_PARALLEL_PORT_DATA(SLIDER_SWITCHES_BASE);

        //Play/Pause Button
        if(keys & (1<<1)){ // ^ => XOR
            if(playState != 0) playState = 0;
            else playState = 255;
            while(keys & (1<<1)){keys = IORD_ALT_UP_PARALLEL_PORT_DATA(PUSHBUTTONS_BASE);}
        }

        //BPM Up/Down
        if (keys & (1<<2)){
            if(switches & (1<<0)){
                currentBPM = currentBPM + STEP_BPM;
            }
            else{
                currentBPM = currentBPM - STEP_BPM;
            }

            if(currentBPM >= (MAX_BPM + STEP_BPM)) currentBPM = MAX_BPM;
            if(currentBPM <= (MIN_BPM - STEP_BPM))  currentBPM = MIN_BPM;
            while(keys & (1<<2)){keys = IORD_ALT_UP_PARALLEL_PORT_DATA(PUSHBUTTONS_BASE);}
        }

        //Process Bank Change and save pattern
        if(keys & (1<<3)){
            pattern[currentBank] = switches;
            currentBank++;
            if (currentBank > 3) currentBank = 0;
            while(keys & (1<<3)){keys = IORD_ALT_UP_PARALLEL_PORT_DATA(PUSHBUTTONS_BASE);}
        }

        /////////////////////////
        //    Output to RAM    //
        /////////////////////////

        int i = 0;
        for(i = 0; i<=3; i++){
            IOWR_ALT_UP_PARALLEL_PORT_DATA(SRAM_BASE + OFFSET_PATTERN + (i*16), pattern[i]);
        }
        IOWR_ALT_UP_PARALLEL_PORT_DATA(SRAM_BASE + OFFSET_BPM, currentBPM);
        IOWR_ALT_UP_PARALLEL_PORT_DATA(SRAM_BASE + OFFSET_PLAYPAUSE, playState);

        //Output pattern 1 to PIO
        alt_u16 test = pattern[0]>>2;
        IOWR_ALT_UP_PARALLEL_PORT_DATA(PIO_0_BASE, test);
        IOWR_ALT_UP_PARALLEL_PORT_DATA(PIO_1_BASE, currentBPM);
        IOWR_ALT_UP_PARALLEL_PORT_DATA(PIO_2_BASE, playState);


        //Output to red LEDs
        IOWR_ALT_UP_PARALLEL_PORT_DATA(RED_LEDS_BASE, pattern[currentBank]);


        //Output to green LEDs
        IOWR_ALT_UP_PARALLEL_PORT_DATA(GREEN_LEDS_BASE, playState);

        //Output to 7Segment Display
        digit1 = currentBPM / 100;
        digit2 = (currentBPM % 100) / 10;
        digit3 = ((currentBPM % 100) % 10);

        BPMData = (digit_data[digit1]<<16) + (digit_data[digit2]<<8) + (digit_data[digit3]<<0);
        IOWR_ALT_UP_PARALLEL_PORT_DATA(HEX3_HEX0_BASE,BPMData);

        IOWR_ALT_UP_PARALLEL_PORT_DATA(HEX7_HEX4_BASE,digit_data[currentBank]<<0);
    }
}
