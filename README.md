# What?

Program an Arduino Uno to act as a USB keyboard that automatically presses the
F1 key every 5 seconds.

I'm using this to automate occasional reboots of a server that shows a BIOS
error with "Press F1 to continue" every time it reboots.

Based on http://mitchtech.net/arduino-usb-hid-keyboard/.

Requires reflashing the USB controller on the Arduino with a special firmware
(on my Arduino, this is an ATmega16U2 chip).  See also the
[relevant Arduino docs](https://www.arduino.cc/en/Hacking/DFUProgramming8U2)
and
[`reflash.sh`](reflash.sh)
in this respository.
