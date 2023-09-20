# VHDL-Timer-and-Processor-Communication-System
This project aims to design, synthesize, and integrate a programmable timer using VHDL. The work has been carried out in three major stages:

1. Timer Modelling in the Modelsim Environment
In this phase, we have developed a comprehensive modelling of the timer based on a level 1 functional structure. The key components of this modelling include:

d_buf_in, charg_d, gate, clk, count_val: Main components of the timer.
Reset_demande, chargement, Counter, Zero Detection, Decompt_mode0, out, Latch_d, RD, WR, A0, CS, D: Additional elements involved in the timer's logic.
Dialogue Management and Buffer Management: These blocks handle communication and data storage, respectively.
The tests conducted cover the following functionalities:

CPU writing in three possible modes (LSB, MSB, LSB+MSB) and counter loading.
CPU reading in three possible modes with or without the latch command.
Manipulation of the out output.
2. Timer Synthesis in the Quartus Environment
In this stage, the timer was synthesized using the Quartus tool, with a thorough analysis of the synthesis results at the RTL level. Modifications were made to enhance the synthesis results, focusing particularly on the nature (synchronous or combinatory) of the dialogue function.

3. Timer Integration on the DE10-Lite Platform
Integration on the DE10-Lite platform required some modifications to the initial entity, including the transformation of the bidirectional D bus and the addition of two additional outputs. The specific assignments for inputs and LED displays are detailed in the work description.


Contact
For any questions, suggestions, or collaborations, feel free to reach me out at redaeljazouli20@gmail.com.
