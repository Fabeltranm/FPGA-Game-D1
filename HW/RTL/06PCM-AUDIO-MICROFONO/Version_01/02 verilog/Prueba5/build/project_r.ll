Revision 3
; Created by bitgen P.20131013 at Tue Nov 21 22:47:28 2017
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
Bit 16558116 0x0040121f    580 Block=SLICE_X59Y59 Latch=AQ Net=fi/dffw2
Bit 16558170 0x0040121f    634 Block=SLICE_X58Y59 Latch=DQ Net=fi/full_reg
Bit 16558179 0x0040121f    643 Block=SLICE_X58Y60 Latch=AQ Net=fi/dffr2
Bit 16558180 0x0040121f    644 Block=SLICE_X59Y60 Latch=AQ Net=fi/empty_reg
Bit 16558199 0x0040121f    663 Block=SLICE_X59Y60 Latch=BMUX Net=fi/_n0096_inv
Bit 16558227 0x0040121f    691 Block=SLICE_X58Y60 Latch=DMUX Net=fi/_n0085_inv
Bit 16674467 0x0040129f    579 Block=SLICE_X60Y59 Latch=AQ Net=fi/rd_reg<0>
Bit 16674492 0x0040129f    604 Block=SLICE_X60Y59 Latch=BQ Net=fi/rd_reg<1>
Bit 16674497 0x0040129f    609 Block=SLICE_X60Y59 Latch=CQ Net=fi/rd_reg<3>
Bit 16674505 0x0040129f    617 Block=SLICE_X60Y59 Latch=CMUX Net=fi/rd_reg<2>
Bit 16674531 0x0040129f    643 Block=SLICE_X60Y60 Latch=AQ Net=fi/wr_reg<0>
Bit 16674550 0x0040129f    662 Block=SLICE_X60Y60 Latch=BMUX Net=fi/Result<1>1
Bit 16674556 0x0040129f    668 Block=SLICE_X60Y60 Latch=BQ Net=fi/wr_reg<1>
Bit 16674561 0x0040129f    673 Block=SLICE_X60Y60 Latch=CQ Net=fi/wr_reg<3>
Bit 16674569 0x0040129f    681 Block=SLICE_X60Y60 Latch=CMUX Net=fi/wr_reg<2>
Bit 17115203 0x0040149f   1763 Block=SLICE_X66Y77 Latch=AQ Net=df/count<0>
Bit 17115204 0x0040149f   1764 Block=SLICE_X67Y77 Latch=AQ Net=df/count<4>
Bit 17115228 0x0040149f   1788 Block=SLICE_X66Y77 Latch=BQ Net=df/count<1>
Bit 17115233 0x0040149f   1793 Block=SLICE_X66Y77 Latch=CQ Net=df/count<2>
Bit 17115258 0x0040149f   1818 Block=SLICE_X66Y77 Latch=DQ Net=df/count<3>
Bit 17115270 0x0040149f   1830 Block=SLICE_X66Y78 Latch=AMUX Net=Result<4>1
Bit 17231610 0x0040151f   1818 Block=SLICE_X68Y77 Latch=DQ Net=df/clkout
Bit 18665059 0x00401b9f    259 Block=SLICE_X88Y54 Latch=AQ Net=count<0>
Bit 18665060 0x00401b9f    260 Block=SLICE_X89Y54 Latch=AQ Net=done_OBUF
Bit 18665084 0x00401b9f    284 Block=SLICE_X88Y54 Latch=BQ Net=count<1>
Bit 18665089 0x00401b9f    289 Block=SLICE_X88Y54 Latch=CQ Net=count<2>
Bit 18665108 0x00401b9f    308 Block=SLICE_X89Y54 Latch=DMUX Net=done_rstpot
Bit 18665114 0x00401b9f    314 Block=SLICE_X88Y54 Latch=DQ Net=count<3>
