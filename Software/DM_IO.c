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