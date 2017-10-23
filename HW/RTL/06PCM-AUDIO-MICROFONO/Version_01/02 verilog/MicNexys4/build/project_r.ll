Revision 3
; Created by bitgen P.20131013 at Fri Oct 20 18:36:56 2017
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
Bit 18665635 0x00401b9f    835 Block=SLICE_X88Y63 Latch=AQ Net=count1<0>
Bit 18665636 0x00401b9f    836 Block=SLICE_X89Y63 Latch=AQ Net=ledlr_OBUF
Bit 18665654 0x00401b9f    854 Block=SLICE_X88Y63 Latch=BMUX Net=count1<1>
Bit 18665655 0x00401b9f    855 Block=SLICE_X89Y63 Latch=BMUX Net=ledlr_rstpot
Bit 18665660 0x00401b9f    860 Block=SLICE_X88Y63 Latch=BQ Net=count1<2>
Bit 18665665 0x00401b9f    865 Block=SLICE_X88Y63 Latch=CQ Net=count1<4>
Bit 18665673 0x00401b9f    873 Block=SLICE_X88Y63 Latch=CMUX Net=count1<3>
Bit 18665684 0x00401b9f    884 Block=SLICE_X89Y63 Latch=DMUX Net=_n0041_inv
Bit 18665690 0x00401b9f    890 Block=SLICE_X88Y63 Latch=DQ Net=count1<5>
Bit 18665956 0x00401b9f   1156 Block=SLICE_X89Y68 Latch=AQ Net=sregt_1
Bit 18665981 0x00401b9f   1181 Block=SLICE_X89Y68 Latch=BQ Net=sregt_2
Bit 18665986 0x00401b9f   1186 Block=SLICE_X89Y68 Latch=CQ Net=sregt_3
Bit 18666011 0x00401b9f   1211 Block=SLICE_X89Y68 Latch=DQ Net=sregt_4
Bit 18666563 0x00401b9f   1763 Block=SLICE_X88Y77 Latch=AQ Net=df/count<0>
Bit 18666582 0x00401b9f   1782 Block=SLICE_X88Y77 Latch=BMUX Net=Result<1>
Bit 18666593 0x00401b9f   1793 Block=SLICE_X88Y77 Latch=CQ Net=df/count<2>
Bit 18666618 0x00401b9f   1818 Block=SLICE_X88Y77 Latch=DQ Net=df/count<3>
Bit 18666630 0x00401b9f   1830 Block=SLICE_X88Y78 Latch=AMUX Net=Result<4>
Bit 18666646 0x00401b9f   1846 Block=SLICE_X88Y78 Latch=BMUX Net=Result<5>
Bit 18666657 0x00401b9f   1857 Block=SLICE_X88Y78 Latch=CQ Net=df/count<6>
Bit 18666682 0x00401b9f   1882 Block=SLICE_X88Y78 Latch=DQ Net=df/count<7>
Bit 18666691 0x00401b9f   1891 Block=SLICE_X88Y79 Latch=AQ Net=df/count<8>
Bit 18666716 0x00401b9f   1916 Block=SLICE_X88Y79 Latch=BQ Net=df/count<9>
Bit 18666721 0x00401b9f   1921 Block=SLICE_X88Y79 Latch=CQ Net=df/count<10>
Bit 18666740 0x00401b9f   1940 Block=SLICE_X89Y79 Latch=DMUX Net=df/clkout_rstpot
Bit 18666746 0x00401b9f   1946 Block=SLICE_X88Y79 Latch=DQ Net=df/count<11>
Bit 18666747 0x00401b9f   1947 Block=SLICE_X89Y79 Latch=DQ Net=df/clkout
Bit 18666755 0x00401b9f   1955 Block=SLICE_X88Y80 Latch=AQ Net=df/count<12>
Bit 18666780 0x00401b9f   1980 Block=SLICE_X88Y80 Latch=BQ Net=df/count<13>
Bit 18666785 0x00401b9f   1985 Block=SLICE_X88Y80 Latch=CQ Net=df/count<14>
Bit 18666786 0x00401b9f   1986 Block=SLICE_X89Y80 Latch=CQ Net=df/count<1>
Bit 18666794 0x00401b9f   1994 Block=SLICE_X89Y80 Latch=CMUX Net=df/count[31]_GND_2_o_equal_3_o<31>5
Bit 18666804 0x00401b9f   2004 Block=SLICE_X89Y80 Latch=DMUX Net=df/count<5>
Bit 18666810 0x00401b9f   2010 Block=SLICE_X88Y80 Latch=DQ Net=df/count<15>
Bit 18666811 0x00401b9f   2011 Block=SLICE_X89Y80 Latch=DQ Net=df/count<4>
Bit 18666819 0x00401b9f   2019 Block=SLICE_X88Y81 Latch=AQ Net=df/count<16>
Bit 18666844 0x00401b9f   2044 Block=SLICE_X88Y81 Latch=BQ Net=df/count<17>
Bit 18666849 0x00401b9f   2049 Block=SLICE_X88Y81 Latch=CQ Net=df/count<18>
Bit 18666874 0x00401b9f   2074 Block=SLICE_X88Y81 Latch=DQ Net=df/count<19>
Bit 18666883 0x00401b9f   2083 Block=SLICE_X88Y82 Latch=AQ Net=df/count<20>
Bit 18666908 0x00401b9f   2108 Block=SLICE_X88Y82 Latch=BQ Net=df/count<21>
Bit 18666913 0x00401b9f   2113 Block=SLICE_X88Y82 Latch=CQ Net=df/count<22>
Bit 18666938 0x00401b9f   2138 Block=SLICE_X88Y82 Latch=DQ Net=df/count<23>
Bit 18666947 0x00401b9f   2147 Block=SLICE_X88Y83 Latch=AQ Net=df/count<24>
Bit 18666972 0x00401b9f   2172 Block=SLICE_X88Y83 Latch=BQ Net=df/count<25>
Bit 18666977 0x00401b9f   2177 Block=SLICE_X88Y83 Latch=CQ Net=df/count<26>
Bit 18667002 0x00401b9f   2202 Block=SLICE_X88Y83 Latch=DQ Net=df/count<27>
Bit 18667011 0x00401b9f   2211 Block=SLICE_X88Y84 Latch=AQ Net=df/count<28>
Bit 18667036 0x00401b9f   2236 Block=SLICE_X88Y84 Latch=BQ Net=df/count<29>
Bit 18667041 0x00401b9f   2241 Block=SLICE_X88Y84 Latch=CQ Net=df/count<30>
Bit 18667066 0x00401b9f   2266 Block=SLICE_X88Y84 Latch=DQ Net=df/count<31>
