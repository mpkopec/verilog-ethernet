# XDC constraints for the Digilent Nexys Video board
# part: xc7a200tsbg484-1

# General configuration
set_property CFGBVS VCCO [current_design]
set_property CONFIG_VOLTAGE 3.3 [current_design]
set_property BITSTREAM.GENERAL.COMPRESS true [current_design]
set_property BITSTREAM.CONFIG.OVERTEMPPOWERDOWN ENABLE [current_design]

# 50 MHz clock
set_property -dict {LOC P17 IOSTANDARD LVCMOS33} [get_ports clk]
create_clock -period 20.000 -name clk [get_ports clk]

# LEDs
set_property -dict {LOC M16 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports {led[0]}]
set_property -dict {LOC M17 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports {led[1]}]
set_property -dict {LOC L18 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports {led[2]}]
set_property -dict {LOC M18 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports {led[3]}]

# Reset button
set_property -dict {LOC U2 IOSTANDARD LVCMOS33} [get_ports reset_n]

# Push buttons
#set_property -dict {LOC F15 IOSTANDARD LVCMOS12} [get_ports btnu]
#set_property -dict {LOC C22 IOSTANDARD LVCMOS12} [get_ports btnl]
#set_property -dict {LOC D22 IOSTANDARD LVCMOS12} [get_ports btnd]
#set_property -dict {LOC D14 IOSTANDARD LVCMOS12} [get_ports btnr]
#set_property -dict {LOC B22 IOSTANDARD LVCMOS12} [get_ports btnc]

# Toggle switches
#set_property -dict {LOC E22 IOSTANDARD LVCMOS12} [get_ports {sw[0]}]
#set_property -dict {LOC F21 IOSTANDARD LVCMOS12} [get_ports {sw[1]}]
#set_property -dict {LOC G21 IOSTANDARD LVCMOS12} [get_ports {sw[2]}]
#set_property -dict {LOC G22 IOSTANDARD LVCMOS12} [get_ports {sw[3]}]
#set_property -dict {LOC H17 IOSTANDARD LVCMOS12} [get_ports {sw[4]}]
#set_property -dict {LOC J16 IOSTANDARD LVCMOS12} [get_ports {sw[5]}]
#set_property -dict {LOC K13 IOSTANDARD LVCMOS12} [get_ports {sw[6]}]
#set_property -dict {LOC M17 IOSTANDARD LVCMOS12} [get_ports {sw[7]}]

# UART
set_property -dict {LOC B2 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports uart_txd]
set_property -dict {LOC B3 IOSTANDARD LVCMOS33} [get_ports uart_rxd]

# Gigabit Ethernet RGMII PHY
set_property -dict {LOC T14 IOSTANDARD LVCMOS33} [get_ports phy_rx_clk]
set_property -dict {LOC U16 IOSTANDARD LVCMOS33} [get_ports {phy_rxd[0]}]
set_property -dict {LOC V17 IOSTANDARD LVCMOS33} [get_ports {phy_rxd[1]}]
set_property -dict {LOC V15 IOSTANDARD LVCMOS33} [get_ports {phy_rxd[2]}]
set_property -dict {LOC V16 IOSTANDARD LVCMOS33} [get_ports {phy_rxd[3]}]
set_property -dict {LOC R16 IOSTANDARD LVCMOS33} [get_ports phy_rx_ctl]
set_property -dict {LOC N16 IOSTANDARD LVCMOS33 SLEW FAST DRIVE 16} [get_ports phy_tx_clk]
set_property -dict {LOC R18 IOSTANDARD LVCMOS33 SLEW FAST DRIVE 16} [get_ports {phy_txd[0]}]
set_property -dict {LOC T18 IOSTANDARD LVCMOS33 SLEW FAST DRIVE 16} [get_ports {phy_txd[1]}]
set_property -dict {LOC U17 IOSTANDARD LVCMOS33 SLEW FAST DRIVE 16} [get_ports {phy_txd[2]}]
set_property -dict {LOC U18 IOSTANDARD LVCMOS33 SLEW FAST DRIVE 16} [get_ports {phy_txd[3]}]
set_property -dict {LOC T16 IOSTANDARD LVCMOS33 SLEW FAST DRIVE 16} [get_ports phy_tx_ctl]
set_property -dict {LOC M13 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports phy_reset_n]
#set_property -dict {LOC Y14 IOSTANDARD LVCMOS33} [get_ports phy_int_n]
#set_property -dict {LOC W14 IOSTANDARD LVCMOS33} [get_ports phy_pme_n]
#set_property -dict {LOC Y16  IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports phy_mdio]
#set_property -dict {LOC AA16 IOSTANDARD LVCMOS33 SLEW SLOW DRIVE 12} [get_ports phy_mdc]

create_clock -period 8.000 -name phy_rx_clk [get_ports phy_rx_clk]

