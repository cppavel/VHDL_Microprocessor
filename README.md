# VHDL_Microprocessor
A microprocessor I designed for Computer Architecture module

Von Neumann Architecture. Implements a fetch,decode,execute pipelining. 

Instructions implemented: ADI (add immediate), LD (load), SR (multiple shift right), INC (increment), NOT, ADD, B (unconditional jump), BZ[reg] (branch if register is equal to 0)

Two versions implemented: slow one (utilizing ripple adder) and a faster one (utilizing carry-lookahead adder)

The schematic of the processor:

![microprocessor](https://user-images.githubusercontent.com/24837651/113886054-4574ef00-97b8-11eb-8a24-342ea93b1c59.png)

