# VHDL_Microprocessor
A microprocessor I designed for Computer Architecture module

Von Neumann Architecture. Implements a fetch,decode,execute pipelining

Instructions implemented: ADI (add immediate), LD (load), SR (multiple shift right), INC (increment), NOT, ADD, B (unconditional jump), BZ[reg] (branch if register is equal to 0).
See [control_memory.vhd](https://github.com/cppavel/VHDL_Microprocessor/blob/main/sources/control_memory.vhd)

Two versions implemented: slow one (utilizing ripple adder) and a faster one (utilizing carry-lookahead adder)

A simple program was written in machine code (0/1 bits) in memory. See [memory.vhd](https://github.com/cppavel/VHDL_Microprocessor/blob/main/sources/memory.vhd)

To run the project, you have to download a [vivado simulator](https://www.xilinx.com/products/design-tools/vivado/simulator.html), add the source files to your project and run either [processor_tb.vhd](https://github.com/cppavel/VHDL_Microprocessor/blob/main/sources/processor_tb.vhd) or [processor_CLA_tb.vhd](https://github.com/cppavel/VHDL_Microprocessor/blob/main/sources/processor_CLA_tb.vhd) and open the wave file generated.

The schematic of the processor:

![microprocessor](https://user-images.githubusercontent.com/24837651/113886054-4574ef00-97b8-11eb-8a24-342ea93b1c59.png)

