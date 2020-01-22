/*
 * DM_IO.h
 *
 *  This is the Header File for the Main IO of the Drum Maschine.
 *  It contains all includes and defines.
 * 
 *  The SRAM is defined as follows:
 *  
 *  SRAM_BASE -> |    patterns    |    BPM    |  Play/Pause  |    SD Files    |
 *               |     64 bit     |   16 bit  |     8 bit    |      TBD       |
 *               |    16bit [4]   |   ushort  |   0    255   |       ?        | 
 * 
 *  Created on: 14.12.2019
 *      Author: Finn Cyriax
 */

#ifndef MAIN_H_
#define MAIN_H_

// Includes

//#include "Drum_maschine_C_Prototype_bsp\system.h"
#include "system.h"
#include <alt_types.h>
#include <altera_up_avalon_parallel_port.h>
// Defines

#define MIN_BPM 60
#define MAX_BPM 240
#define STEP_BPM 10


// Offsets
// starting at SRAM_BASE, for R/W in SRAM use Address SRAM_BASE + OFFSET_X
#define OFFSET_PATTERN 0
#define LENGTH_PATTERN 64

#define OFFSET_BPM 64
#define LENGTH_BPM 16

#define OFFSET_PLAYPAUSE 80
#define LENGTH_PLAYPAUSE 8

#endif /* DM_IO_H_ */
