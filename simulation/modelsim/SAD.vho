-- Copyright (C) 2018  Intel Corporation. All rights reserved.
-- Your use of Intel Corporation's design tools, logic functions 
-- and other software and tools, and its AMPP partner logic 
-- functions, and any output files from any of the foregoing 
-- (including device programming or simulation files), and any 
-- associated documentation or information are expressly subject 
-- to the terms and conditions of the Intel Program License 
-- Subscription Agreement, the Intel Quartus Prime License Agreement,
-- the Intel FPGA IP License Agreement, or other applicable license
-- agreement, including, without limitation, that your use is for
-- the sole purpose of programming logic devices manufactured by
-- Intel and sold by Intel or its authorized distributors.  Please
-- refer to the applicable agreement for further details.

-- VENDOR "Altera"
-- PROGRAM "Quartus Prime"
-- VERSION "Version 18.1.0 Build 625 09/12/2018 SJ Lite Edition"

-- DATE "06/24/2024 22:48:47"

-- 
-- Device: Altera EP4CE6E22C6 Package TQFP144
-- 

-- 
-- This VHDL file should be used for ModelSim-Altera (VHDL) only
-- 

LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	hard_block IS
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic
	);
END hard_block;

-- Design Ports Information
-- ~ALTERA_ASDO_DATA1~	=>  Location: PIN_6,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_FLASH_nCE_nCSO~	=>  Location: PIN_8,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DCLK~	=>  Location: PIN_12,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_DATA0~	=>  Location: PIN_13,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- ~ALTERA_nCEO~	=>  Location: PIN_101,	 I/O Standard: 2.5 V,	 Current Strength: 8mA


ARCHITECTURE structure OF hard_block IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~padout\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~padout\ : std_logic;
SIGNAL \~ALTERA_DATA0~~padout\ : std_logic;
SIGNAL \~ALTERA_ASDO_DATA1~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_FLASH_nCE_nCSO~~ibuf_o\ : std_logic;
SIGNAL \~ALTERA_DATA0~~ibuf_o\ : std_logic;

BEGIN

ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;
END structure;


LIBRARY ALTERA;
LIBRARY CYCLONEIVE;
LIBRARY IEEE;
USE ALTERA.ALTERA_PRIMITIVES_COMPONENTS.ALL;
USE CYCLONEIVE.CYCLONEIVE_COMPONENTS.ALL;
USE IEEE.STD_LOGIC_1164.ALL;

ENTITY 	SAD IS
    PORT (
	Clock : IN std_logic;
	nReset : IN std_logic;
	Start : IN std_logic;
	Addr_in : IN std_logic_vector(4 DOWNTO 0);
	in_WE_A : IN std_logic;
	in_WE_B : IN std_logic;
	Data_A : IN std_logic_vector(4 DOWNTO 0);
	Data_B : IN std_logic_vector(4 DOWNTO 0);
	SAD_out : BUFFER std_logic_vector(4 DOWNTO 0);
	Done_o : BUFFER std_logic
	);
END SAD;

-- Design Ports Information
-- SAD_out[0]	=>  Location: PIN_51,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_out[1]	=>  Location: PIN_46,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_out[2]	=>  Location: PIN_55,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_out[3]	=>  Location: PIN_50,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- SAD_out[4]	=>  Location: PIN_49,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Done_o	=>  Location: PIN_53,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Clock	=>  Location: PIN_23,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Start	=>  Location: PIN_65,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- nReset	=>  Location: PIN_24,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_WE_B	=>  Location: PIN_32,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_B[0]	=>  Location: PIN_34,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_in[0]	=>  Location: PIN_66,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_in[1]	=>  Location: PIN_54,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_in[2]	=>  Location: PIN_52,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_in[3]	=>  Location: PIN_58,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Addr_in[4]	=>  Location: PIN_64,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- in_WE_A	=>  Location: PIN_38,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_A[0]	=>  Location: PIN_59,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_B[1]	=>  Location: PIN_88,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_A[1]	=>  Location: PIN_89,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_B[4]	=>  Location: PIN_43,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_A[4]	=>  Location: PIN_90,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_B[3]	=>  Location: PIN_91,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_A[3]	=>  Location: PIN_44,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_B[2]	=>  Location: PIN_129,	 I/O Standard: 2.5 V,	 Current Strength: Default
-- Data_A[2]	=>  Location: PIN_60,	 I/O Standard: 2.5 V,	 Current Strength: Default


ARCHITECTURE structure OF SAD IS
SIGNAL gnd : std_logic := '0';
SIGNAL vcc : std_logic := '1';
SIGNAL unknown : std_logic := 'X';
SIGNAL devoe : std_logic := '1';
SIGNAL devclrn : std_logic := '1';
SIGNAL devpor : std_logic := '1';
SIGNAL ww_devoe : std_logic;
SIGNAL ww_devclrn : std_logic;
SIGNAL ww_devpor : std_logic;
SIGNAL ww_Clock : std_logic;
SIGNAL ww_nReset : std_logic;
SIGNAL ww_Start : std_logic;
SIGNAL ww_Addr_in : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_in_WE_A : std_logic;
SIGNAL ww_in_WE_B : std_logic;
SIGNAL ww_Data_A : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Data_B : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_SAD_out : std_logic_vector(4 DOWNTO 0);
SIGNAL ww_Done_o : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(0 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\ : std_logic_vector(35 DOWNTO 0);
SIGNAL \nReset~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \Clock~inputclkctrl_INCLK_bus\ : std_logic_vector(3 DOWNTO 0);
SIGNAL \SAD_out[0]~output_o\ : std_logic;
SIGNAL \SAD_out[1]~output_o\ : std_logic;
SIGNAL \SAD_out[2]~output_o\ : std_logic;
SIGNAL \SAD_out[3]~output_o\ : std_logic;
SIGNAL \SAD_out[4]~output_o\ : std_logic;
SIGNAL \Done_o~output_o\ : std_logic;
SIGNAL \Clock~input_o\ : std_logic;
SIGNAL \Clock~inputclkctrl_outclk\ : std_logic;
SIGNAL \Start~input_o\ : std_logic;
SIGNAL \CTRL_UNIT|Selector3~0_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count[0]~5_combout\ : std_logic;
SIGNAL \nReset~input_o\ : std_logic;
SIGNAL \nReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count[0]~5_combout\ : std_logic;
SIGNAL \CTRL_UNIT|Load_j~combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S6~feeder_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S6~q\ : std_logic;
SIGNAL \CTRL_UNIT|state.S7~q\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count[4]~15_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count[0]~6\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count[1]~7_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count[1]~8\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count[2]~9_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count[2]~10\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count[3]~11_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count[3]~12\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count[4]~13_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COMPARATORJ|LessThan0~0_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state~18_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S8~q\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count[4]~15_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count[0]~6\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count[1]~7_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count[1]~8\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count[2]~9_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count[2]~10\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count[3]~11_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COMPARATORI|LessThan0~0_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count[3]~12\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count[4]~13_combout\ : std_logic;
SIGNAL \CTRL_UNIT|Selector3~1_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S10~q\ : std_logic;
SIGNAL \CTRL_UNIT|state.S11~feeder_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S11~q\ : std_logic;
SIGNAL \CTRL_UNIT|state~19_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S0~q\ : std_logic;
SIGNAL \CTRL_UNIT|Selector0~0_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S1~q\ : std_logic;
SIGNAL \CTRL_UNIT|state.S9~q\ : std_logic;
SIGNAL \CTRL_UNIT|Selector1~0_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S2~q\ : std_logic;
SIGNAL \CTRL_UNIT|Selector2~0_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S3~q\ : std_logic;
SIGNAL \CTRL_UNIT|state~17_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S4~q\ : std_logic;
SIGNAL \CTRL_UNIT|state.S5~feeder_combout\ : std_logic;
SIGNAL \CTRL_UNIT|state.S5~q\ : std_logic;
SIGNAL \CTRL_UNIT|RE_C~0_combout\ : std_logic;
SIGNAL \in_WE_A~input_o\ : std_logic;
SIGNAL \Data_A[0]~input_o\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Sum[0]~0_combout\ : std_logic;
SIGNAL \Addr_in[0]~input_o\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Add0~0_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][1]~0_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Sum[0]~1\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Sum[1]~2_combout\ : std_logic;
SIGNAL \Addr_in[1]~input_o\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Add0~1_combout\ : std_logic;
SIGNAL \Addr_in[2]~input_o\ : std_logic;
SIGNAL \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][2]~1_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Sum[1]~3\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Sum[2]~4_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Add0~2_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][3]~2_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Sum[2]~5\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Sum[3]~6_combout\ : std_logic;
SIGNAL \Addr_in[3]~input_o\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Add0~3_combout\ : std_logic;
SIGNAL \Addr_in[4]~input_o\ : std_logic;
SIGNAL \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][4]~3_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Sum[3]~7\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Sum[4]~8_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER1|Add0~4_combout\ : std_logic;
SIGNAL \Data_A[1]~input_o\ : std_logic;
SIGNAL \Data_A[2]~input_o\ : std_logic;
SIGNAL \Data_A[3]~input_o\ : std_logic;
SIGNAL \Data_A[4]~input_o\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \in_WE_B~input_o\ : std_logic;
SIGNAL \Data_B[0]~input_o\ : std_logic;
SIGNAL \Data_B[1]~input_o\ : std_logic;
SIGNAL \Data_B[2]~input_o\ : std_logic;
SIGNAL \Data_B[3]~input_o\ : std_logic;
SIGNAL \Data_B[4]~input_o\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Sub_Result[0]~0_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER2|Sum[0]~0_combout\ : std_logic;
SIGNAL \~GND~combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Sub_Result[0]~1\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Sub_Result[1]~2_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Sub_Result[1]~3\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Sub_Result[2]~5\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Sub_Result[3]~7\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~1_cout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~2_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~4_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Sub_Result[3]~6_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Sub_Result[2]~4_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~3\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~6\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~8_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~10_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a4\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~9\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~11_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~13_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~5_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ABSSUB|Add1~7_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER2|Sum[0]~1\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER2|Sum[1]~3\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER2|Sum[2]~5\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER2|Sum[3]~7\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER2|Sum[4]~8_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a3\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER2|Sum[3]~6_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a2\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER2|Sum[2]~4_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a1\ : std_logic;
SIGNAL \DATAPATH_UNIT|ADDER2|Sum[1]~2_combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ : std_logic;
SIGNAL \CTRL_UNIT|Done_o~combout\ : std_logic;
SIGNAL \DATAPATH_UNIT|COUNTERI|pre_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \DATAPATH_UNIT|COUNTERJ|pre_count\ : std_logic_vector(4 DOWNTO 0);
SIGNAL \ALT_INV_nReset~inputclkctrl_outclk\ : std_logic;
SIGNAL \CTRL_UNIT|ALT_INV_state.S0~q\ : std_logic;

