Revision 3
; Created by bitgen P.20131013 at Thu Nov  2 19:12:50 2017
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
Bit   335842 0x0000011f   2946 Block=SLICE_X1Y145 Latch=CQ Net=clkout_OBUF
Bit  1330327 0x0000059f   1975 Block=SLICE_X15Y130 Latch=BMUX Net=count<1>
Bit  1330333 0x0000059f   1981 Block=SLICE_X15Y130 Latch=BQ Net=count<0>
Bit  1330338 0x0000059f   1986 Block=SLICE_X15Y130 Latch=CQ Net=count<3>
Bit  1330346 0x0000059f   1994 Block=SLICE_X15Y130 Latch=CMUX Net=count<2>
Bit  1330356 0x0000059f   2004 Block=SLICE_X15Y130 Latch=DMUX Net=count<4>
Bit  1330363 0x0000059f   2011 Block=SLICE_X15Y130 Latch=DQ Net=count<5>
Bit  2241734 0x0000099f   1958 Block=SLICE_X28Y130 Latch=AMUX Net=Result<0>
Bit  2241750 0x0000099f   1974 Block=SLICE_X28Y130 Latch=BMUX Net=Result<1>
Bit  2241769 0x0000099f   1993 Block=SLICE_X28Y130 Latch=CMUX Net=Result<2>
Bit  2241779 0x0000099f   2003 Block=SLICE_X28Y130 Latch=DMUX Net=Result<3>
Bit  2241798 0x0000099f   2022 Block=SLICE_X28Y131 Latch=AMUX Net=Result<4>
Bit  2241814 0x0000099f   2038 Block=SLICE_X28Y131 Latch=BMUX Net=Result<5>
Bit  2241833 0x0000099f   2057 Block=SLICE_X28Y131 Latch=CMUX Net=Result<6>
Bit  2241850 0x0000099f   2074 Block=SLICE_X28Y131 Latch=DQ Net=count<7>
Bit  2241862 0x0000099f   2086 Block=SLICE_X28Y132 Latch=AMUX Net=Result<8>
Bit  2241878 0x0000099f   2102 Block=SLICE_X28Y132 Latch=BMUX Net=Result<9>
Bit  2241879 0x0000099f   2103 Block=SLICE_X29Y132 Latch=BMUX Net=GND_1_o_GND_1_o_equal_3_o_0
Bit  2241897 0x0000099f   2121 Block=SLICE_X28Y132 Latch=CMUX Net=Result<10>
Bit  2241907 0x0000099f   2131 Block=SLICE_X28Y132 Latch=DMUX Net=Result<11>
Bit  2241923 0x0000099f   2147 Block=SLICE_X28Y133 Latch=AQ Net=count<8>
Bit  2241926 0x0000099f   2150 Block=SLICE_X28Y133 Latch=AMUX Net=count<6>
Bit  2241948 0x0000099f   2172 Block=SLICE_X28Y133 Latch=BQ Net=count<9>
Bit  2241953 0x0000099f   2177 Block=SLICE_X28Y133 Latch=CQ Net=count<11>
Bit  2241961 0x0000099f   2185 Block=SLICE_X28Y133 Latch=CMUX Net=count<10>
