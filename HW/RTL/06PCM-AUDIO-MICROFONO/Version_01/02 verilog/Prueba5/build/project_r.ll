Revision 3
; Created by bitgen P.20131013 at Tue Nov 21 23:48:01 2017
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
Bit 16997475 0x0040141f    387 Block=SLICE_X64Y56 Latch=AQ Net=fi/dffw2
Bit 16997539 0x0040141f    451 Block=SLICE_X64Y57 Latch=AQ Net=fi/dffr2
Bit 16997541 0x0040141f    453 Block=SLICE_X65Y57 Latch=AMUX Net=fi/_n0085_inv
Bit 16997588 0x0040141f    500 Block=SLICE_X65Y57 Latch=DMUX Net=fi/_n0096_inv
Bit 17113875 0x0040149f    435 Block=SLICE_X66Y56 Latch=DMUX Net=fi/full_reg
Bit 17113891 0x0040149f    451 Block=SLICE_X66Y57 Latch=AQ Net=fi/wr_reg<0>
Bit 17113892 0x0040149f    452 Block=SLICE_X67Y57 Latch=AQ Net=fi/wr_reg<3>
Bit 17113910 0x0040149f    470 Block=SLICE_X66Y57 Latch=BMUX Net=fi/Result<1>1
Bit 17113911 0x0040149f    471 Block=SLICE_X67Y57 Latch=BMUX Net=fi/Result<3>
Bit 17113916 0x0040149f    476 Block=SLICE_X66Y57 Latch=BQ Net=fi/wr_reg<1>
Bit 17113917 0x0040149f    477 Block=SLICE_X67Y57 Latch=BQ Net=fi/wr_reg<4>
Bit 17113921 0x0040149f    481 Block=SLICE_X66Y57 Latch=CQ Net=fi/wr_reg<2>
Bit 17113922 0x0040149f    482 Block=SLICE_X67Y57 Latch=CQ Net=fi/wr_reg<5>
Bit 17113929 0x0040149f    489 Block=SLICE_X66Y57 Latch=CMUX Net=N4
Bit 17230268 0x0040151f    476 Block=SLICE_X68Y57 Latch=BQ Net=fi/rd_reg<0>
Bit 17230269 0x0040151f    477 Block=SLICE_X69Y57 Latch=BQ Net=fi/rd_reg<3>
Bit 17230273 0x0040151f    481 Block=SLICE_X68Y57 Latch=CQ Net=fi/rd_reg<1>
Bit 17230274 0x0040151f    482 Block=SLICE_X69Y57 Latch=CQ Net=fi/rd_reg<4>
Bit 17230282 0x0040151f    490 Block=SLICE_X69Y57 Latch=CMUX Net=fi/Result<3>1
Bit 17230291 0x0040151f    499 Block=SLICE_X68Y57 Latch=DMUX Net=fi/_n0078_inv2
Bit 17230298 0x0040151f    506 Block=SLICE_X68Y57 Latch=DQ Net=fi/rd_reg<2>
Bit 17230299 0x0040151f    507 Block=SLICE_X69Y57 Latch=DQ Net=fi/rd_reg<5>
Bit 17346595 0x0040159f    451 Block=SLICE_X70Y57 Latch=AQ Net=fi/empty_reg
Bit 18665251 0x00401b9f    451 Block=SLICE_X88Y57 Latch=AQ Net=count<0>
Bit 18665252 0x00401b9f    452 Block=SLICE_X89Y57 Latch=AQ Net=done_OBUF
Bit 18665276 0x00401b9f    476 Block=SLICE_X88Y57 Latch=BQ Net=count<1>
Bit 18665281 0x00401b9f    481 Block=SLICE_X88Y57 Latch=CQ Net=count<2>
Bit 18665290 0x00401b9f    490 Block=SLICE_X89Y57 Latch=CMUX Net=done_rstpot
Bit 18665306 0x00401b9f    506 Block=SLICE_X88Y57 Latch=DQ Net=count<3>
Bit 18666147 0x00401b9f   1347 Block=SLICE_X88Y71 Latch=AQ Net=df/count<0>
Bit 18666148 0x00401b9f   1348 Block=SLICE_X89Y71 Latch=AQ Net=df/count<4>
Bit 18666172 0x00401b9f   1372 Block=SLICE_X88Y71 Latch=BQ Net=df/count<1>
Bit 18666173 0x00401b9f   1373 Block=SLICE_X89Y71 Latch=BQ Net=df/clkout
Bit 18666177 0x00401b9f   1377 Block=SLICE_X88Y71 Latch=CQ Net=df/count<2>
Bit 18666202 0x00401b9f   1402 Block=SLICE_X88Y71 Latch=DQ Net=df/count<3>
Bit 18666214 0x00401b9f   1414 Block=SLICE_X88Y72 Latch=AMUX Net=Result<4>1