COMPONENT hard_block
    PORT (
	devoe : IN std_logic;
	devclrn : IN std_logic;
	devpor : IN std_logic);
END COMPONENT;

BEGIN

ww_Clock <= Clock;
ww_nReset <= nReset;
ww_Start <= Start;
ww_Addr_in <= Addr_in;
ww_in_WE_A <= in_WE_A;
ww_in_WE_B <= in_WE_B;
ww_Data_A <= Data_A;
ww_Data_B <= Data_B;
SAD_out <= ww_SAD_out;
Done_o <= ww_Done_o;
ww_devoe <= devoe;
ww_devclrn <= devclrn;
ww_devpor <= devpor;

\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & \DATAPATH_UNIT|ADDER2|Sum[4]~8_combout\ & \DATAPATH_UNIT|ADDER2|Sum[3]~6_combout\ & \DATAPATH_UNIT|ADDER2|Sum[2]~4_combout\ & \DATAPATH_UNIT|ADDER2|Sum[1]~2_combout\ & \DATAPATH_UNIT|ADDER2|Sum[0]~0_combout\);

\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\(0) <= \~GND~combout\;

\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\(0) <= \~GND~combout\;

\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a1\ <= \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a2\ <= \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a3\ <= \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a4\ <= \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);

\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & \Data_B[4]~input_o\ & \Data_B[3]~input_o\ & \Data_B[2]~input_o\ & \Data_B[1]~input_o\ & \Data_B[0]~input_o\);

\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\DATAPATH_UNIT|ADDER1|Add0~4_combout\ & \DATAPATH_UNIT|ADDER1|Add0~3_combout\ & \DATAPATH_UNIT|ADDER1|Add0~2_combout\ & \DATAPATH_UNIT|ADDER1|Add0~1_combout\ & 
\DATAPATH_UNIT|ADDER1|Add0~0_combout\);

\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\DATAPATH_UNIT|ADDER1|Add0~4_combout\ & \DATAPATH_UNIT|ADDER1|Add0~3_combout\ & \DATAPATH_UNIT|ADDER1|Add0~2_combout\ & \DATAPATH_UNIT|ADDER1|Add0~1_combout\ & 
\DATAPATH_UNIT|ADDER1|Add0~0_combout\);

\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a1\ <= \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a2\ <= \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a3\ <= \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a4\ <= \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);

\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\ <= (gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & gnd & 
gnd & gnd & \Data_A[4]~input_o\ & \Data_A[3]~input_o\ & \Data_A[2]~input_o\ & \Data_A[1]~input_o\ & \Data_A[0]~input_o\);

\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\ <= (\DATAPATH_UNIT|ADDER1|Add0~4_combout\ & \DATAPATH_UNIT|ADDER1|Add0~3_combout\ & \DATAPATH_UNIT|ADDER1|Add0~2_combout\ & \DATAPATH_UNIT|ADDER1|Add0~1_combout\ & 
\DATAPATH_UNIT|ADDER1|Add0~0_combout\);

\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\ <= (\DATAPATH_UNIT|ADDER1|Add0~4_combout\ & \DATAPATH_UNIT|ADDER1|Add0~3_combout\ & \DATAPATH_UNIT|ADDER1|Add0~2_combout\ & \DATAPATH_UNIT|ADDER1|Add0~1_combout\ & 
\DATAPATH_UNIT|ADDER1|Add0~0_combout\);

\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ <= \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(0);
\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a1\ <= \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(1);
\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a2\ <= \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(2);
\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a3\ <= \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(3);
\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a4\ <= \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\(4);

\nReset~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \nReset~input_o\);

\Clock~inputclkctrl_INCLK_bus\ <= (vcc & vcc & vcc & \Clock~input_o\);
\ALT_INV_nReset~inputclkctrl_outclk\ <= NOT \nReset~inputclkctrl_outclk\;
\CTRL_UNIT|ALT_INV_state.S0~q\ <= NOT \CTRL_UNIT|state.S0~q\;
auto_generated_inst : hard_block
PORT MAP (
	devoe => ww_devoe,
	devclrn => ww_devclrn,
	devpor => ww_devpor);

-- Location: IOOBUF_X16_Y0_N23
\SAD_out[0]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	devoe => ww_devoe,
	o => \SAD_out[0]~output_o\);

-- Location: IOOBUF_X7_Y0_N2
\SAD_out[1]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a1\,
	devoe => ww_devoe,
	o => \SAD_out[1]~output_o\);

-- Location: IOOBUF_X18_Y0_N16
\SAD_out[2]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a2\,
	devoe => ww_devoe,
	o => \SAD_out[2]~output_o\);

-- Location: IOOBUF_X13_Y0_N2
\SAD_out[3]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a3\,
	devoe => ww_devoe,
	o => \SAD_out[3]~output_o\);

-- Location: IOOBUF_X13_Y0_N16
\SAD_out[4]~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a4\,
	devoe => ww_devoe,
	o => \SAD_out[4]~output_o\);

-- Location: IOOBUF_X16_Y0_N2
\Done_o~output\ : cycloneive_io_obuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	open_drain_output => "false")
-- pragma translate_on
PORT MAP (
	i => \CTRL_UNIT|Done_o~combout\,
	devoe => ww_devoe,
	o => \Done_o~output_o\);

-- Location: IOIBUF_X0_Y11_N8
\Clock~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Clock,
	o => \Clock~input_o\);

-- Location: CLKCTRL_G2
\Clock~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \Clock~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \Clock~inputclkctrl_outclk\);

-- Location: IOIBUF_X28_Y0_N22
\Start~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Start,
	o => \Start~input_o\);

-- Location: LCCOMB_X16_Y5_N28
\CTRL_UNIT|Selector3~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|Selector3~0_combout\ = (\CTRL_UNIT|state.S11~q\ & \Start~input_o\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S11~q\,
	datad => \Start~input_o\,
	combout => \CTRL_UNIT|Selector3~0_combout\);

-- Location: LCCOMB_X16_Y5_N16
\DATAPATH_UNIT|COUNTERI|pre_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERI|pre_count[0]~5_combout\ = \DATAPATH_UNIT|COUNTERI|pre_count\(0) $ (VCC)
-- \DATAPATH_UNIT|COUNTERI|pre_count[0]~6\ = CARRY(\DATAPATH_UNIT|COUNTERI|pre_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|COUNTERI|pre_count\(0),
	datad => VCC,
	combout => \DATAPATH_UNIT|COUNTERI|pre_count[0]~5_combout\,
	cout => \DATAPATH_UNIT|COUNTERI|pre_count[0]~6\);

-- Location: IOIBUF_X0_Y11_N15
\nReset~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_nReset,
	o => \nReset~input_o\);

-- Location: CLKCTRL_G4
\nReset~inputclkctrl\ : cycloneive_clkctrl
-- pragma translate_off
GENERIC MAP (
	clock_type => "global clock",
	ena_register_mode => "none")
-- pragma translate_on
PORT MAP (
	inclk => \nReset~inputclkctrl_INCLK_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	outclk => \nReset~inputclkctrl_outclk\);

-- Location: LCCOMB_X17_Y5_N12
\DATAPATH_UNIT|COUNTERJ|pre_count[0]~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERJ|pre_count[0]~5_combout\ = \DATAPATH_UNIT|COUNTERJ|pre_count\(0) $ (VCC)
-- \DATAPATH_UNIT|COUNTERJ|pre_count[0]~6\ = CARRY(\DATAPATH_UNIT|COUNTERJ|pre_count\(0))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|COUNTERJ|pre_count\(0),
	datad => VCC,
	combout => \DATAPATH_UNIT|COUNTERJ|pre_count[0]~5_combout\,
	cout => \DATAPATH_UNIT|COUNTERJ|pre_count[0]~6\);

-- Location: LCCOMB_X14_Y5_N10
\CTRL_UNIT|Load_j\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|Load_j~combout\ = (\CTRL_UNIT|state.S8~q\) # (!\CTRL_UNIT|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S8~q\,
	datad => \CTRL_UNIT|state.S0~q\,
	combout => \CTRL_UNIT|Load_j~combout\);

-- Location: LCCOMB_X14_Y5_N22
\CTRL_UNIT|state.S6~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|state.S6~feeder_combout\ = \CTRL_UNIT|state.S5~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CTRL_UNIT|state.S5~q\,
	combout => \CTRL_UNIT|state.S6~feeder_combout\);

