/*
 * example12i.c
 *  Extension of Example 1 with a clock task and a idle task
 *  task 1:
 *   reading two operands op1, op2 from switch input when key1, key2 is pressed
 *   computing the greatest common divisor from both numbers and displaying it on the LEDs
 *   This task is executed in interrupt
 *  task 2: displaying the time since last program start in mm.ss
 *  task 3: counts and displays count modulo 2^16 on green LEDs
 *  Created on: 13.08.2014
 *      Author: ghartung
 */
// Includes to access the system addresses and the HAL functions
#include "system.h"
#include <alt_types.h>
#include <altera_up_avalon_parallel_port_regs.h>
#include <sys/alt_alarm.h>
#include <sys/alt_irq.h>


// Defining Types for integer. This generally improves readability
// uint32 is mapped on Altera's alt_u32 type
typedef alt_u32 uint32;
typedef alt_u8 uint8;
// Hoare Algorithmus for General common divisor
uint32 gcd(uint32 op1, uint32 op2) {
	while (op1 != op2) {
		while (op1 < op2) op2 -= op1;
		while (op2 < op1) op1 -= op2;
	}
	return op1;
}

// Interrupt service routine for task1
static void task1_isr(void *context, unsigned int id) {
	static uint32 op1 = 1;
	static uint32 op2 = 1;
	static uint32 gcdResult = 1;
	alt_u32 keyVal;
	keyVal = IORD_ALT_UP_PARALLEL_PORT_EDGE_CAPTURE(PUSHBUTTONS_BASE);;
	if ((keyVal&(1<<2))!= 0) // key2 pressed
		op2 = IORD_ALT_UP_PARALLEL_PORT_DATA(SLIDER_SWITCHES_BASE);
	else if ((keyVal&(1<<1))!= 0) // key1 pressed
		op1 = IORD_ALT_UP_PARALLEL_PORT_DATA(SLIDER_SWITCHES_BASE);
	gcdResult = gcd(op1, op2);
	IOWR_ALT_UP_PARALLEL_PORT_DATA(RED_LEDS_BASE, gcdResult);
	IOWR_ALT_UP_PARALLEL_PORT_EDGE_CAPTURE(PUSHBUTTONS_BASE, 0);
}

// task 2
//	Maintaining/displaying system time
typedef struct {
	uint32 min;
	uint32 sec;
} Time_t;
/*
 * function for the clock
 *
 * The clock function is based on the system timer which runs
 * with a pregiven frequency given by the HAL function alt_ticks_per_second()
 * This function counts the ticks and increments the time constants appropriately
 *
 */
void clockCnt(Time_t *time){
	uint32 secs;
	secs = alt_nticks()/alt_ticks_per_second();
	time->min = secs/60;
	time->sec = secs%60;
}

// function to display the time
void displayTime(Time_t time) {
	static const unsigned char Hex2Segm7[16] =
	    {0x3f,0x6,0x5b,0x4f,0x66,0x6d,0x7d,0x07,0x7f,0x6f,0x77,0x7c,0x58,0x5e,0x79,0x71};
	uint32 m2, m1, s2, s1, hexd;
	m2 = Hex2Segm7[(time.min/10)%16];
	m1 = Hex2Segm7[(time.min%10)];
	s2 = Hex2Segm7[(time.sec/10)];
	s1 = Hex2Segm7[(time.sec%10)];
	hexd = (m2<<24)+(m1<<16)+(s2<<8)+s1;
	IOWR_ALT_UP_PARALLEL_PORT_DATA(HEX7_HEX4_BASE, hexd);
}

void task2(){
	Time_t time;
	static Time_t oldtime = {0,10};
	clockCnt(&time);
	if ((time.min!=oldtime.min)||(time.sec!=oldtime.sec)) {
		  displayTime(time);
		  oldtime.min = time.min;
		  oldtime.sec = time.sec;
	}
	displayTime(time);
}

// Task 3: idle task
void task3() {
	static uint32 count = 0;
	count++;
	IOWR_ALT_UP_PARALLEL_PORT_DATA(GREEN_LEDS_BASE, count>>16);
}

// the main program
//    calling task1 and task2
// 		reading the operands,
// 		calling gcd
// 		displaying the result
//    calling and displaying the clock
int main() {
	// Starting task 1 by registering and allowing interrupt from keys
    alt_irq_register(
    		PUSHBUTTONS_IRQ,        // IRQ number, provided in system.h
    		(void *)0,               // no communication needed with ISR
    		(void *)task1_isr);     // the Interrupt service routine
    IOWR_ALT_UP_PARALLEL_PORT_INTERRUPT_MASK(PUSHBUTTONS_BASE, 0x6);
                                    // Interrupt allowed from key1,2
	while (1) { // endless loop, typical for a embedded program
		// Task 1 runs already
		// Task 2
		task2();
		task3();
	}
}








