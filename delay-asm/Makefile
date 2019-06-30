MCU=atmega328p
MCU_FAMILY=avr5
MCU_USB_PORT=/dev/ttyUSB0

run:
	@avr-as -mmcu=${MCU} app.s -o app.o
	@avr-ld -m${MCU_FAMILY} -o app.elf app.o
	@avr-objdump -S app.elf
	@avr-objcopy -O ihex app.elf app.hex

flash:
	@avrdude -v -p ${MCU} -c arduino -P ${MCU_USB_PORT} -b 115200 -D -U flash:w:app.hex:i
