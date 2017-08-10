# Arduino Make file. Refer to https://github.com/sudar/Arduino-Makefile
# Debian package arduino-mk

BOARD_TAG     = uno
ARDUINO_PORT  = /dev/ttyACM0
ARDUINO_DIR   = /usr/share/arduino/
USER_LIB_PATH = $(realpath ./libraries)
ARDUINO_LIBS  =

include /usr/share/arduino/Arduino.mk
