## This file is a general .xdc for the Artix-7 XC7A35T
## To use it in a project:
## - uncomment the lines corresponding to used pins
## - rename the used ports (in each line, after get_ports) according to the top-level signal names in the project

## Clock signal

set_property -dict { PACKAGE_PIN E3    IOSTANDARD LVCMOS33 } [get_ports { clock }]; #IO_L12P_T1_MRCC_35 Sch=gclk[100]
create_clock -add -name sys_clk_pin -period 10.00 -waveform {0 5} [get_ports {  clock }];
## Switches (Update package pin identifiers based on XC7A35T board pinout)
#set_property -dict { PACKAGE_PIN K17   IOSTANDARD LVCMOS33 } [get_ports { sw[0] }]; # Adjust to correct pin
#set_property -dict { PACKAGE_PIN K18   IOSTANDARD LVCMOS33 } [get_ports { sw[1] }]; # Adjust to correct pin
#set_property -dict { PACKAGE_PIN L17   IOSTANDARD LVCMOS33 } [get_ports { sw[2] }]; # Adjust to correct pin
#set_property -dict { PACKAGE_PIN M18   IOSTANDARD LVCMOS33 } [get_ports { sw[3] }]; # Adjust to correct pin
set_property -dict { PACKAGE_PIN F5 IOSTANDARD LVCMOS33 } [get_ports { reset }];
## RGB LEDs (Update based on XC7A35T pinout for RGB LEDs)
#set_property -dict { PACKAGE_PIN T1    IOSTANDARD LVCMOS33 } [get_ports { led0_b }]; # Adjust to correct pin
#set_property -dict { PACKAGE_PIN R1    IOSTANDARD LVCMOS33 } [get_ports { led0_g }]; # Adjust to correct pin
#set_property -dict { PACKAGE_PIN U2    IOSTANDARD LVCMOS33 } [get_ports { led0_r }]; # Adjust to correct pin
#set_property -dict { PACKAGE_PIN V2    IOSTANDARD LVCMOS33 } [get_ports { led1_b }]; # Adjust to correct pin
#set_property -dict { PACKAGE_PIN W2    IOSTANDARD LVCMOS33 } [get_ports { led1_g }]; # Adjust to correct pin
#set_property -dict { PACKAGE_PIN Y2    IOSTANDARD LVCMOS33 } [get_ports { led1_r }]; # Adjust to correct pin

## LEDs (Primary LED set to H5)
set_property -dict { PACKAGE_PIN H5    IOSTANDARD LVCMOS33 } [get_ports { io_led }]; # Primary LED pin
#set_property -dict { PACKAGE_PIN P17   IOSTANDARD LVCMOS33 } [get_ports { led[1] }]; # Adjust to correct pin
#set_property -dict { PACKAGE_PIN P18   IOSTANDARD LVCMOS33 } [get_ports { led[2] }]; # Adjust to correct pin
#set_property -dict { PACKAGE_PIN R18   IOSTANDARD LVCMOS33 } [get_ports { led[3] }]; # Adjust to correct pin
