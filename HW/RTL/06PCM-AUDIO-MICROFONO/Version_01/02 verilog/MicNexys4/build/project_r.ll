Revision 3
; Created by bitgen P.20131013 at Thu Oct 19 18:05:26 2017
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
Bit 18665252 0x00401b9f    452 Block=SLICE_X89Y57 Latch=AQ Net=ledlr_OBUF
Bit 18665507 0x00401b9f    707 Block=SLICE_X88Y61 Latch=AQ Net=count1<0>
Bit 18665526 0x00401b9f    726 Block=SLICE_X88Y61 Latch=BMUX Net=count1<1>
Bit 18665532 0x00401b9f    732 Block=SLICE_X88Y61 Latch=BQ Net=count1<2>
Bit 18665537 0x00401b9f    737 Block=SLICE_X88Y61 Latch=CQ Net=count1<4>
Bit 18665545 0x00401b9f    745 Block=SLICE_X88Y61 Latch=CMUX Net=count1<3>
Bit 18665562 0x00401b9f    762 Block=SLICE_X88Y61 Latch=DQ Net=count1<5>
Bit 18665956 0x00401b9f   1156 Block=SLICE_X89Y68 Latch=AQ Net=sregt_1
Bit 18665981 0x00401b9f   1181 Block=SLICE_X89Y68 Latch=BQ Net=sregt_2
Bit 18665986 0x00401b9f   1186 Block=SLICE_X89Y68 Latch=CQ Net=sregt_3
Bit 18666011 0x00401b9f   1211 Block=SLICE_X89Y68 Latch=DQ Net=sregt_4
Bit 18666083 0x00401b9f   1283 Block=SLICE_X88Y70 Latch=AQ Net=df/count<0>
Bit 18666102 0x00401b9f   1302 Block=SLICE_X88Y70 Latch=BMUX Net=Result<1>
Bit 18666113 0x00401b9f   1313 Block=SLICE_X88Y70 Latch=CQ Net=df/count<2>
Bit 18666138 0x00401b9f   1338 Block=SLICE_X88Y70 Latch=DQ Net=df/count<3>
Bit 18666150 0x00401b9f   1350 Block=SLICE_X88Y71 Latch=AMUX Net=Result<4>
Bit 18666166 0x00401b9f   1366 Block=SLICE_X88Y71 Latch=BMUX Net=Result<5>
Bit 18666177 0x00401b9f   1377 Block=SLICE_X88Y71 Latch=CQ Net=df/count<6>
Bit 18666202 0x00401b9f   1402 Block=SLICE_X88Y71 Latch=DQ Net=df/count<7>
Bit 18666211 0x00401b9f   1411 Block=SLICE_X88Y72 Latch=AQ Net=df/count<8>
Bit 18666236 0x00401b9f   1436 Block=SLICE_X88Y72 Latch=BQ Net=df/count<9>
Bit 18666241 0x00401b9f   1441 Block=SLICE_X88Y72 Latch=CQ Net=df/count<10>
Bit 18666242 0x00401b9f   1442 Block=SLICE_X89Y72 Latch=CQ Net=df/count<1>
Bit 18666250 0x00401b9f   1450 Block=SLICE_X89Y72 Latch=CMUX Net=df/count[31]_GND_2_o_equal_3_o<31>5
Bit 18666260 0x00401b9f   1460 Block=SLICE_X89Y72 Latch=DMUX Net=df/count<5>
Bit 18666266 0x00401b9f   1466 Block=SLICE_X88Y72 Latch=DQ Net=df/count<11>
Bit 18666267 0x00401b9f   1467 Block=SLICE_X89Y72 Latch=DQ Net=df/count<4>
Bit 18666275 0x00401b9f   1475 Block=SLICE_X88Y73 Latch=AQ Net=df/count<12>
Bit 18666300 0x00401b9f   1500 Block=SLICE_X88Y73 Latch=BQ Net=df/count<13>
Bit 18666305 0x00401b9f   1505 Block=SLICE_X88Y73 Latch=CQ Net=df/count<14>
Bit 18666330 0x00401b9f   1530 Block=SLICE_X88Y73 Latch=DQ Net=df/count<15>
Bit 18666339 0x00401b9f   1539 Block=SLICE_X88Y74 Latch=AQ Net=df/count<16>
Bit 18666340 0x00401b9f   1540 Block=SLICE_X89Y74 Latch=AQ Net=df/clkout
Bit 18666341 0x00401b9f   1541 Block=SLICE_X89Y74 Latch=AMUX Net=df/clkout_rstpot
Bit 18666364 0x00401b9f   1564 Block=SLICE_X88Y74 Latch=BQ Net=df/count<17>
Bit 18666369 0x00401b9f   1569 Block=SLICE_X88Y74 Latch=CQ Net=df/count<18>
Bit 18666394 0x00401b9f   1594 Block=SLICE_X88Y74 Latch=DQ Net=df/count<19>
Bit 18666435 0x00401b9f   1635 Block=SLICE_X88Y75 Latch=AQ Net=df/count<20>
Bit 18666460 0x00401b9f   1660 Block=SLICE_X88Y75 Latch=BQ Net=df/count<21>
Bit 18666465 0x00401b9f   1665 Block=SLICE_X88Y75 Latch=CQ Net=df/count<22>
Bit 18666490 0x00401b9f   1690 Block=SLICE_X88Y75 Latch=DQ Net=df/count<23>
Bit 18666499 0x00401b9f   1699 Block=SLICE_X88Y76 Latch=AQ Net=df/count<24>
Bit 18666524 0x00401b9f   1724 Block=SLICE_X88Y76 Latch=BQ Net=df/count<25>
Bit 18666529 0x00401b9f   1729 Block=SLICE_X88Y76 Latch=CQ Net=df/count<26>
Bit 18666554 0x00401b9f   1754 Block=SLICE_X88Y76 Latch=DQ Net=df/count<27>
Bit 18666563 0x00401b9f   1763 Block=SLICE_X88Y77 Latch=AQ Net=df/count<28>
Bit 18666588 0x00401b9f   1788 Block=SLICE_X88Y77 Latch=BQ Net=df/count<29>
Bit 18666593 0x00401b9f   1793 Block=SLICE_X88Y77 Latch=CQ Net=df/count<30>
Bit 18666618 0x00401b9f   1818 Block=SLICE_X88Y77 Latch=DQ Net=df/count<31>
