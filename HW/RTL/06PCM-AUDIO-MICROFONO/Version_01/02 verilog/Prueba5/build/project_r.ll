Revision 3
; Created by bitgen P.20131013 at Tue Nov 21 20:21:36 2017
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
Bit 16234915 0x0040109f    579 Block=SLICE_X54Y59 Latch=AQ Net=fi/dffw2
Bit 16234916 0x0040109f    580 Block=SLICE_X55Y59 Latch=AQ Net=fi/dffr2
Bit 16234918 0x0040109f    582 Block=SLICE_X54Y59 Latch=AMUX Net=fi/_n0112_inv2
Bit 16234934 0x0040109f    598 Block=SLICE_X54Y59 Latch=BMUX Net=fi/_n0112_inv1
Bit 16351204 0x0040111f    516 Block=SLICE_X57Y58 Latch=AQ Net=fi/full_reg
Bit 16351268 0x0040111f    580 Block=SLICE_X57Y59 Latch=AQ Net=fi/empty_reg
Bit 16351331 0x0040111f    643 Block=SLICE_X56Y60 Latch=AQ Net=fi/wr_reg<0>
Bit 16351332 0x0040111f    644 Block=SLICE_X57Y60 Latch=AQ Net=fi/rd_reg<0>
Bit 16351350 0x0040111f    662 Block=SLICE_X56Y60 Latch=BMUX Net=fi/Result<1>1
Bit 16351356 0x0040111f    668 Block=SLICE_X56Y60 Latch=BQ Net=fi/wr_reg<1>
Bit 16351357 0x0040111f    669 Block=SLICE_X57Y60 Latch=BQ Net=fi/rd_reg<1>
Bit 16351361 0x0040111f    673 Block=SLICE_X56Y60 Latch=CQ Net=fi/wr_reg<3>
Bit 16351362 0x0040111f    674 Block=SLICE_X57Y60 Latch=CQ Net=fi/rd_reg<3>
Bit 16351369 0x0040111f    681 Block=SLICE_X56Y60 Latch=CMUX Net=fi/wr_reg<2>
Bit 16351370 0x0040111f    682 Block=SLICE_X57Y60 Latch=CMUX Net=fi/rd_reg<2>
Bit 17554275 0x0040169f   1283 Block=SLICE_X72Y70 Latch=AQ Net=df/count<0>
Bit 17554300 0x0040169f   1308 Block=SLICE_X72Y70 Latch=BQ Net=df/count<1>
Bit 17554305 0x0040169f   1313 Block=SLICE_X72Y70 Latch=CQ Net=df/count<2>
Bit 17554330 0x0040169f   1338 Block=SLICE_X72Y70 Latch=DQ Net=df/count<3>
Bit 17554342 0x0040169f   1350 Block=SLICE_X72Y71 Latch=AMUX Net=Result<4>1
Bit 17554364 0x0040169f   1372 Block=SLICE_X72Y71 Latch=BQ Net=df/count<5>
Bit 17554369 0x0040169f   1377 Block=SLICE_X72Y71 Latch=CQ Net=df/count<6>
Bit 17554394 0x0040169f   1402 Block=SLICE_X72Y71 Latch=DQ Net=df/count<7>
Bit 17554403 0x0040169f   1411 Block=SLICE_X72Y72 Latch=AQ Net=df/count<8>
Bit 17554423 0x0040169f   1431 Block=SLICE_X73Y72 Latch=BMUX Net=df/clkout_rstpot
Bit 17554428 0x0040169f   1436 Block=SLICE_X72Y72 Latch=BQ Net=df/count<9>
Bit 17554429 0x0040169f   1437 Block=SLICE_X73Y72 Latch=BQ Net=df/clkout
Bit 17554433 0x0040169f   1441 Block=SLICE_X72Y72 Latch=CQ Net=df/count<10>
Bit 17554458 0x0040169f   1466 Block=SLICE_X72Y72 Latch=DQ Net=df/count<11>
Bit 17554467 0x0040169f   1475 Block=SLICE_X72Y73 Latch=AQ Net=df/count<12>
Bit 17554492 0x0040169f   1500 Block=SLICE_X72Y73 Latch=BQ Net=df/count<13>
Bit 17554497 0x0040169f   1505 Block=SLICE_X72Y73 Latch=CQ Net=df/count<14>
Bit 17554498 0x0040169f   1506 Block=SLICE_X73Y73 Latch=CQ Net=df/count<4>
Bit 17554506 0x0040169f   1514 Block=SLICE_X73Y73 Latch=CMUX Net=df/count[31]_GND_5_o_equal_2_o<31>5
Bit 17554522 0x0040169f   1530 Block=SLICE_X72Y73 Latch=DQ Net=df/count<15>
Bit 17554531 0x0040169f   1539 Block=SLICE_X72Y74 Latch=AQ Net=df/count<16>
Bit 17554556 0x0040169f   1564 Block=SLICE_X72Y74 Latch=BQ Net=df/count<17>
Bit 17554561 0x0040169f   1569 Block=SLICE_X72Y74 Latch=CQ Net=df/count<18>
Bit 17554586 0x0040169f   1594 Block=SLICE_X72Y74 Latch=DQ Net=df/count<19>
Bit 17554627 0x0040169f   1635 Block=SLICE_X72Y75 Latch=AQ Net=df/count<20>
Bit 17554652 0x0040169f   1660 Block=SLICE_X72Y75 Latch=BQ Net=df/count<21>
Bit 17554657 0x0040169f   1665 Block=SLICE_X72Y75 Latch=CQ Net=df/count<22>
Bit 17554682 0x0040169f   1690 Block=SLICE_X72Y75 Latch=DQ Net=df/count<23>
Bit 17554691 0x0040169f   1699 Block=SLICE_X72Y76 Latch=AQ Net=df/count<24>
Bit 17554716 0x0040169f   1724 Block=SLICE_X72Y76 Latch=BQ Net=df/count<25>
Bit 17554721 0x0040169f   1729 Block=SLICE_X72Y76 Latch=CQ Net=df/count<26>
Bit 17554746 0x0040169f   1754 Block=SLICE_X72Y76 Latch=DQ Net=df/count<27>
Bit 17554755 0x0040169f   1763 Block=SLICE_X72Y77 Latch=AQ Net=df/count<28>
Bit 17554780 0x0040169f   1788 Block=SLICE_X72Y77 Latch=BQ Net=df/count<29>
Bit 17554785 0x0040169f   1793 Block=SLICE_X72Y77 Latch=CQ Net=df/count<30>
Bit 17554810 0x0040169f   1818 Block=SLICE_X72Y77 Latch=DQ Net=df/count<31>
