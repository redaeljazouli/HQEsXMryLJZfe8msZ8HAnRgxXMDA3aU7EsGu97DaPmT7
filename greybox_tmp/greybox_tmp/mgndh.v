//lpm_counter CBX_SINGLE_OUTPUT_FILE="ON" LPM_AVALUE=60 LPM_MODULUS=10 LPM_PORT_UPDOWN="PORT_USED" LPM_SVALUE=0 LPM_TYPE="LPM_COUNTER" LPM_WIDTH=6 aclr aset clock cnt_en cout q sset updown
//VERSION_BEGIN 18.1 cbx_mgl 2019:04:11:16:07:46:SJ cbx_stratixii 2019:04:11:16:04:12:SJ cbx_util_mgl 2019:04:11:16:04:12:SJ  VERSION_END
// synthesis VERILOG_INPUT_VERSION VERILOG_2001
// altera message_off 10463



// Copyright (C) 2019  Intel Corporation. All rights reserved.
//  Your use of Intel Corporation's design tools, logic functions 
//  and other software and tools, and any partner logic 
//  functions, and any output files from any of the foregoing 
//  (including device programming or simulation files), and any 
//  associated documentation or information are expressly subject 
//  to the terms and conditions of the Intel Program License 
//  Subscription Agreement, the Intel Quartus Prime License Agreement,
//  the Intel FPGA IP License Agreement, or other applicable license
//  agreement, including, without limitation, that your use is for
//  the sole purpose of programming logic devices manufactured by
//  Intel and sold by Intel or its authorized distributors.  Please
//  refer to the applicable agreement for further details, at
//  https://fpgasoftware.intel.com/eula.



//synthesis_resources = lpm_counter 1 
//synopsys translate_off
`timescale 1 ps / 1 ps
//synopsys translate_on
module  mgndh
	( 
	aclr,
	aset,
	clock,
	cnt_en,
	cout,
	q,
	sset,
	updown) /* synthesis synthesis_clearbox=1 */;
	input   aclr;
	input   aset;
	input   clock;
	input   cnt_en;
	output   cout;
	output   [5:0]  q;
	input   sset;
	input   updown;

	wire  wire_mgl_prim1_cout;
	wire  [5:0]   wire_mgl_prim1_q;

	lpm_counter   mgl_prim1
	( 
	.aclr(aclr),
	.aset(aset),
	.clock(clock),
	.cnt_en(cnt_en),
	.cout(wire_mgl_prim1_cout),
	.q(wire_mgl_prim1_q),
	.sset(sset),
	.updown(updown));
	defparam
		mgl_prim1.lpm_avalue = 60,
		mgl_prim1.lpm_modulus = 10,
		mgl_prim1.lpm_port_updown = "PORT_USED",
		mgl_prim1.lpm_svalue = 0,
		mgl_prim1.lpm_type = "LPM_COUNTER",
		mgl_prim1.lpm_width = 6;
	assign
		cout = wire_mgl_prim1_cout,
		q = wire_mgl_prim1_q;
endmodule //mgndh
//VALID FILE