-- Location: FF_X14_Y5_N23
\CTRL_UNIT|state.S6\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CTRL_UNIT|state.S6~feeder_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S6~q\);

-- Location: FF_X14_Y5_N25
\CTRL_UNIT|state.S7\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \CTRL_UNIT|state.S6~q\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S7~q\);

-- Location: LCCOMB_X14_Y5_N24
\DATAPATH_UNIT|COUNTERJ|pre_count[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERJ|pre_count[4]~15_combout\ = (\CTRL_UNIT|state.S8~q\) # ((\CTRL_UNIT|state.S7~q\) # (!\CTRL_UNIT|state.S0~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011111111",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S8~q\,
	datac => \CTRL_UNIT|state.S7~q\,
	datad => \CTRL_UNIT|state.S0~q\,
	combout => \DATAPATH_UNIT|COUNTERJ|pre_count[4]~15_combout\);

-- Location: FF_X17_Y5_N13
\DATAPATH_UNIT|COUNTERJ|pre_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DATAPATH_UNIT|COUNTERJ|pre_count[0]~5_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sclr => \CTRL_UNIT|Load_j~combout\,
	ena => \DATAPATH_UNIT|COUNTERJ|pre_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH_UNIT|COUNTERJ|pre_count\(0));

-- Location: LCCOMB_X17_Y5_N14
\DATAPATH_UNIT|COUNTERJ|pre_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERJ|pre_count[1]~7_combout\ = (\DATAPATH_UNIT|COUNTERJ|pre_count\(1) & (!\DATAPATH_UNIT|COUNTERJ|pre_count[0]~6\)) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(1) & ((\DATAPATH_UNIT|COUNTERJ|pre_count[0]~6\) # (GND)))
-- \DATAPATH_UNIT|COUNTERJ|pre_count[1]~8\ = CARRY((!\DATAPATH_UNIT|COUNTERJ|pre_count[0]~6\) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|COUNTERJ|pre_count\(1),
	datad => VCC,
	cin => \DATAPATH_UNIT|COUNTERJ|pre_count[0]~6\,
	combout => \DATAPATH_UNIT|COUNTERJ|pre_count[1]~7_combout\,
	cout => \DATAPATH_UNIT|COUNTERJ|pre_count[1]~8\);

-- Location: FF_X17_Y5_N15
\DATAPATH_UNIT|COUNTERJ|pre_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DATAPATH_UNIT|COUNTERJ|pre_count[1]~7_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sclr => \CTRL_UNIT|Load_j~combout\,
	ena => \DATAPATH_UNIT|COUNTERJ|pre_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH_UNIT|COUNTERJ|pre_count\(1));

-- Location: LCCOMB_X17_Y5_N16
\DATAPATH_UNIT|COUNTERJ|pre_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERJ|pre_count[2]~9_combout\ = (\DATAPATH_UNIT|COUNTERJ|pre_count\(2) & (\DATAPATH_UNIT|COUNTERJ|pre_count[1]~8\ $ (GND))) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(2) & (!\DATAPATH_UNIT|COUNTERJ|pre_count[1]~8\ & VCC))
-- \DATAPATH_UNIT|COUNTERJ|pre_count[2]~10\ = CARRY((\DATAPATH_UNIT|COUNTERJ|pre_count\(2) & !\DATAPATH_UNIT|COUNTERJ|pre_count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|COUNTERJ|pre_count\(2),
	datad => VCC,
	cin => \DATAPATH_UNIT|COUNTERJ|pre_count[1]~8\,
	combout => \DATAPATH_UNIT|COUNTERJ|pre_count[2]~9_combout\,
	cout => \DATAPATH_UNIT|COUNTERJ|pre_count[2]~10\);

-- Location: FF_X17_Y5_N17
\DATAPATH_UNIT|COUNTERJ|pre_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DATAPATH_UNIT|COUNTERJ|pre_count[2]~9_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sclr => \CTRL_UNIT|Load_j~combout\,
	ena => \DATAPATH_UNIT|COUNTERJ|pre_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH_UNIT|COUNTERJ|pre_count\(2));

-- Location: LCCOMB_X17_Y5_N18
\DATAPATH_UNIT|COUNTERJ|pre_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERJ|pre_count[3]~11_combout\ = (\DATAPATH_UNIT|COUNTERJ|pre_count\(3) & (!\DATAPATH_UNIT|COUNTERJ|pre_count[2]~10\)) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(3) & ((\DATAPATH_UNIT|COUNTERJ|pre_count[2]~10\) # (GND)))
-- \DATAPATH_UNIT|COUNTERJ|pre_count[3]~12\ = CARRY((!\DATAPATH_UNIT|COUNTERJ|pre_count[2]~10\) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|COUNTERJ|pre_count\(3),
	datad => VCC,
	cin => \DATAPATH_UNIT|COUNTERJ|pre_count[2]~10\,
	combout => \DATAPATH_UNIT|COUNTERJ|pre_count[3]~11_combout\,
	cout => \DATAPATH_UNIT|COUNTERJ|pre_count[3]~12\);

-- Location: FF_X17_Y5_N19
\DATAPATH_UNIT|COUNTERJ|pre_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DATAPATH_UNIT|COUNTERJ|pre_count[3]~11_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sclr => \CTRL_UNIT|Load_j~combout\,
	ena => \DATAPATH_UNIT|COUNTERJ|pre_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH_UNIT|COUNTERJ|pre_count\(3));

-- Location: LCCOMB_X17_Y5_N20
\DATAPATH_UNIT|COUNTERJ|pre_count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERJ|pre_count[4]~13_combout\ = \DATAPATH_UNIT|COUNTERJ|pre_count[3]~12\ $ (!\DATAPATH_UNIT|COUNTERJ|pre_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH_UNIT|COUNTERJ|pre_count\(4),
	cin => \DATAPATH_UNIT|COUNTERJ|pre_count[3]~12\,
	combout => \DATAPATH_UNIT|COUNTERJ|pre_count[4]~13_combout\);

-- Location: FF_X17_Y5_N21
\DATAPATH_UNIT|COUNTERJ|pre_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DATAPATH_UNIT|COUNTERJ|pre_count[4]~13_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sclr => \CTRL_UNIT|Load_j~combout\,
	ena => \DATAPATH_UNIT|COUNTERJ|pre_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH_UNIT|COUNTERJ|pre_count\(4));

-- Location: LCCOMB_X17_Y5_N26
\DATAPATH_UNIT|COMPARATORJ|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COMPARATORJ|LessThan0~0_combout\ = (\DATAPATH_UNIT|COUNTERJ|pre_count\(3)) # ((\DATAPATH_UNIT|COUNTERJ|pre_count\(2)) # ((\DATAPATH_UNIT|COUNTERJ|pre_count\(0) & \DATAPATH_UNIT|COUNTERJ|pre_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111101100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|COUNTERJ|pre_count\(0),
	datab => \DATAPATH_UNIT|COUNTERJ|pre_count\(3),
	datac => \DATAPATH_UNIT|COUNTERJ|pre_count\(1),
	datad => \DATAPATH_UNIT|COUNTERJ|pre_count\(2),
	combout => \DATAPATH_UNIT|COMPARATORJ|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y5_N12
\CTRL_UNIT|state~18\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|state~18_combout\ = (\CTRL_UNIT|state.S3~q\ & ((\DATAPATH_UNIT|COUNTERJ|pre_count\(4)) # (\DATAPATH_UNIT|COMPARATORJ|LessThan0~0_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101010100000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S3~q\,
	datac => \DATAPATH_UNIT|COUNTERJ|pre_count\(4),
	datad => \DATAPATH_UNIT|COMPARATORJ|LessThan0~0_combout\,
	combout => \CTRL_UNIT|state~18_combout\);

-- Location: FF_X16_Y5_N13
\CTRL_UNIT|state.S8\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CTRL_UNIT|state~18_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S8~q\);

-- Location: LCCOMB_X16_Y5_N2
\DATAPATH_UNIT|COUNTERI|pre_count[4]~15\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERI|pre_count[4]~15_combout\ = \CTRL_UNIT|state.S8~q\ $ (!\CTRL_UNIT|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110100101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S8~q\,
	datac => \CTRL_UNIT|state.S0~q\,
	combout => \DATAPATH_UNIT|COUNTERI|pre_count[4]~15_combout\);

-- Location: FF_X16_Y5_N17
\DATAPATH_UNIT|COUNTERI|pre_count[0]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DATAPATH_UNIT|COUNTERI|pre_count[0]~5_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sclr => \CTRL_UNIT|ALT_INV_state.S0~q\,
	ena => \DATAPATH_UNIT|COUNTERI|pre_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH_UNIT|COUNTERI|pre_count\(0));

-- Location: LCCOMB_X16_Y5_N18
\DATAPATH_UNIT|COUNTERI|pre_count[1]~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERI|pre_count[1]~7_combout\ = (\DATAPATH_UNIT|COUNTERI|pre_count\(1) & (!\DATAPATH_UNIT|COUNTERI|pre_count[0]~6\)) # (!\DATAPATH_UNIT|COUNTERI|pre_count\(1) & ((\DATAPATH_UNIT|COUNTERI|pre_count[0]~6\) # (GND)))
-- \DATAPATH_UNIT|COUNTERI|pre_count[1]~8\ = CARRY((!\DATAPATH_UNIT|COUNTERI|pre_count[0]~6\) # (!\DATAPATH_UNIT|COUNTERI|pre_count\(1)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|COUNTERI|pre_count\(1),
	datad => VCC,
	cin => \DATAPATH_UNIT|COUNTERI|pre_count[0]~6\,
	combout => \DATAPATH_UNIT|COUNTERI|pre_count[1]~7_combout\,
	cout => \DATAPATH_UNIT|COUNTERI|pre_count[1]~8\);

