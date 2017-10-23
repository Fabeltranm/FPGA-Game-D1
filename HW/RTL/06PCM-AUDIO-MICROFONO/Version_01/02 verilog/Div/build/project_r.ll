Revision 3
; Created by bitgen P.20131013 at Fri Oct 20 10:45:52 2017
; Bit lines have the following form:
; <offset> <frame address> <frame offset> <information>
; <information> may be zero or more <kw>=<value> pairs
; Block=<blockname     specifies the block associated with this
;                      memory cell.
;
; Latch=<name>         specifies the latch associated with this memory cell.
;
; Net=<netname>        specifies the user net associated with this
;                      memory cell.
;
; COMPARE=[YES | NO]   specifies whether or not it is appropriate
;                      to compare this bit position between a
;                      "program" and a "readback" bitstream.
;                      If not present the default is NO.
;
; Ram=<ram id>:<bit>   This is used in cases where a CLB function
; Rom=<ram id>:<bit>   generator is used as RAM (or ROM).  <Ram id>
;                      will be either 'F', 'G', or 'M', indicating
;                      that it is part of a single F or G function
;                      generator used as RAM, or as a single RAM
;                      (or ROM) built from both F and G.  <Bit> is
;                      a decimal number.
;
; Info lines have the following form:
; Info <name>=<value>  specifies a bit associated with the LCA
;                      configuration options, and the value of
;                      that bit.  The names of these bits may have
;                      special meaning to software reading the .ll file.
;
Info STARTSEL0=1
Bit  2356899 0x00000a1f    771 Block=SLICE_X30Y112 Latch=AQ Net=count<0>
Bit  2356924 0x00000a1f    796 Block=SLICE_X30Y112 Latch=BQ Net=count<1>
Bit  2356930 0x00000a1f    802 Block=SLICE_X31Y112 Latch=CQ Net=count<2>
Bit  2356937 0x00000a1f    809 Block=SLICE_X30Y112 Latch=CMUX Net=Result<2>
Bit  2356947 0x00000a1f    819 Block=SLICE_X30Y112 Latch=DMUX Net=Result<3>
Bit  2356955 0x00000a1f    827 Block=SLICE_X31Y112 Latch=DQ Net=count<3>
Bit  2473306 0x00000a9f    826 Block=SLICE_X32Y112 Latch=DQ Net=clkout_OBUF
