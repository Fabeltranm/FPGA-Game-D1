Revision 3
; Created by bitgen P.20131013 at Thu Oct 19 17:37:55 2017
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
Bit   333411 0x0000011f    515 Block=SLICE_X0Y108 Latch=AQ Net=count<0>
Bit   333412 0x0000011f    516 Block=SLICE_X1Y108 Latch=AQ Net=count<1>
Bit   333430 0x0000011f    534 Block=SLICE_X0Y108 Latch=BMUX Net=Result<1>
Bit   333441 0x0000011f    545 Block=SLICE_X0Y108 Latch=CQ Net=count<2>
Bit   333442 0x0000011f    546 Block=SLICE_X1Y108 Latch=CQ Net=count<4>
Bit   333450 0x0000011f    554 Block=SLICE_X1Y108 Latch=CMUX Net=count<5>
Bit   333460 0x0000011f    564 Block=SLICE_X1Y108 Latch=DMUX Net=clkout_rstpot
Bit   333466 0x0000011f    570 Block=SLICE_X0Y108 Latch=DQ Net=count<3>
Bit   333467 0x0000011f    571 Block=SLICE_X1Y108 Latch=DQ Net=clkout_OBUF
Bit   333478 0x0000011f    582 Block=SLICE_X0Y109 Latch=AMUX Net=Result<4>
Bit   333494 0x0000011f    598 Block=SLICE_X0Y109 Latch=BMUX Net=Result<5>