-- Location: FF_X16_Y5_N19
\DATAPATH_UNIT|COUNTERI|pre_count[1]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DATAPATH_UNIT|COUNTERI|pre_count[1]~7_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sclr => \CTRL_UNIT|ALT_INV_state.S0~q\,
	ena => \DATAPATH_UNIT|COUNTERI|pre_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH_UNIT|COUNTERI|pre_count\(1));

-- Location: LCCOMB_X16_Y5_N20
\DATAPATH_UNIT|COUNTERI|pre_count[2]~9\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERI|pre_count[2]~9_combout\ = (\DATAPATH_UNIT|COUNTERI|pre_count\(2) & (\DATAPATH_UNIT|COUNTERI|pre_count[1]~8\ $ (GND))) # (!\DATAPATH_UNIT|COUNTERI|pre_count\(2) & (!\DATAPATH_UNIT|COUNTERI|pre_count[1]~8\ & VCC))
-- \DATAPATH_UNIT|COUNTERI|pre_count[2]~10\ = CARRY((\DATAPATH_UNIT|COUNTERI|pre_count\(2) & !\DATAPATH_UNIT|COUNTERI|pre_count[1]~8\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100001100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|COUNTERI|pre_count\(2),
	datad => VCC,
	cin => \DATAPATH_UNIT|COUNTERI|pre_count[1]~8\,
	combout => \DATAPATH_UNIT|COUNTERI|pre_count[2]~9_combout\,
	cout => \DATAPATH_UNIT|COUNTERI|pre_count[2]~10\);

-- Location: FF_X16_Y5_N21
\DATAPATH_UNIT|COUNTERI|pre_count[2]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DATAPATH_UNIT|COUNTERI|pre_count[2]~9_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sclr => \CTRL_UNIT|ALT_INV_state.S0~q\,
	ena => \DATAPATH_UNIT|COUNTERI|pre_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH_UNIT|COUNTERI|pre_count\(2));

-- Location: LCCOMB_X16_Y5_N22
\DATAPATH_UNIT|COUNTERI|pre_count[3]~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERI|pre_count[3]~11_combout\ = (\DATAPATH_UNIT|COUNTERI|pre_count\(3) & (!\DATAPATH_UNIT|COUNTERI|pre_count[2]~10\)) # (!\DATAPATH_UNIT|COUNTERI|pre_count\(3) & ((\DATAPATH_UNIT|COUNTERI|pre_count[2]~10\) # (GND)))
-- \DATAPATH_UNIT|COUNTERI|pre_count[3]~12\ = CARRY((!\DATAPATH_UNIT|COUNTERI|pre_count[2]~10\) # (!\DATAPATH_UNIT|COUNTERI|pre_count\(3)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101001011111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|COUNTERI|pre_count\(3),
	datad => VCC,
	cin => \DATAPATH_UNIT|COUNTERI|pre_count[2]~10\,
	combout => \DATAPATH_UNIT|COUNTERI|pre_count[3]~11_combout\,
	cout => \DATAPATH_UNIT|COUNTERI|pre_count[3]~12\);

-- Location: FF_X16_Y5_N23
\DATAPATH_UNIT|COUNTERI|pre_count[3]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DATAPATH_UNIT|COUNTERI|pre_count[3]~11_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sclr => \CTRL_UNIT|ALT_INV_state.S0~q\,
	ena => \DATAPATH_UNIT|COUNTERI|pre_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH_UNIT|COUNTERI|pre_count\(3));

-- Location: LCCOMB_X16_Y5_N4
\DATAPATH_UNIT|COMPARATORI|LessThan0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COMPARATORI|LessThan0~0_combout\ = (!\DATAPATH_UNIT|COUNTERI|pre_count\(2) & (!\DATAPATH_UNIT|COUNTERI|pre_count\(3) & ((!\DATAPATH_UNIT|COUNTERI|pre_count\(0)) # (!\DATAPATH_UNIT|COUNTERI|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000100000101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|COUNTERI|pre_count\(2),
	datab => \DATAPATH_UNIT|COUNTERI|pre_count\(1),
	datac => \DATAPATH_UNIT|COUNTERI|pre_count\(3),
	datad => \DATAPATH_UNIT|COUNTERI|pre_count\(0),
	combout => \DATAPATH_UNIT|COMPARATORI|LessThan0~0_combout\);

-- Location: LCCOMB_X16_Y5_N24
\DATAPATH_UNIT|COUNTERI|pre_count[4]~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|COUNTERI|pre_count[4]~13_combout\ = \DATAPATH_UNIT|COUNTERI|pre_count[3]~12\ $ (!\DATAPATH_UNIT|COUNTERI|pre_count\(4))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datad => \DATAPATH_UNIT|COUNTERI|pre_count\(4),
	cin => \DATAPATH_UNIT|COUNTERI|pre_count[3]~12\,
	combout => \DATAPATH_UNIT|COUNTERI|pre_count[4]~13_combout\);

-- Location: FF_X16_Y5_N25
\DATAPATH_UNIT|COUNTERI|pre_count[4]\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \DATAPATH_UNIT|COUNTERI|pre_count[4]~13_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sclr => \CTRL_UNIT|ALT_INV_state.S0~q\,
	ena => \DATAPATH_UNIT|COUNTERI|pre_count[4]~15_combout\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \DATAPATH_UNIT|COUNTERI|pre_count\(4));

-- Location: LCCOMB_X16_Y5_N0
\CTRL_UNIT|Selector3~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|Selector3~1_combout\ = (\CTRL_UNIT|Selector3~0_combout\) # ((\CTRL_UNIT|state.S2~q\ & ((\DATAPATH_UNIT|COUNTERI|pre_count\(4)) # (!\DATAPATH_UNIT|COMPARATORI|LessThan0~0_combout\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1110111011001110",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S2~q\,
	datab => \CTRL_UNIT|Selector3~0_combout\,
	datac => \DATAPATH_UNIT|COMPARATORI|LessThan0~0_combout\,
	datad => \DATAPATH_UNIT|COUNTERI|pre_count\(4),
	combout => \CTRL_UNIT|Selector3~1_combout\);

-- Location: FF_X16_Y5_N1
\CTRL_UNIT|state.S10\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CTRL_UNIT|Selector3~1_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S10~q\);

-- Location: LCCOMB_X17_Y6_N24
\CTRL_UNIT|state.S11~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|state.S11~feeder_combout\ = \CTRL_UNIT|state.S10~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CTRL_UNIT|state.S10~q\,
	combout => \CTRL_UNIT|state.S11~feeder_combout\);

-- Location: FF_X17_Y6_N25
\CTRL_UNIT|state.S11\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CTRL_UNIT|state.S11~feeder_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S11~q\);

-- Location: LCCOMB_X16_Y5_N8
\CTRL_UNIT|state~19\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|state~19_combout\ = (\Start~input_o\) # (!\CTRL_UNIT|state.S11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111101010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S11~q\,
	datad => \Start~input_o\,
	combout => \CTRL_UNIT|state~19_combout\);

-- Location: FF_X16_Y5_N9
\CTRL_UNIT|state.S0\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CTRL_UNIT|state~19_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S0~q\);

-- Location: LCCOMB_X16_Y5_N26
\CTRL_UNIT|Selector0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|Selector0~0_combout\ = ((\CTRL_UNIT|state.S1~q\ & !\Start~input_o\)) # (!\CTRL_UNIT|state.S0~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111110011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL_UNIT|state.S0~q\,
	datac => \CTRL_UNIT|state.S1~q\,
	datad => \Start~input_o\,
	combout => \CTRL_UNIT|Selector0~0_combout\);

-- Location: FF_X16_Y5_N27
\CTRL_UNIT|state.S1\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CTRL_UNIT|Selector0~0_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S1~q\);

-- Location: FF_X14_Y5_N5
\CTRL_UNIT|state.S9\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	asdata => \CTRL_UNIT|state.S8~q\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	sload => VCC,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S9~q\);

-- Location: LCCOMB_X16_Y5_N6
\CTRL_UNIT|Selector1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|Selector1~0_combout\ = (\CTRL_UNIT|state.S9~q\) # ((\CTRL_UNIT|state.S1~q\ & \Start~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S1~q\,
	datac => \CTRL_UNIT|state.S9~q\,
	datad => \Start~input_o\,
	combout => \CTRL_UNIT|Selector1~0_combout\);

-- Location: FF_X16_Y5_N7
\CTRL_UNIT|state.S2\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CTRL_UNIT|Selector1~0_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S2~q\);

-- Location: LCCOMB_X16_Y5_N30
\CTRL_UNIT|Selector2~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|Selector2~0_combout\ = (\CTRL_UNIT|state.S7~q\) # ((\CTRL_UNIT|state.S2~q\ & (\DATAPATH_UNIT|COMPARATORI|LessThan0~0_combout\ & !\DATAPATH_UNIT|COUNTERI|pre_count\(4))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011111000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S2~q\,
	datab => \DATAPATH_UNIT|COMPARATORI|LessThan0~0_combout\,
	datac => \CTRL_UNIT|state.S7~q\,
	datad => \DATAPATH_UNIT|COUNTERI|pre_count\(4),
	combout => \CTRL_UNIT|Selector2~0_combout\);

-- Location: FF_X16_Y5_N31
\CTRL_UNIT|state.S3\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CTRL_UNIT|Selector2~0_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S3~q\);

