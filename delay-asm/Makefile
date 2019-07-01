MCU=atmega328p

run:
	@avr-as -mmcu=${MCU} app.s -o app.o
	@avr-ld -mavr5 -o app.elf app.o
	@avr-objdump -S app.elf
	@avr-objcopy -O ihex app.elf app.hex

flash:
	@avrdude -v -p ${MCU} -c arduino -P /dev/ttyUSB0 -b 115200 -D -U flash:w:app.hex:i
