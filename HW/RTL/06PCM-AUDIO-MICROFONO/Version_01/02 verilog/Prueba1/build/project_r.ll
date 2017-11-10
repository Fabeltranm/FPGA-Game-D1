Revision 3
; Created by bitgen P.20131013 at Fri Nov 10 03:40:03 2017
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
Bit  2822502 0x00000c1f    966 Block=SLICE_X38Y115 Latch=AMUX Net=Result<0>
Bit  2822518 0x00000c1f    982 Block=SLICE_X38Y115 Latch=BMUX Net=Result<1>
Bit  2822519 0x00000c1f    983 Block=SLICE_X39Y115 Latch=BMUX Net=df/count<1>
Bit  2822525 0x00000c1f    989 Block=SLICE_X39Y115 Latch=BQ Net=df/count<0>
Bit  2822530 0x00000c1f    994 Block=SLICE_X39Y115 Latch=CQ Net=df/count<2>
Bit  2822537 0x00000c1f   1001 Block=SLICE_X38Y115 Latch=CMUX Net=Result<2>
Bit  2822538 0x00000c1f   1002 Block=SLICE_X39Y115 Latch=CMUX Net=df/count<3>
Bit  2822547 0x00000c1f   1011 Block=SLICE_X38Y115 Latch=DMUX Net=Result<3>
Bit  2822548 0x00000c1f   1012 Block=SLICE_X39Y115 Latch=DMUX Net=df/clkout_rstpot
Bit  2822555 0x00000c1f   1019 Block=SLICE_X39Y115 Latch=DQ Net=df/clkout
Bit  2822563 0x00000c1f   1027 Block=SLICE_X38Y116 Latch=AQ Net=df/count<4>
Bit  2822588 0x00000c1f   1052 Block=SLICE_X38Y116 Latch=BQ Net=df/count<5>
Bit  2822593 0x00000c1f   1057 Block=SLICE_X38Y116 Latch=CQ Net=df/count<6>
Bit  2822618 0x00000c1f   1082 Block=SLICE_X38Y116 Latch=DQ Net=df/count<7>
Bit  2822627 0x00000c1f   1091 Block=SLICE_X38Y117 Latch=AQ Net=df/count<8>
Bit  2822652 0x00000c1f   1116 Block=SLICE_X38Y117 Latch=BQ Net=df/count<9>
Bit  2822657 0x00000c1f   1121 Block=SLICE_X38Y117 Latch=CQ Net=df/count<10>
Bit  2822682 0x00000c1f   1146 Block=SLICE_X38Y117 Latch=DQ Net=df/count<11>
Bit  2822691 0x00000c1f   1155 Block=SLICE_X38Y118 Latch=AQ Net=df/count<12>
Bit  2822716 0x00000c1f   1180 Block=SLICE_X38Y118 Latch=BQ Net=df/count<13>
Bit  2822721 0x00000c1f   1185 Block=SLICE_X38Y118 Latch=CQ Net=df/count<14>
Bit  2822746 0x00000c1f   1210 Block=SLICE_X38Y118 Latch=DQ Net=df/count<15>
Bit  2822755 0x00000c1f   1219 Block=SLICE_X38Y119 Latch=AQ Net=df/count<16>
Bit  2822780 0x00000c1f   1244 Block=SLICE_X38Y119 Latch=BQ Net=df/count<17>
Bit  2822785 0x00000c1f   1249 Block=SLICE_X38Y119 Latch=CQ Net=df/count<18>
Bit  2822810 0x00000c1f   1274 Block=SLICE_X38Y119 Latch=DQ Net=df/count<19>
Bit  2822819 0x00000c1f   1283 Block=SLICE_X38Y120 Latch=AQ Net=df/count<20>
Bit  2822844 0x00000c1f   1308 Block=SLICE_X38Y120 Latch=BQ Net=df/count<21>
Bit  2822849 0x00000c1f   1313 Block=SLICE_X38Y120 Latch=CQ Net=df/count<22>
Bit  2822874 0x00000c1f   1338 Block=SLICE_X38Y120 Latch=DQ Net=df/count<23>
Bit  2822883 0x00000c1f   1347 Block=SLICE_X38Y121 Latch=AQ Net=df/count<24>
Bit  2822908 0x00000c1f   1372 Block=SLICE_X38Y121 Latch=BQ Net=df/count<25>
Bit  2822913 0x00000c1f   1377 Block=SLICE_X38Y121 Latch=CQ Net=df/count<26>
Bit  2822938 0x00000c1f   1402 Block=SLICE_X38Y121 Latch=DQ Net=df/count<27>
Bit  2822947 0x00000c1f   1411 Block=SLICE_X38Y122 Latch=AQ Net=df/count<28>
Bit  2822972 0x00000c1f   1436 Block=SLICE_X38Y122 Latch=BQ Net=df/count<29>
Bit  2822977 0x00000c1f   1441 Block=SLICE_X38Y122 Latch=CQ Net=df/count<30>
Bit  2823002 0x00000c1f   1466 Block=SLICE_X38Y122 Latch=DQ Net=df/count<31>
