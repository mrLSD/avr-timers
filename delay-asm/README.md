# AVR timers: delay solution

Delay based on instructions clock delay summary.

For calculation delay: Freq = 16Mhz / 5 = 0x304D00 for:

```
	SUBI	R17, 1          ; 1 clock
	SBCI	R18, 0          ; 1 clock
	SBCI	R19, 0          ; 1 clock
	BRCC	delay_1sec_loop ; 2 clock
```

## How to use
* `make` - full build.
* `make flash` - flash to Board.