-- Location: LCCOMB_X16_Y5_N10
\CTRL_UNIT|state~17\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|state~17_combout\ = (\CTRL_UNIT|state.S3~q\ & (!\DATAPATH_UNIT|COUNTERJ|pre_count\(4) & !\DATAPATH_UNIT|COMPARATORJ|LessThan0~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S3~q\,
	datac => \DATAPATH_UNIT|COUNTERJ|pre_count\(4),
	datad => \DATAPATH_UNIT|COMPARATORJ|LessThan0~0_combout\,
	combout => \CTRL_UNIT|state~17_combout\);

-- Location: FF_X16_Y5_N11
\CTRL_UNIT|state.S4\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CTRL_UNIT|state~17_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S4~q\);

-- Location: LCCOMB_X14_Y5_N16
\CTRL_UNIT|state.S5~feeder\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|state.S5~feeder_combout\ = \CTRL_UNIT|state.S4~q\

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111100000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datad => \CTRL_UNIT|state.S4~q\,
	combout => \CTRL_UNIT|state.S5~feeder_combout\);

-- Location: FF_X14_Y5_N17
\CTRL_UNIT|state.S5\ : dffeas
-- pragma translate_off
GENERIC MAP (
	is_wysiwyg => "true",
	power_up => "low")
-- pragma translate_on
PORT MAP (
	clk => \Clock~inputclkctrl_outclk\,
	d => \CTRL_UNIT|state.S5~feeder_combout\,
	clrn => \ALT_INV_nReset~inputclkctrl_outclk\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	q => \CTRL_UNIT|state.S5~q\);

-- Location: LCCOMB_X14_Y5_N4
\CTRL_UNIT|RE_C~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|RE_C~0_combout\ = (\CTRL_UNIT|state.S6~q\) # ((\CTRL_UNIT|state.S9~q\) # (\CTRL_UNIT|state.S4~q\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111111010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \CTRL_UNIT|state.S6~q\,
	datac => \CTRL_UNIT|state.S9~q\,
	datad => \CTRL_UNIT|state.S4~q\,
	combout => \CTRL_UNIT|RE_C~0_combout\);

-- Location: IOIBUF_X1_Y0_N22
\in_WE_A~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_WE_A,
	o => \in_WE_A~input_o\);

-- Location: IOIBUF_X23_Y0_N15
\Data_A[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_A(0),
	o => \Data_A[0]~input_o\);

-- Location: LCCOMB_X17_Y5_N0
\DATAPATH_UNIT|ADDER1|Sum[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER1|Sum[0]~0_combout\ = (\DATAPATH_UNIT|COUNTERI|pre_count\(0) & (\DATAPATH_UNIT|COUNTERJ|pre_count\(0) $ (VCC))) # (!\DATAPATH_UNIT|COUNTERI|pre_count\(0) & (\DATAPATH_UNIT|COUNTERJ|pre_count\(0) & VCC))
-- \DATAPATH_UNIT|ADDER1|Sum[0]~1\ = CARRY((\DATAPATH_UNIT|COUNTERI|pre_count\(0) & \DATAPATH_UNIT|COUNTERJ|pre_count\(0)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|COUNTERI|pre_count\(0),
	datab => \DATAPATH_UNIT|COUNTERJ|pre_count\(0),
	datad => VCC,
	combout => \DATAPATH_UNIT|ADDER1|Sum[0]~0_combout\,
	cout => \DATAPATH_UNIT|ADDER1|Sum[0]~1\);

-- Location: IOIBUF_X28_Y0_N1
\Addr_in[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Addr_in(0),
	o => \Addr_in[0]~input_o\);

-- Location: LCCOMB_X18_Y5_N4
\DATAPATH_UNIT|ADDER1|Add0~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER1|Add0~0_combout\ = (\Start~input_o\ & (\DATAPATH_UNIT|ADDER1|Sum[0]~0_combout\)) # (!\Start~input_o\ & ((\Addr_in[0]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1011101110001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|ADDER1|Sum[0]~0_combout\,
	datab => \Start~input_o\,
	datad => \Addr_in[0]~input_o\,
	combout => \DATAPATH_UNIT|ADDER1|Add0~0_combout\);

-- Location: LCCOMB_X17_Y5_N30
\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][1]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][1]~0_combout\ = \DATAPATH_UNIT|COUNTERI|pre_count\(0) $ (\DATAPATH_UNIT|COUNTERI|pre_count\(1))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000111111110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH_UNIT|COUNTERI|pre_count\(0),
	datad => \DATAPATH_UNIT|COUNTERI|pre_count\(1),
	combout => \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][1]~0_combout\);

-- Location: LCCOMB_X17_Y5_N2
\DATAPATH_UNIT|ADDER1|Sum[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER1|Sum[1]~2_combout\ = (\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][1]~0_combout\ & ((\DATAPATH_UNIT|COUNTERJ|pre_count\(1) & (\DATAPATH_UNIT|ADDER1|Sum[0]~1\ & VCC)) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(1) & 
-- (!\DATAPATH_UNIT|ADDER1|Sum[0]~1\)))) # (!\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][1]~0_combout\ & ((\DATAPATH_UNIT|COUNTERJ|pre_count\(1) & (!\DATAPATH_UNIT|ADDER1|Sum[0]~1\)) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(1) & 
-- ((\DATAPATH_UNIT|ADDER1|Sum[0]~1\) # (GND)))))
-- \DATAPATH_UNIT|ADDER1|Sum[1]~3\ = CARRY((\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][1]~0_combout\ & (!\DATAPATH_UNIT|COUNTERJ|pre_count\(1) & !\DATAPATH_UNIT|ADDER1|Sum[0]~1\)) # 
-- (!\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][1]~0_combout\ & ((!\DATAPATH_UNIT|ADDER1|Sum[0]~1\) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(1)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][1]~0_combout\,
	datab => \DATAPATH_UNIT|COUNTERJ|pre_count\(1),
	datad => VCC,
	cin => \DATAPATH_UNIT|ADDER1|Sum[0]~1\,
	combout => \DATAPATH_UNIT|ADDER1|Sum[1]~2_combout\,
	cout => \DATAPATH_UNIT|ADDER1|Sum[1]~3\);

-- Location: IOIBUF_X18_Y0_N22
\Addr_in[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Addr_in(1),
	o => \Addr_in[1]~input_o\);

-- Location: LCCOMB_X18_Y5_N6
\DATAPATH_UNIT|ADDER1|Add0~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER1|Add0~1_combout\ = (\Start~input_o\ & (\DATAPATH_UNIT|ADDER1|Sum[1]~2_combout\)) # (!\Start~input_o\ & ((\Addr_in[1]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010101011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|ADDER1|Sum[1]~2_combout\,
	datab => \Addr_in[1]~input_o\,
	datad => \Start~input_o\,
	combout => \DATAPATH_UNIT|ADDER1|Add0~1_combout\);

-- Location: IOIBUF_X16_Y0_N8
\Addr_in[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Addr_in(2),
	o => \Addr_in[2]~input_o\);

-- Location: LCCOMB_X17_Y5_N28
\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][2]~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][2]~1_combout\ = \DATAPATH_UNIT|COUNTERI|pre_count\(2) $ (((!\DATAPATH_UNIT|COUNTERI|pre_count\(0) & \DATAPATH_UNIT|COUNTERI|pre_count\(1))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|COUNTERI|pre_count\(2),
	datac => \DATAPATH_UNIT|COUNTERI|pre_count\(0),
	datad => \DATAPATH_UNIT|COUNTERI|pre_count\(1),
	combout => \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][2]~1_combout\);

-- Location: LCCOMB_X17_Y5_N4
\DATAPATH_UNIT|ADDER1|Sum[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER1|Sum[2]~4_combout\ = ((\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][2]~1_combout\ $ (\DATAPATH_UNIT|COUNTERJ|pre_count\(2) $ (!\DATAPATH_UNIT|ADDER1|Sum[1]~3\)))) # (GND)
-- \DATAPATH_UNIT|ADDER1|Sum[2]~5\ = CARRY((\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][2]~1_combout\ & ((\DATAPATH_UNIT|COUNTERJ|pre_count\(2)) # (!\DATAPATH_UNIT|ADDER1|Sum[1]~3\))) # 
-- (!\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][2]~1_combout\ & (\DATAPATH_UNIT|COUNTERJ|pre_count\(2) & !\DATAPATH_UNIT|ADDER1|Sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][2]~1_combout\,
	datab => \DATAPATH_UNIT|COUNTERJ|pre_count\(2),
	datad => VCC,
	cin => \DATAPATH_UNIT|ADDER1|Sum[1]~3\,
	combout => \DATAPATH_UNIT|ADDER1|Sum[2]~4_combout\,
	cout => \DATAPATH_UNIT|ADDER1|Sum[2]~5\);

-- Location: LCCOMB_X16_Y5_N14
\DATAPATH_UNIT|ADDER1|Add0~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER1|Add0~2_combout\ = (\Start~input_o\ & ((\DATAPATH_UNIT|ADDER1|Sum[2]~4_combout\))) # (!\Start~input_o\ & (\Addr_in[2]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Start~input_o\,
	datac => \Addr_in[2]~input_o\,
	datad => \DATAPATH_UNIT|ADDER1|Sum[2]~4_combout\,
	combout => \DATAPATH_UNIT|ADDER1|Add0~2_combout\);

-- Location: LCCOMB_X17_Y5_N22
\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][3]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][3]~2_combout\ = \DATAPATH_UNIT|COUNTERI|pre_count\(3) $ (((\DATAPATH_UNIT|COUNTERI|pre_count\(1) & (\DATAPATH_UNIT|COUNTERI|pre_count\(0) & !\DATAPATH_UNIT|COUNTERI|pre_count\(2))) # 
-- (!\DATAPATH_UNIT|COUNTERI|pre_count\(1) & ((\DATAPATH_UNIT|COUNTERI|pre_count\(2))))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001100101101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|COUNTERI|pre_count\(3),
	datab => \DATAPATH_UNIT|COUNTERI|pre_count\(1),
	datac => \DATAPATH_UNIT|COUNTERI|pre_count\(0),
	datad => \DATAPATH_UNIT|COUNTERI|pre_count\(2),
	combout => \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][3]~2_combout\);

