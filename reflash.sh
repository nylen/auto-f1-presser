#!/bin/sh

echo "Inspect this script and rather than running it directly"
exit 1

# http://mitchtech.net/arduino-usb-hid-keyboard/ uses at90usb82 but only
# atmega16u2 worked for me

# Dump current firmware (test)
sudo dfu-programmer atmega16u2 dump

# Erase and re-flash current firmware (test, also reset for loading new code)
sudo dfu-programmer atmega16u2 erase
sudo dfu-programmer atmega16u2 flash --debug 1 Arduino-usbserial-uno.hex
sudo dfu-programmer atmega16u2 reset

# Erase and re-flash keyboard firmware
sudo dfu-programmer atmega16u2 erase
sudo dfu-programmer atmega16u2 flash --debug 1 Arduino-keyboard-0.3.hex 
sudo dfu-programmer atmega16u2 reset
