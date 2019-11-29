BOARD_TAG = arduino_due_x
ARCHITECTURE = sam
ARDUINO_PORT = /dev/ttyACM0

include $(HOME)/work/arduino/Arduino-Makefile/Sam.mk

GDB=$(AVR_TOOLS_DIR)/bin/arm-none-eabi-gdb

openocd:
	openocd -f interface/buspirate.cfg -f target/at91sam3ax_8x.cfg -f arduino-due.cfg

debug:
	$(GDB) -x gdb.cmd Blink.ino.elf
