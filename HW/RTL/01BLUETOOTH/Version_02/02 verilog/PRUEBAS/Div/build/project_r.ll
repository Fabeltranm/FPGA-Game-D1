Revision 3
; Created by bitgen P.20131013 at Tue Nov  7 06:41:59 2017
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
Bit   335812 0x0000011f   2916 Block=SLICE_X1Y145 Latch=AQ Net=clk_div_OBUF
Bit  1329891 0x0000059f   1539 Block=SLICE_X14Y124 Latch=AQ Net=count<0>
Bit  1329916 0x0000059f   1564 Block=SLICE_X14Y124 Latch=BQ Net=count<1>
Bit  1329921 0x0000059f   1569 Block=SLICE_X14Y124 Latch=CQ Net=count<2>
Bit  1329946 0x0000059f   1594 Block=SLICE_X14Y124 Latch=DQ Net=count<3>
Bit  1329987 0x0000059f   1635 Block=SLICE_X14Y125 Latch=AQ Net=count<4>
Bit  1330012 0x0000059f   1660 Block=SLICE_X14Y125 Latch=BQ Net=count<5>
Bit  1330017 0x0000059f   1665 Block=SLICE_X14Y125 Latch=CQ Net=count<6>
Bit  1330042 0x0000059f   1690 Block=SLICE_X14Y125 Latch=DQ Net=count<7>
Bit  1330051 0x0000059f   1699 Block=SLICE_X14Y126 Latch=AQ Net=count<8>
Bit  1330076 0x0000059f   1724 Block=SLICE_X14Y126 Latch=BQ Net=count<9>
Bit  1330081 0x0000059f   1729 Block=SLICE_X14Y126 Latch=CQ Net=count<10>
