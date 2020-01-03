/*
 * DM_IO.h
 *
 *  This is the Header File for the Main IO of the Drum Maschine.
 *  It contains all includes and defines.
 *  
 *  Created on: 14.12.2019
 *      Author: Finn Cyriax
 */

#ifndef MAIN_H_
#define MAIN_H_

// Includes

#include <system.h>
#include <alt_types.h>
#include <altera_up_avalon_parallel_port.h>
// Defines

#define ADDR_LENGTH 32
#define BIT_RES 24

#define STEPSIZE 16 // 1/STEPSIZE = smallest beat div

#define OFFSET_PATTERN 0

#endif /* DM_IO_H_ */