-- Location: LCCOMB_X17_Y5_N6
\DATAPATH_UNIT|ADDER1|Sum[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER1|Sum[3]~6_combout\ = (\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][3]~2_combout\ & ((\DATAPATH_UNIT|COUNTERJ|pre_count\(3) & (\DATAPATH_UNIT|ADDER1|Sum[2]~5\ & VCC)) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(3) & 
-- (!\DATAPATH_UNIT|ADDER1|Sum[2]~5\)))) # (!\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][3]~2_combout\ & ((\DATAPATH_UNIT|COUNTERJ|pre_count\(3) & (!\DATAPATH_UNIT|ADDER1|Sum[2]~5\)) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(3) & 
-- ((\DATAPATH_UNIT|ADDER1|Sum[2]~5\) # (GND)))))
-- \DATAPATH_UNIT|ADDER1|Sum[3]~7\ = CARRY((\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][3]~2_combout\ & (!\DATAPATH_UNIT|COUNTERJ|pre_count\(3) & !\DATAPATH_UNIT|ADDER1|Sum[2]~5\)) # 
-- (!\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][3]~2_combout\ & ((!\DATAPATH_UNIT|ADDER1|Sum[2]~5\) # (!\DATAPATH_UNIT|COUNTERJ|pre_count\(3)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][3]~2_combout\,
	datab => \DATAPATH_UNIT|COUNTERJ|pre_count\(3),
	datad => VCC,
	cin => \DATAPATH_UNIT|ADDER1|Sum[2]~5\,
	combout => \DATAPATH_UNIT|ADDER1|Sum[3]~6_combout\,
	cout => \DATAPATH_UNIT|ADDER1|Sum[3]~7\);

-- Location: IOIBUF_X21_Y0_N8
\Addr_in[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Addr_in(3),
	o => \Addr_in[3]~input_o\);

-- Location: LCCOMB_X18_Y5_N0
\DATAPATH_UNIT|ADDER1|Add0~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER1|Add0~3_combout\ = (\Start~input_o\ & (\DATAPATH_UNIT|ADDER1|Sum[3]~6_combout\)) # (!\Start~input_o\ & ((\Addr_in[3]~input_o\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100110011110000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|ADDER1|Sum[3]~6_combout\,
	datac => \Addr_in[3]~input_o\,
	datad => \Start~input_o\,
	combout => \DATAPATH_UNIT|ADDER1|Add0~3_combout\);

-- Location: IOIBUF_X25_Y0_N1
\Addr_in[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Addr_in(4),
	o => \Addr_in[4]~input_o\);

-- Location: LCCOMB_X17_Y5_N24
\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][4]~3\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][4]~3_combout\ = (\DATAPATH_UNIT|COUNTERI|pre_count\(3) & (!\DATAPATH_UNIT|COUNTERI|pre_count\(2) & ((!\DATAPATH_UNIT|COUNTERI|pre_count\(0)) # (!\DATAPATH_UNIT|COUNTERI|pre_count\(1))))) # 
-- (!\DATAPATH_UNIT|COUNTERI|pre_count\(3) & (\DATAPATH_UNIT|COUNTERI|pre_count\(1) & ((\DATAPATH_UNIT|COUNTERI|pre_count\(2)))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0100010000101010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|COUNTERI|pre_count\(3),
	datab => \DATAPATH_UNIT|COUNTERI|pre_count\(1),
	datac => \DATAPATH_UNIT|COUNTERI|pre_count\(0),
	datad => \DATAPATH_UNIT|COUNTERI|pre_count\(2),
	combout => \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][4]~3_combout\);

-- Location: LCCOMB_X17_Y5_N10
\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\ = \DATAPATH_UNIT|COUNTERI|pre_count\(4) $ (\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][4]~3_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011001111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|COUNTERI|pre_count\(4),
	datad => \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|romout[0][4]~3_combout\,
	combout => \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\);

-- Location: LCCOMB_X17_Y5_N8
\DATAPATH_UNIT|ADDER1|Sum[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER1|Sum[4]~8_combout\ = \DATAPATH_UNIT|COUNTERJ|pre_count\(4) $ (\DATAPATH_UNIT|ADDER1|Sum[3]~7\ $ (!\DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|COUNTERJ|pre_count\(4),
	datad => \DATAPATH_UNIT|MULTIPLIERi|Mult0|mult_core|padder|adder[0]|auto_generated|op_1~0_combout\,
	cin => \DATAPATH_UNIT|ADDER1|Sum[3]~7\,
	combout => \DATAPATH_UNIT|ADDER1|Sum[4]~8_combout\);

-- Location: LCCOMB_X17_Y4_N4
\DATAPATH_UNIT|ADDER1|Add0~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER1|Add0~4_combout\ = (\Start~input_o\ & ((\DATAPATH_UNIT|ADDER1|Sum[4]~8_combout\))) # (!\Start~input_o\ & (\Addr_in[4]~input_o\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000011001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \Addr_in[4]~input_o\,
	datac => \DATAPATH_UNIT|ADDER1|Sum[4]~8_combout\,
	datad => \Start~input_o\,
	combout => \DATAPATH_UNIT|ADDER1|Add0~4_combout\);

-- Location: IOIBUF_X34_Y12_N15
\Data_A[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_A(1),
	o => \Data_A[1]~input_o\);

-- Location: IOIBUF_X23_Y0_N8
\Data_A[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_A(2),
	o => \Data_A[2]~input_o\);

-- Location: IOIBUF_X5_Y0_N15
\Data_A[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_A(3),
	o => \Data_A[3]~input_o\);

-- Location: IOIBUF_X34_Y12_N8
\Data_A[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_A(4),
	o => \Data_A[4]~input_o\);

-- Location: M9K_X15_Y6_N0
\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/SAD.ram0_dpmem_a7e4b69b.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "datapath:DATAPATH_UNIT|dpmem:DPMEMA|altsyncram:M_rtl_0|altsyncram_8nh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 5,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \in_WE_A~input_o\,
	portbre => VCC,
	clk0 => \Clock~inputclkctrl_outclk\,
	clk1 => \Clock~inputclkctrl_outclk\,
	ena0 => \in_WE_A~input_o\,
	ena1 => \CTRL_UNIT|state.S4~q\,
	portadatain => \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: IOIBUF_X0_Y6_N15
\in_WE_B~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_in_WE_B,
	o => \in_WE_B~input_o\);

-- Location: IOIBUF_X0_Y5_N15
\Data_B[0]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_B(0),
	o => \Data_B[0]~input_o\);

-- Location: IOIBUF_X34_Y12_N22
\Data_B[1]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_B(1),
	o => \Data_B[1]~input_o\);

-- Location: IOIBUF_X16_Y24_N22
\Data_B[2]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_B(2),
	o => \Data_B[2]~input_o\);

-- Location: IOIBUF_X34_Y12_N1
\Data_B[3]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_B(3),
	o => \Data_B[3]~input_o\);

-- Location: IOIBUF_X5_Y0_N22
\Data_B[4]~input\ : cycloneive_io_ibuf
-- pragma translate_off
GENERIC MAP (
	bus_hold => "false",
	simulate_z_as => "z")
-- pragma translate_on
PORT MAP (
	i => ww_Data_B(4),
	o => \Data_B[4]~input_o\);

-- Location: M9K_X15_Y5_N0
\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/SAD.ram0_dpmem_a7e4b69b.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "datapath:DATAPATH_UNIT|dpmem:DPMEMB|altsyncram:M_rtl_0|altsyncram_8nh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 5,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 31,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 5,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 31,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 5,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \in_WE_B~input_o\,
	portbre => VCC,
	clk0 => \Clock~inputclkctrl_outclk\,
	clk1 => \Clock~inputclkctrl_outclk\,
	ena0 => \in_WE_B~input_o\,
	ena1 => \CTRL_UNIT|state.S4~q\,
	portadatain => \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y6_N6
