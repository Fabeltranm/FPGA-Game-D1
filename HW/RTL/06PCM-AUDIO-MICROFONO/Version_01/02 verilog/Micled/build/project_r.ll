Revision 3
; Created by bitgen P.20131013 at Wed Nov  1 16:00:02 2017
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
Bit 18548964 0x00401b1f    516 Block=SLICE_X87Y58 Latch=AQ Net=count1<127>
Bit 18548989 0x00401b1f    541 Block=SLICE_X87Y58 Latch=BQ Net=count1<126>
Bit 18548994 0x00401b1f    546 Block=SLICE_X87Y58 Latch=CQ Net=count1<125>
Bit 18549019 0x00401b1f    571 Block=SLICE_X87Y58 Latch=DQ Net=count1<124>
Bit 18549028 0x00401b1f    580 Block=SLICE_X87Y59 Latch=AQ Net=count1<123>
Bit 18549053 0x00401b1f    605 Block=SLICE_X87Y59 Latch=BQ Net=count1<122>
Bit 18549058 0x00401b1f    610 Block=SLICE_X87Y59 Latch=CQ Net=count1<121>
Bit 18549083 0x00401b1f    635 Block=SLICE_X87Y59 Latch=DQ Net=count1<120>
Bit 18549430 0x00401b1f    982 Block=SLICE_X86Y65 Latch=BMUX Net=Mcompar_n0000_cy<25>
Bit 18665380 0x00401b9f    580 Block=SLICE_X89Y59 Latch=AQ Net=ledlr_OBUF
Bit 18665765 0x00401b9f    965 Block=SLICE_X89Y65 Latch=AMUX Net=_n0058_inv
Bit 18665828 0x00401b9f   1028 Block=SLICE_X89Y66 Latch=AQ Net=sregt_1
Bit 18665830 0x00401b9f   1030 Block=SLICE_X88Y66 Latch=AMUX Net=Mcompar_n0002_cy<24>
Bit 18665853 0x00401b9f   1053 Block=SLICE_X89Y66 Latch=BQ Net=sregt_2
Bit 18665858 0x00401b9f   1058 Block=SLICE_X89Y66 Latch=CQ Net=sregt_3
Bit 18665876 0x00401b9f   1076 Block=SLICE_X89Y66 Latch=DMUX Net=ledc_rstpot
Bit 18665882 0x00401b9f   1082 Block=SLICE_X88Y66 Latch=DQ Net=ledc_OBUF
Bit 18665883 0x00401b9f   1083 Block=SLICE_X89Y66 Latch=DQ Net=sregt_4
Bit 18665891 0x00401b9f   1091 Block=SLICE_X88Y67 Latch=AQ Net=df/count<3>
Bit 18665893 0x00401b9f   1093 Block=SLICE_X89Y67 Latch=AMUX Net=Result<0>1
Bit 18665911 0x00401b9f   1111 Block=SLICE_X89Y67 Latch=BMUX Net=Result<1>1
Bit 18665916 0x00401b9f   1116 Block=SLICE_X88Y67 Latch=BQ Net=df/count<6>
Bit 18665921 0x00401b9f   1121 Block=SLICE_X88Y67 Latch=CQ Net=df/count<7>
Bit 18665922 0x00401b9f   1122 Block=SLICE_X89Y67 Latch=CQ Net=df/count<2>
Bit 18665940 0x00401b9f   1140 Block=SLICE_X89Y67 Latch=DMUX Net=Result<3>1
Bit 18665946 0x00401b9f   1146 Block=SLICE_X88Y67 Latch=DQ Net=df/count<9>
Bit 18665955 0x00401b9f   1155 Block=SLICE_X88Y68 Latch=AQ Net=df/count<0>
Bit 18665956 0x00401b9f   1156 Block=SLICE_X89Y68 Latch=AQ Net=df/count<4>
Bit 18665981 0x00401b9f   1181 Block=SLICE_X89Y68 Latch=BQ Net=df/count<5>
Bit 18665985 0x00401b9f   1185 Block=SLICE_X88Y68 Latch=CQ Net=df/count<1>
Bit 18665994 0x00401b9f   1194 Block=SLICE_X89Y68 Latch=CMUX Net=Result<6>1
Bit 18666004 0x00401b9f   1204 Block=SLICE_X89Y68 Latch=DMUX Net=Result<7>1
Bit 18666019 0x00401b9f   1219 Block=SLICE_X88Y69 Latch=AQ Net=df/count<10>
Bit 18666020 0x00401b9f   1220 Block=SLICE_X89Y69 Latch=AQ Net=df/count<8>
Bit 18666039 0x00401b9f   1239 Block=SLICE_X89Y69 Latch=BMUX Net=Result<9>1
Bit 18666044 0x00401b9f   1244 Block=SLICE_X88Y69 Latch=BQ Net=df/count<15>
Bit 18666049 0x00401b9f   1249 Block=SLICE_X88Y69 Latch=CQ Net=df/count<18>
Bit 18666058 0x00401b9f   1258 Block=SLICE_X89Y69 Latch=CMUX Net=Result<10>1
Bit 18666074 0x00401b9f   1274 Block=SLICE_X88Y69 Latch=DQ Net=df/count<19>
Bit 18666075 0x00401b9f   1275 Block=SLICE_X89Y69 Latch=DQ Net=df/count<11>
Bit 18666084 0x00401b9f   1284 Block=SLICE_X89Y70 Latch=AQ Net=df/count<12>
Bit 18666109 0x00401b9f   1309 Block=SLICE_X89Y70 Latch=BQ Net=df/count<13>
Bit 18666114 0x00401b9f   1314 Block=SLICE_X89Y70 Latch=CQ Net=df/count<14>
Bit 18666132 0x00401b9f   1332 Block=SLICE_X89Y70 Latch=DMUX Net=Result<15>1
Bit 18666147 0x00401b9f   1347 Block=SLICE_X88Y71 Latch=AQ Net=df/clkout
Bit 18666148 0x00401b9f   1348 Block=SLICE_X89Y71 Latch=AQ Net=df/count<16>
Bit 18666173 0x00401b9f   1373 Block=SLICE_X89Y71 Latch=BQ Net=df/count<17>
Bit 18666186 0x00401b9f   1386 Block=SLICE_X89Y71 Latch=CMUX Net=Result<18>1
Bit 18666196 0x00401b9f   1396 Block=SLICE_X89Y71 Latch=DMUX Net=Result<19>1
Bit 18666211 0x00401b9f   1411 Block=SLICE_X88Y72 Latch=AQ Net=df/count<20>
Bit 18666213 0x00401b9f   1413 Block=SLICE_X89Y72 Latch=AMUX Net=Result<20>1
Bit 18666231 0x00401b9f   1431 Block=SLICE_X89Y72 Latch=BMUX Net=Result<21>1
Bit 18666236 0x00401b9f   1436 Block=SLICE_X88Y72 Latch=BQ Net=df/count<21>
