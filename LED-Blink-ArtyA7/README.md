# LED Blink on Arty A7 using VHDL

This project blinks LED0 on the Arty A7 FPGA board using a simple VHDL design and clock division logic.

## Files
- **led_blink.vhd**: Top-level VHDL module to blink LED
- **ArtyA7.xdc**: Constraints file for clock and LED pin mapping

## How it works
The onboard 100 MHz clock is divided using a counter. The most significant bit (MSB) of the counter toggles the LED at a slow rate.

## Tools
- Vivado Design Suite
- Arty A7 FPGA Board

