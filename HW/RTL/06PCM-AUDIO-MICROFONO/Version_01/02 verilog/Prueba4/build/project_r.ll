Revision 3
; Created by bitgen P.20131013 at Sun Nov 26 21:11:01 2017
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
Bit 17992852 0x0040189f    308 Block=SLICE_X79Y54 Latch=DMUX Net=fi/full_reg
Bit 17992868 0x0040189f    324 Block=SLICE_X79Y55 Latch=AQ Net=fi/empty_reg
Bit 17992887 0x0040189f    343 Block=SLICE_X79Y55 Latch=BMUX Net=fi/_n0147_inv1
Bit 17992915 0x0040189f    371 Block=SLICE_X78Y55 Latch=DMUX Net=fi/dffw1
Bit 17992916 0x0040189f    372 Block=SLICE_X79Y55 Latch=DMUX Net=fi/_n0147_inv2
Bit 17992922 0x0040189f    378 Block=SLICE_X78Y55 Latch=DQ Net=fi/dffr1
Bit 17992931 0x0040189f    387 Block=SLICE_X78Y56 Latch=AQ Net=fi/wr_reg<0>
Bit 17992932 0x0040189f    388 Block=SLICE_X79Y56 Latch=AQ Net=fi/rd_reg<0>
Bit 17992956 0x0040189f    412 Block=SLICE_X78Y56 Latch=BQ Net=fi/wr_reg<1>
Bit 17992957 0x0040189f    413 Block=SLICE_X79Y56 Latch=BQ Net=fi/rd_reg<1>
Bit 17992961 0x0040189f    417 Block=SLICE_X78Y56 Latch=CQ Net=fi/wr_reg<3>
Bit 17992962 0x0040189f    418 Block=SLICE_X79Y56 Latch=CQ Net=fi/rd_reg<3>
Bit 17992969 0x0040189f    425 Block=SLICE_X78Y56 Latch=CMUX Net=fi/wr_reg<2>
Bit 17992970 0x0040189f    426 Block=SLICE_X79Y56 Latch=CMUX Net=fi/rd_reg<2>
Bit 18665251 0x00401b9f    451 Block=SLICE_X88Y57 Latch=AQ Net=count<0>
Bit 18665252 0x00401b9f    452 Block=SLICE_X89Y57 Latch=AQ Net=done_OBUF
Bit 18665253 0x00401b9f    453 Block=SLICE_X89Y57 Latch=AMUX Net=done_rstpot
Bit 18665276 0x00401b9f    476 Block=SLICE_X88Y57 Latch=BQ Net=count<1>
Bit 18665281 0x00401b9f    481 Block=SLICE_X88Y57 Latch=CQ Net=count<2>
Bit 18665306 0x00401b9f    506 Block=SLICE_X88Y57 Latch=DQ Net=count<3>
Bit 18666083 0x00401b9f   1283 Block=SLICE_X88Y70 Latch=AQ Net=df/count<0>
Bit 18666108 0x00401b9f   1308 Block=SLICE_X88Y70 Latch=BQ Net=df/count<1>
Bit 18666113 0x00401b9f   1313 Block=SLICE_X88Y70 Latch=CQ Net=df/count<2>
Bit 18666114 0x00401b9f   1314 Block=SLICE_X89Y70 Latch=CQ Net=df/count<4>
Bit 18666138 0x00401b9f   1338 Block=SLICE_X88Y70 Latch=DQ Net=df/count<3>
Bit 18666139 0x00401b9f   1339 Block=SLICE_X89Y70 Latch=DQ Net=df/clkout
Bit 18666150 0x00401b9f   1350 Block=SLICE_X88Y71 Latch=AMUX Net=Result<4>1
