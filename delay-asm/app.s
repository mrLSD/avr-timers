#include <avr/io.h>

.ORG 0x0000
	RJMP	init

init:
	LDI		R16, 0xFF
	OUT		0x3d, R16
	LDI		R16, 0x08
	OUT		0x3e, R16

	LDI		R20, 0xFF
	LDI		R21, 0x00
	OUT 	0x04, R20

main:
	OUT		0x05, R20
	RCALL	dalay_1sec

	OUT		0x05, R21
	RCALL	dalay_1sec

	RJMP	main

dalay_1sec:
	LDI		R19, 0x92;30
	LDI		R18, 0x7C;4D
	LDI		R17, 0x00;00

delay_1sec_loop:
	SUBI	R17, 1
	SBCI	R18, 0
	SBCI	R19, 0
	BRCC	delay_1sec_loop

	RET
