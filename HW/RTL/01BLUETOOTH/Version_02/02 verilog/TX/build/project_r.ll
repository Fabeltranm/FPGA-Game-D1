Revision 3
; Created by bitgen P.20131013 at Sat Nov 11 18:51:11 2017
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
Bit  2240996 0x0000099f   1220 Block=SLICE_X29Y119 Latch=AQ Net=div/clk_div
Bit 15441987 0x00400d1f   2723 Block=SLICE_X42Y92 Latch=AQ Net=div/count<0>
Bit 15442012 0x00400d1f   2748 Block=SLICE_X42Y92 Latch=BQ Net=div/count<1>
Bit 15442017 0x00400d1f   2753 Block=SLICE_X42Y92 Latch=CQ Net=div/count<2>
Bit 15442042 0x00400d1f   2778 Block=SLICE_X42Y92 Latch=DQ Net=div/count<3>
Bit 15442051 0x00400d1f   2787 Block=SLICE_X42Y93 Latch=AQ Net=div/count<4>
Bit 15442076 0x00400d1f   2812 Block=SLICE_X42Y93 Latch=BQ Net=div/count<5>
Bit 15442081 0x00400d1f   2817 Block=SLICE_X42Y93 Latch=CQ Net=div/count<6>
Bit 15442106 0x00400d1f   2842 Block=SLICE_X42Y93 Latch=DQ Net=div/count<7>
Bit 15442115 0x00400d1f   2851 Block=SLICE_X42Y94 Latch=AQ Net=div/count<8>
Bit 15442135 0x00400d1f   2871 Block=SLICE_X43Y94 Latch=BMUX Net=div/count[31]_GND_2_o_equal_2_o_016
Bit 15442140 0x00400d1f   2876 Block=SLICE_X42Y94 Latch=BQ Net=div/count<9>
Bit 15442145 0x00400d1f   2881 Block=SLICE_X42Y94 Latch=CQ Net=div/count<10>
Bit 15442170 0x00400d1f   2906 Block=SLICE_X42Y94 Latch=DQ Net=div/count<11>
Bit 15442179 0x00400d1f   2915 Block=SLICE_X42Y95 Latch=AQ Net=div/count<12>
Bit 15442204 0x00400d1f   2940 Block=SLICE_X42Y95 Latch=BQ Net=div/count<13>
Bit 15442209 0x00400d1f   2945 Block=SLICE_X42Y95 Latch=CQ Net=div/count<14>
Bit 15442234 0x00400d1f   2970 Block=SLICE_X42Y95 Latch=DQ Net=div/count<15>
Bit 15442243 0x00400d1f   2979 Block=SLICE_X42Y96 Latch=AQ Net=div/count<16>
Bit 15442268 0x00400d1f   3004 Block=SLICE_X42Y96 Latch=BQ Net=div/count<17>
Bit 15442273 0x00400d1f   3009 Block=SLICE_X42Y96 Latch=CQ Net=div/count<18>
Bit 15442298 0x00400d1f   3034 Block=SLICE_X42Y96 Latch=DQ Net=div/count<19>
Bit 15442307 0x00400d1f   3043 Block=SLICE_X42Y97 Latch=AQ Net=div/count<20>
Bit 15442332 0x00400d1f   3068 Block=SLICE_X42Y97 Latch=BQ Net=div/count<21>
Bit 15442337 0x00400d1f   3073 Block=SLICE_X42Y97 Latch=CQ Net=div/count<22>
Bit 15442362 0x00400d1f   3098 Block=SLICE_X42Y97 Latch=DQ Net=div/count<23>
Bit 15442371 0x00400d1f   3107 Block=SLICE_X42Y98 Latch=AQ Net=div/count<24>
Bit 15442396 0x00400d1f   3132 Block=SLICE_X42Y98 Latch=BQ Net=div/count<25>
Bit 15442401 0x00400d1f   3137 Block=SLICE_X42Y98 Latch=CQ Net=div/count<26>
Bit 15442426 0x00400d1f   3162 Block=SLICE_X42Y98 Latch=DQ Net=div/count<27>
Bit 15442435 0x00400d1f   3171 Block=SLICE_X42Y99 Latch=AQ Net=div/count<28>
Bit 15442460 0x00400d1f   3196 Block=SLICE_X42Y99 Latch=BQ Net=div/count<29>
Bit 15442465 0x00400d1f   3201 Block=SLICE_X42Y99 Latch=CQ Net=div/count<30>
Bit 15442490 0x00400d1f   3226 Block=SLICE_X42Y99 Latch=DQ Net=div/count<31>
Bit 17787460 0x0040179f   1764 Block=SLICE_X77Y77 Latch=AQ Net=bitpos<0>
Bit 17787479 0x0040179f   1783 Block=SLICE_X77Y77 Latch=BMUX Net=bitpos<1>
Bit 17787485 0x0040179f   1789 Block=SLICE_X77Y77 Latch=BQ Net=bitpos<2>
Bit 17994310 0x0040189f   1766 Block=SLICE_X78Y77 Latch=AMUX Net=busy_OBUF
Bit 17994337 0x0040189f   1793 Block=SLICE_X78Y77 Latch=CQ Net=state_FSM_FFd1
Bit 17994345 0x0040189f   1801 Block=SLICE_X78Y77 Latch=CMUX Net=tx_rstpot
Bit 17994362 0x0040189f   1818 Block=SLICE_X78Y77 Latch=DQ Net=state_FSM_FFd2
Bit 18665251 0x00401b9f    451 Block=SLICE_X88Y57 Latch=AQ Net=done_OBUF
Bit 18666185 0x00401b9f   1385 Block=SLICE_X88Y71 Latch=CMUX Net=bitpos[2]_data[7]_Mux_3_o
