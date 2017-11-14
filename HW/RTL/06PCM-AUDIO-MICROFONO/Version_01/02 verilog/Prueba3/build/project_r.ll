Revision 3
; Created by bitgen P.20131013 at Tue Nov 14 11:00:36 2017
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
Bit   889655 0x0000039f    855 Block=SLICE_X9Y113 Latch=BMUX Net=df/clkout_rstpot
Bit   889661 0x0000039f    861 Block=SLICE_X9Y113 Latch=BQ Net=df/clkout
Bit  1005859 0x0000041f    707 Block=SLICE_X10Y111 Latch=AQ Net=df/count<0>
Bit  1005884 0x0000041f    732 Block=SLICE_X10Y111 Latch=BQ Net=df/count<1>
Bit  1005889 0x0000041f    737 Block=SLICE_X10Y111 Latch=CQ Net=df/count<2>
Bit  1005914 0x0000041f    762 Block=SLICE_X10Y111 Latch=DQ Net=df/count<3>
Bit  1005926 0x0000041f    774 Block=SLICE_X10Y112 Latch=AMUX Net=Result<4>
Bit  1005948 0x0000041f    796 Block=SLICE_X10Y112 Latch=BQ Net=df/count<5>
Bit  1005953 0x0000041f    801 Block=SLICE_X10Y112 Latch=CQ Net=df/count<6>
Bit  1005978 0x0000041f    826 Block=SLICE_X10Y112 Latch=DQ Net=df/count<7>
Bit  1005987 0x0000041f    835 Block=SLICE_X10Y113 Latch=AQ Net=df/count<8>
Bit  1006007 0x0000041f    855 Block=SLICE_X11Y113 Latch=BMUX Net=df/count[31]_GND_2_o_equal_2_o<31>5
Bit  1006012 0x0000041f    860 Block=SLICE_X10Y113 Latch=BQ Net=df/count<9>
Bit  1006013 0x0000041f    861 Block=SLICE_X11Y113 Latch=BQ Net=df/count<4>
Bit  1006017 0x0000041f    865 Block=SLICE_X10Y113 Latch=CQ Net=df/count<10>
Bit  1006042 0x0000041f    890 Block=SLICE_X10Y113 Latch=DQ Net=df/count<11>
Bit  1006051 0x0000041f    899 Block=SLICE_X10Y114 Latch=AQ Net=df/count<12>
Bit  1006076 0x0000041f    924 Block=SLICE_X10Y114 Latch=BQ Net=df/count<13>
Bit  1006081 0x0000041f    929 Block=SLICE_X10Y114 Latch=CQ Net=df/count<14>
Bit  1006106 0x0000041f    954 Block=SLICE_X10Y114 Latch=DQ Net=df/count<15>
Bit  1006115 0x0000041f    963 Block=SLICE_X10Y115 Latch=AQ Net=df/count<16>
Bit  1006140 0x0000041f    988 Block=SLICE_X10Y115 Latch=BQ Net=df/count<17>
Bit  1006145 0x0000041f    993 Block=SLICE_X10Y115 Latch=CQ Net=df/count<18>
Bit  1006170 0x0000041f   1018 Block=SLICE_X10Y115 Latch=DQ Net=df/count<19>
Bit  1006179 0x0000041f   1027 Block=SLICE_X10Y116 Latch=AQ Net=df/count<20>
Bit  1006204 0x0000041f   1052 Block=SLICE_X10Y116 Latch=BQ Net=df/count<21>
Bit  1006209 0x0000041f   1057 Block=SLICE_X10Y116 Latch=CQ Net=df/count<22>
Bit  1006234 0x0000041f   1082 Block=SLICE_X10Y116 Latch=DQ Net=df/count<23>
Bit  1006243 0x0000041f   1091 Block=SLICE_X10Y117 Latch=AQ Net=df/count<24>
Bit  1006268 0x0000041f   1116 Block=SLICE_X10Y117 Latch=BQ Net=df/count<25>
Bit  1006273 0x0000041f   1121 Block=SLICE_X10Y117 Latch=CQ Net=df/count<26>
Bit  1006298 0x0000041f   1146 Block=SLICE_X10Y117 Latch=DQ Net=df/count<27>
Bit  1006307 0x0000041f   1155 Block=SLICE_X10Y118 Latch=AQ Net=df/count<28>
Bit  1006332 0x0000041f   1180 Block=SLICE_X10Y118 Latch=BQ Net=df/count<29>
Bit  1006337 0x0000041f   1185 Block=SLICE_X10Y118 Latch=CQ Net=df/count<30>
Bit  1006362 0x0000041f   1210 Block=SLICE_X10Y118 Latch=DQ Net=df/count<31>
