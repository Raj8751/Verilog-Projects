🕒 Real-Time Clock (RTC) in Verilog
This project implements a Real-Time Clock (RTC) using Verilog HDL. The RTC counts seconds, minutes, and hours in a 24-hour format (from 00:00:00 to 23:59:59). It is designed for embedded systems, FPGA, or ASIC applications, providing an accurate time-keeping solution based on a 1 Hz clock input.

🚀 Features
24-Hour Format: RTC counts from 00:00:00 to 23:59:59.
Synchonous Counter Design: The clock is synchronized with a 1 Hz input, ensuring accurate timekeeping.
Modular and Efficient: Minimalistic Verilog code, ideal for FPGA or ASIC applications.
Resettable Design: Time resets to 00:00:00 when the reset signal is asserted.
Testbench Simulation: Includes a testbench for verifying the time functionality and simulation.

🧠 How It Works
The design consists of three counters:

Seconds: Counts from 0 to 59.
Minutes: Counts from 0 to 59.
Hours: Counts from 0 to 23.

The time is updated based on the rising edge of the 1 Hz clock. When the reset signal is high, all counters are reset to zero.
