# Verilog Ethernet Enclustra Mars PM3/AX3 Example Design

## Introduction

This example design targets the Enclustra Mars PM3 FPGA board with Mars AX3
mini-module.

The design by default listens to UDP port 1234 at IP address 192.168.0.20 and
will echo back any packets received.  The design will also respond correctly
to ARP requests.

FPGA: XC7A100TCSG324-2
PHY: Microchip KSZ9031RNX

## How to build

Run make to build.  Ensure that the Xilinx Vivado toolchain components are
in PATH.

## How to test

Program the FPGA using Vivado tools, then run netcat -u 192.168.0.20 1234 to
open a UDP connection to port 1234.  Any text entered into netcat will be echoed
back after pressing enter.

