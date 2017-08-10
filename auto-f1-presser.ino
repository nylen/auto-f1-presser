#define PIN_BUILTIN_LED LED_BUILTIN

// http://www.usb.org/developers/hidpage/Hut1_12v2.pdf
#define KEYCODE_F1 0x3a

// http://mitchtech.net/arduino-usb-hid-keyboard/
// Keyboard report buffer
uint8_t buf[8] = {
	0
};

void setup() {
	Serial.begin(9600);
	pinMode(PIN_BUILTIN_LED, OUTPUT);
}

void loop() {
	delay(5 * 1000);

	// Simulate keypress (and turn LED on)
	digitalWrite(PIN_BUILTIN_LED, HIGH);
	buf[2] = KEYCODE_F1;
	Serial.write(buf, 8);
	delay(200);

	// Simulate key release (and turn LED off)
	digitalWrite(PIN_BUILTIN_LED, LOW);
	buf[2] = 0;
	Serial.write(buf, 8);
	delay(200);
}