\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Sub_Result[0]~0_combout\ = (\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ & ((GND) # (!\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0~portbdataout\))) # 
-- (!\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ & (\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ (GND)))
-- \DATAPATH_UNIT|ABSSUB|Sub_Result[0]~1\ = CARRY((\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0~portbdataout\) # (!\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010111011",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datab => \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => VCC,
	combout => \DATAPATH_UNIT|ABSSUB|Sub_Result[0]~0_combout\,
	cout => \DATAPATH_UNIT|ABSSUB|Sub_Result[0]~1\);

-- Location: LCCOMB_X16_Y4_N16
\DATAPATH_UNIT|ADDER2|Sum[0]~0\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER2|Sum[0]~0_combout\ = (\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~0_combout\ & (\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ $ (VCC))) # (!\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~0_combout\ & 
-- (\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0~portbdataout\ & VCC))
-- \DATAPATH_UNIT|ADDER2|Sum[0]~1\ = CARRY((\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~0_combout\ & \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0~portbdataout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110011010001000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|ABSSUB|Sub_Result[0]~0_combout\,
	datab => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0~portbdataout\,
	datad => VCC,
	combout => \DATAPATH_UNIT|ADDER2|Sum[0]~0_combout\,
	cout => \DATAPATH_UNIT|ADDER2|Sum[0]~1\);

-- Location: LCCOMB_X14_Y4_N28
\~GND\ : cycloneive_lcell_comb
-- Equation(s):
-- \~GND~combout\ = GND

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	combout => \~GND~combout\);

-- Location: LCCOMB_X16_Y6_N8
\DATAPATH_UNIT|ABSSUB|Sub_Result[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Sub_Result[1]~2_combout\ = (\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a1\ & ((\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a1\ & (!\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~1\)) # 
-- (!\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a1\ & ((\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~1\) # (GND))))) # (!\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a1\ & ((\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a1\ & 
-- (\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~1\ & VCC)) # (!\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a1\ & (!\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~1\))))
-- \DATAPATH_UNIT|ABSSUB|Sub_Result[1]~3\ = CARRY((\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a1\ & ((!\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~1\) # (!\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a1\))) # 
-- (!\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a1\ & (!\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a1\ & !\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~1\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100100101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a1\,
	datab => \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a1\,
	datad => VCC,
	cin => \DATAPATH_UNIT|ABSSUB|Sub_Result[0]~1\,
	combout => \DATAPATH_UNIT|ABSSUB|Sub_Result[1]~2_combout\,
	cout => \DATAPATH_UNIT|ABSSUB|Sub_Result[1]~3\);

-- Location: LCCOMB_X16_Y6_N10
\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Sub_Result[2]~4_combout\ = ((\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a2\ $ (\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a2\ $ (\DATAPATH_UNIT|ABSSUB|Sub_Result[1]~3\)))) # (GND)
-- \DATAPATH_UNIT|ABSSUB|Sub_Result[2]~5\ = CARRY((\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a2\ & ((!\DATAPATH_UNIT|ABSSUB|Sub_Result[1]~3\) # (!\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a2\))) # 
-- (!\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a2\ & (!\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a2\ & !\DATAPATH_UNIT|ABSSUB|Sub_Result[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000101011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a2\,
	datab => \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a2\,
	datad => VCC,
	cin => \DATAPATH_UNIT|ABSSUB|Sub_Result[1]~3\,
	combout => \DATAPATH_UNIT|ABSSUB|Sub_Result[2]~4_combout\,
	cout => \DATAPATH_UNIT|ABSSUB|Sub_Result[2]~5\);

-- Location: LCCOMB_X16_Y6_N12
\DATAPATH_UNIT|ABSSUB|Sub_Result[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Sub_Result[3]~6_combout\ = (\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a3\ & ((\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a3\ & (!\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~5\)) # 
-- (!\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a3\ & (\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~5\ & VCC)))) # (!\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a3\ & ((\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a3\ & 
-- ((\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~5\) # (GND))) # (!\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a3\ & (!\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~5\))))
-- \DATAPATH_UNIT|ABSSUB|Sub_Result[3]~7\ = CARRY((\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a3\ & (\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a3\ & !\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~5\)) # 
-- (!\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a3\ & ((\DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a3\) # (!\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~5\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100101001101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a3\,
	datab => \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a3\,
	datad => VCC,
	cin => \DATAPATH_UNIT|ABSSUB|Sub_Result[2]~5\,
	combout => \DATAPATH_UNIT|ABSSUB|Sub_Result[3]~6_combout\,
	cout => \DATAPATH_UNIT|ABSSUB|Sub_Result[3]~7\);

-- Location: LCCOMB_X16_Y6_N14
\DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\ = \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a4\ $ (\DATAPATH_UNIT|ABSSUB|Sub_Result[3]~7\ $ (\DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a4\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001100111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|DPMEMB|M_rtl_0|auto_generated|ram_block1a4\,
	datad => \DATAPATH_UNIT|DPMEMA|M_rtl_0|auto_generated|ram_block1a4\,
	cin => \DATAPATH_UNIT|ABSSUB|Sub_Result[3]~7\,
	combout => \DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\);

-- Location: LCCOMB_X16_Y6_N16
\DATAPATH_UNIT|ABSSUB|Add1~1\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Add1~1_cout\ = CARRY(!\DATAPATH_UNIT|ABSSUB|Sub_Result[0]~0_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0000000001010101",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|ABSSUB|Sub_Result[0]~0_combout\,
	datad => VCC,
	cout => \DATAPATH_UNIT|ABSSUB|Add1~1_cout\);

-- Location: LCCOMB_X16_Y6_N18
\DATAPATH_UNIT|ABSSUB|Add1~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Add1~2_combout\ = (\DATAPATH_UNIT|ABSSUB|Sub_Result[1]~2_combout\ & ((\DATAPATH_UNIT|ABSSUB|Add1~1_cout\) # (GND))) # (!\DATAPATH_UNIT|ABSSUB|Sub_Result[1]~2_combout\ & (!\DATAPATH_UNIT|ABSSUB|Add1~1_cout\))
-- \DATAPATH_UNIT|ABSSUB|Add1~3\ = CARRY((\DATAPATH_UNIT|ABSSUB|Sub_Result[1]~2_combout\) # (!\DATAPATH_UNIT|ABSSUB|Add1~1_cout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1100001111001111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|ABSSUB|Sub_Result[1]~2_combout\,
	datad => VCC,
	cin => \DATAPATH_UNIT|ABSSUB|Add1~1_cout\,
	combout => \DATAPATH_UNIT|ABSSUB|Add1~2_combout\,
	cout => \DATAPATH_UNIT|ABSSUB|Add1~3\);

-- Location: LCCOMB_X16_Y6_N4
\DATAPATH_UNIT|ABSSUB|Add1~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Add1~4_combout\ = (\DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\ & ((\DATAPATH_UNIT|ABSSUB|Add1~2_combout\))) # (!\DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\ & (\DATAPATH_UNIT|ABSSUB|Sub_Result[1]~2_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111110000001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|ABSSUB|Sub_Result[1]~2_combout\,
	datac => \DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\,
	datad => \DATAPATH_UNIT|ABSSUB|Add1~2_combout\,
	combout => \DATAPATH_UNIT|ABSSUB|Add1~4_combout\);

-- Location: LCCOMB_X16_Y6_N20
\DATAPATH_UNIT|ABSSUB|Add1~5\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Add1~5_combout\ = (\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~4_combout\ & (!\DATAPATH_UNIT|ABSSUB|Add1~3\ & VCC)) # (!\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~4_combout\ & (\DATAPATH_UNIT|ABSSUB|Add1~3\ $ (GND)))
-- \DATAPATH_UNIT|ABSSUB|Add1~6\ = CARRY((!\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~4_combout\ & !\DATAPATH_UNIT|ABSSUB|Add1~3\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0101101000000101",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|ABSSUB|Sub_Result[2]~4_combout\,
	datad => VCC,
	cin => \DATAPATH_UNIT|ABSSUB|Add1~3\,
	combout => \DATAPATH_UNIT|ABSSUB|Add1~5_combout\,
	cout => \DATAPATH_UNIT|ABSSUB|Add1~6\);

-- Location: LCCOMB_X16_Y6_N22
\DATAPATH_UNIT|ABSSUB|Add1~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Add1~8_combout\ = (\DATAPATH_UNIT|ABSSUB|Sub_Result[3]~6_combout\ & ((\DATAPATH_UNIT|ABSSUB|Add1~6\) # (GND))) # (!\DATAPATH_UNIT|ABSSUB|Sub_Result[3]~6_combout\ & (!\DATAPATH_UNIT|ABSSUB|Add1~6\))
-- \DATAPATH_UNIT|ABSSUB|Add1~9\ = CARRY((\DATAPATH_UNIT|ABSSUB|Sub_Result[3]~6_combout\) # (!\DATAPATH_UNIT|ABSSUB|Add1~6\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1010010110101111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|ABSSUB|Sub_Result[3]~6_combout\,
	datad => VCC,
	cin => \DATAPATH_UNIT|ABSSUB|Add1~6\,
	combout => \DATAPATH_UNIT|ABSSUB|Add1~8_combout\,
	cout => \DATAPATH_UNIT|ABSSUB|Add1~9\);

-- Location: LCCOMB_X16_Y6_N28
\DATAPATH_UNIT|ABSSUB|Add1~10\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Add1~10_combout\ = (\DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\ & (\DATAPATH_UNIT|ABSSUB|Add1~8_combout\)) # (!\DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\ & ((\DATAPATH_UNIT|ABSSUB|Sub_Result[3]~6_combout\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111001111000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\,
	datac => \DATAPATH_UNIT|ABSSUB|Add1~8_combout\,
	datad => \DATAPATH_UNIT|ABSSUB|Sub_Result[3]~6_combout\,
	combout => \DATAPATH_UNIT|ABSSUB|Add1~10_combout\);

-- Location: M9K_X15_Y4_N0
\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0\ : cycloneive_ram_block
-- pragma translate_off
GENERIC MAP (
	mem_init0 => X"000000000000000000",
	clk0_core_clock_enable => "ena0",
	clk1_core_clock_enable => "ena1",
	clk1_input_clock_enable => "ena1",
	data_interleave_offset_in_bits => 1,
	data_interleave_width_in_bits => 1,
	init_file => "db/SAD.ram0_dpmem_a7e4b69b.hdl.mif",
	init_file_layout => "port_a",
	logical_ram_name => "datapath:DATAPATH_UNIT|dpmem:DPMEMC|altsyncram:M_rtl_0|altsyncram_8nh1:auto_generated|ALTSYNCRAM",
	mixed_port_feed_through_mode => "dont_care",
	operation_mode => "dual_port",
	port_a_address_clear => "none",
	port_a_address_width => 1,
	port_a_byte_enable_clock => "none",
	port_a_data_out_clear => "none",
	port_a_data_out_clock => "none",
	port_a_data_width => 36,
	port_a_first_address => 0,
	port_a_first_bit_number => 0,
	port_a_last_address => 1,
	port_a_logical_ram_depth => 32,
	port_a_logical_ram_width => 5,
	port_a_read_during_write_mode => "new_data_with_nbe_read",
	port_b_address_clear => "none",
	port_b_address_clock => "clock1",
	port_b_address_width => 1,
	port_b_data_out_clear => "none",
	port_b_data_out_clock => "none",
	port_b_data_width => 36,
	port_b_first_address => 0,
	port_b_first_bit_number => 0,
	port_b_last_address => 1,
	port_b_logical_ram_depth => 32,
	port_b_logical_ram_width => 5,
	port_b_read_during_write_mode => "new_data_with_nbe_read",
	port_b_read_enable_clock => "clock1",
	ram_block_type => "M9K")
-- pragma translate_on
PORT MAP (
	portawe => \CTRL_UNIT|state.S5~q\,
	portbre => VCC,
	clk0 => \Clock~inputclkctrl_outclk\,
	clk1 => \Clock~inputclkctrl_outclk\,
	ena0 => \CTRL_UNIT|state.S5~q\,
	ena1 => \CTRL_UNIT|RE_C~0_combout\,
	portadatain => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTADATAIN_bus\,
	portaaddr => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTAADDR_bus\,
	portbaddr => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTBADDR_bus\,
	devclrn => ww_devclrn,
	devpor => ww_devpor,
	portbdataout => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a0_PORTBDATAOUT_bus\);

-- Location: LCCOMB_X16_Y6_N24
\DATAPATH_UNIT|ABSSUB|Add1~11\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Add1~11_combout\ = \DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\ $ (\DATAPATH_UNIT|ABSSUB|Add1~9\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110000111100",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\,
	cin => \DATAPATH_UNIT|ABSSUB|Add1~9\,
	combout => \DATAPATH_UNIT|ABSSUB|Add1~11_combout\);

-- Location: LCCOMB_X16_Y6_N26
\DATAPATH_UNIT|ABSSUB|Add1~13\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Add1~13_combout\ = (\DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\ & \DATAPATH_UNIT|ABSSUB|Add1~11_combout\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111000000000000",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datac => \DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\,
	datad => \DATAPATH_UNIT|ABSSUB|Add1~11_combout\,
	combout => \DATAPATH_UNIT|ABSSUB|Add1~13_combout\);

-- Location: LCCOMB_X16_Y6_N30
\DATAPATH_UNIT|ABSSUB|Add1~7\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ABSSUB|Add1~7_combout\ = (\DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\ & ((\DATAPATH_UNIT|ABSSUB|Add1~5_combout\))) # (!\DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\ & (\DATAPATH_UNIT|ABSSUB|Sub_Result[2]~4_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111101000001010",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|ABSSUB|Sub_Result[2]~4_combout\,
	datac => \DATAPATH_UNIT|ABSSUB|Sub_Result[4]~8_combout\,
	datad => \DATAPATH_UNIT|ABSSUB|Add1~5_combout\,
	combout => \DATAPATH_UNIT|ABSSUB|Add1~7_combout\);

-- Location: LCCOMB_X16_Y4_N18
\DATAPATH_UNIT|ADDER2|Sum[1]~2\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER2|Sum[1]~2_combout\ = (\DATAPATH_UNIT|ABSSUB|Add1~4_combout\ & ((\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a1\ & (\DATAPATH_UNIT|ADDER2|Sum[0]~1\ & VCC)) # (!\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a1\ & 
-- (!\DATAPATH_UNIT|ADDER2|Sum[0]~1\)))) # (!\DATAPATH_UNIT|ABSSUB|Add1~4_combout\ & ((\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a1\ & (!\DATAPATH_UNIT|ADDER2|Sum[0]~1\)) # (!\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a1\ & 
-- ((\DATAPATH_UNIT|ADDER2|Sum[0]~1\) # (GND)))))
-- \DATAPATH_UNIT|ADDER2|Sum[1]~3\ = CARRY((\DATAPATH_UNIT|ABSSUB|Add1~4_combout\ & (!\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a1\ & !\DATAPATH_UNIT|ADDER2|Sum[0]~1\)) # (!\DATAPATH_UNIT|ABSSUB|Add1~4_combout\ & 
-- ((!\DATAPATH_UNIT|ADDER2|Sum[0]~1\) # (!\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a1\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|ABSSUB|Add1~4_combout\,
	datab => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a1\,
	datad => VCC,
	cin => \DATAPATH_UNIT|ADDER2|Sum[0]~1\,
	combout => \DATAPATH_UNIT|ADDER2|Sum[1]~2_combout\,
	cout => \DATAPATH_UNIT|ADDER2|Sum[1]~3\);

-- Location: LCCOMB_X16_Y4_N20
\DATAPATH_UNIT|ADDER2|Sum[2]~4\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER2|Sum[2]~4_combout\ = ((\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a2\ $ (\DATAPATH_UNIT|ABSSUB|Add1~7_combout\ $ (!\DATAPATH_UNIT|ADDER2|Sum[1]~3\)))) # (GND)
-- \DATAPATH_UNIT|ADDER2|Sum[2]~5\ = CARRY((\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a2\ & ((\DATAPATH_UNIT|ABSSUB|Add1~7_combout\) # (!\DATAPATH_UNIT|ADDER2|Sum[1]~3\))) # (!\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a2\ & 
-- (\DATAPATH_UNIT|ABSSUB|Add1~7_combout\ & !\DATAPATH_UNIT|ADDER2|Sum[1]~3\)))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0110100110001110",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a2\,
	datab => \DATAPATH_UNIT|ABSSUB|Add1~7_combout\,
	datad => VCC,
	cin => \DATAPATH_UNIT|ADDER2|Sum[1]~3\,
	combout => \DATAPATH_UNIT|ADDER2|Sum[2]~4_combout\,
	cout => \DATAPATH_UNIT|ADDER2|Sum[2]~5\);

-- Location: LCCOMB_X16_Y4_N22
\DATAPATH_UNIT|ADDER2|Sum[3]~6\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER2|Sum[3]~6_combout\ = (\DATAPATH_UNIT|ABSSUB|Add1~10_combout\ & ((\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a3\ & (\DATAPATH_UNIT|ADDER2|Sum[2]~5\ & VCC)) # (!\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a3\ & 
-- (!\DATAPATH_UNIT|ADDER2|Sum[2]~5\)))) # (!\DATAPATH_UNIT|ABSSUB|Add1~10_combout\ & ((\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a3\ & (!\DATAPATH_UNIT|ADDER2|Sum[2]~5\)) # (!\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a3\ & 
-- ((\DATAPATH_UNIT|ADDER2|Sum[2]~5\) # (GND)))))
-- \DATAPATH_UNIT|ADDER2|Sum[3]~7\ = CARRY((\DATAPATH_UNIT|ABSSUB|Add1~10_combout\ & (!\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a3\ & !\DATAPATH_UNIT|ADDER2|Sum[2]~5\)) # (!\DATAPATH_UNIT|ABSSUB|Add1~10_combout\ & 
-- ((!\DATAPATH_UNIT|ADDER2|Sum[2]~5\) # (!\DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a3\))))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1001011000010111",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	dataa => \DATAPATH_UNIT|ABSSUB|Add1~10_combout\,
	datab => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a3\,
	datad => VCC,
	cin => \DATAPATH_UNIT|ADDER2|Sum[2]~5\,
	combout => \DATAPATH_UNIT|ADDER2|Sum[3]~6_combout\,
	cout => \DATAPATH_UNIT|ADDER2|Sum[3]~7\);

-- Location: LCCOMB_X16_Y4_N24
\DATAPATH_UNIT|ADDER2|Sum[4]~8\ : cycloneive_lcell_comb
-- Equation(s):
-- \DATAPATH_UNIT|ADDER2|Sum[4]~8_combout\ = \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a4\ $ (\DATAPATH_UNIT|ADDER2|Sum[3]~7\ $ (!\DATAPATH_UNIT|ABSSUB|Add1~13_combout\))

-- pragma translate_off
GENERIC MAP (
	lut_mask => "0011110011000011",
	sum_lutc_input => "cin")
-- pragma translate_on
PORT MAP (
	datab => \DATAPATH_UNIT|DPMEMC|M_rtl_0|auto_generated|ram_block1a4\,
	datad => \DATAPATH_UNIT|ABSSUB|Add1~13_combout\,
	cin => \DATAPATH_UNIT|ADDER2|Sum[3]~7\,
	combout => \DATAPATH_UNIT|ADDER2|Sum[4]~8_combout\);

-- Location: LCCOMB_X17_Y6_N22
\CTRL_UNIT|Done_o\ : cycloneive_lcell_comb
-- Equation(s):
-- \CTRL_UNIT|Done_o~combout\ = (\CTRL_UNIT|state.S10~q\) # (\CTRL_UNIT|state.S11~q\)

-- pragma translate_off
GENERIC MAP (
	lut_mask => "1111111111001100",
	sum_lutc_input => "datac")
-- pragma translate_on
PORT MAP (
	datab => \CTRL_UNIT|state.S10~q\,
	datad => \CTRL_UNIT|state.S11~q\,
	combout => \CTRL_UNIT|Done_o~combout\);

ww_SAD_out(0) <= \SAD_out[0]~output_o\;

ww_SAD_out(1) <= \SAD_out[1]~output_o\;

ww_SAD_out(2) <= \SAD_out[2]~output_o\;

ww_SAD_out(3) <= \SAD_out[3]~output_o\;

ww_SAD_out(4) <= \SAD_out[4]~output_o\;

ww_Done_o <= \Done_o~output_o\;
END structure;


