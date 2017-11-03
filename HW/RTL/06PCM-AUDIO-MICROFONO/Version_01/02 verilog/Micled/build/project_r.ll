Revision 3
; Created by bitgen P.20131013 at Thu Nov  2 19:32:31 2017
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
Bit 18664996 0x00401b9f    196 Block=SLICE_X89Y53 Latch=AQ Net=count1<127>
Bit 18665021 0x00401b9f    221 Block=SLICE_X89Y53 Latch=BQ Net=count1<126>
Bit 18665026 0x00401b9f    226 Block=SLICE_X89Y53 Latch=CQ Net=count1<125>
Bit 18665051 0x00401b9f    251 Block=SLICE_X89Y53 Latch=DQ Net=count1<124>
Bit 18665060 0x00401b9f    260 Block=SLICE_X89Y54 Latch=AQ Net=count1<123>
Bit 18665085 0x00401b9f    285 Block=SLICE_X89Y54 Latch=BQ Net=count1<122>
Bit 18665090 0x00401b9f    290 Block=SLICE_X89Y54 Latch=CQ Net=count1<121>
Bit 18665115 0x00401b9f    315 Block=SLICE_X89Y54 Latch=DQ Net=count1<120>
Bit 18665398 0x00401b9f    598 Block=SLICE_X88Y59 Latch=BMUX Net=Mcompar_n0000_cy<25>
Bit 18665499 0x00401b9f    699 Block=SLICE_X89Y60 Latch=DQ Net=ledlr_OBUF
Bit 18665507 0x00401b9f    707 Block=SLICE_X88Y61 Latch=AQ Net=ledc_OBUF
Bit 18665509 0x00401b9f    709 Block=SLICE_X89Y61 Latch=AMUX Net=Mcompar_n0002_cy<24>
Bit 18665546 0x00401b9f    746 Block=SLICE_X89Y61 Latch=CMUX Net=ledc_rstpot
Bit 18665556 0x00401b9f    756 Block=SLICE_X89Y61 Latch=DMUX Net=_n0058_inv
Bit 18665956 0x00401b9f   1156 Block=SLICE_X89Y68 Latch=AQ Net=sregt_1
Bit 18665981 0x00401b9f   1181 Block=SLICE_X89Y68 Latch=BQ Net=sregt_2
Bit 18665986 0x00401b9f   1186 Block=SLICE_X89Y68 Latch=CQ Net=sregt_3
Bit 18666011 0x00401b9f   1211 Block=SLICE_X89Y68 Latch=DQ Net=sregt_4
Bit 18666756 0x00401b9f   1956 Block=SLICE_X89Y80 Latch=AQ Net=df/count<7>
Bit 18666820 0x00401b9f   2020 Block=SLICE_X89Y81 Latch=AQ Net=df/count<0>
Bit 18666822 0x00401b9f   2022 Block=SLICE_X88Y81 Latch=AMUX Net=Result<0>1
Bit 18666838 0x00401b9f   2038 Block=SLICE_X88Y81 Latch=BMUX Net=Result<1>1
Bit 18666850 0x00401b9f   2050 Block=SLICE_X89Y81 Latch=CQ Net=df/count<1>
Bit 18666857 0x00401b9f   2057 Block=SLICE_X88Y81 Latch=CMUX Net=Result<2>1
Bit 18666858 0x00401b9f   2058 Block=SLICE_X89Y81 Latch=CMUX Net=df/count<2>
Bit 18666867 0x00401b9f   2067 Block=SLICE_X88Y81 Latch=DMUX Net=Result<3>1
Bit 18666868 0x00401b9f   2068 Block=SLICE_X89Y81 Latch=DMUX Net=df/count<4>
Bit 18666875 0x00401b9f   2075 Block=SLICE_X89Y81 Latch=DQ Net=df/count<3>
Bit 18666884 0x00401b9f   2084 Block=SLICE_X89Y82 Latch=AQ Net=df/count<5>
Bit 18666885 0x00401b9f   2085 Block=SLICE_X89Y82 Latch=AMUX Net=df/count<6>
Bit 18666886 0x00401b9f   2086 Block=SLICE_X88Y82 Latch=AMUX Net=Result<4>1
Bit 18666902 0x00401b9f   2102 Block=SLICE_X88Y82 Latch=BMUX Net=Result<5>1
Bit 18666921 0x00401b9f   2121 Block=SLICE_X88Y82 Latch=CMUX Net=Result<6>1
Bit 18666931 0x00401b9f   2131 Block=SLICE_X88Y82 Latch=DMUX Net=Result<7>1
Bit 18666939 0x00401b9f   2139 Block=SLICE_X89Y82 Latch=DQ Net=df/clkout
Bit 18666948 0x00401b9f   2148 Block=SLICE_X89Y83 Latch=AQ Net=df/count<8>
Bit 18666949 0x00401b9f   2149 Block=SLICE_X89Y83 Latch=AMUX Net=df/count<9>
Bit 18666950 0x00401b9f   2150 Block=SLICE_X88Y83 Latch=AMUX Net=Result<8>1
Bit 18666966 0x00401b9f   2166 Block=SLICE_X88Y83 Latch=BMUX Net=Result<9>1
Bit 18666967 0x00401b9f   2167 Block=SLICE_X89Y83 Latch=BMUX Net=df/count<11>
Bit 18666973 0x00401b9f   2173 Block=SLICE_X89Y83 Latch=BQ Net=df/count<10>
Bit 18666985 0x00401b9f   2185 Block=SLICE_X88Y83 Latch=CMUX Net=Result<10>1
Bit 18666995 0x00401b9f   2195 Block=SLICE_X88Y83 Latch=DMUX Net=Result<11>1
