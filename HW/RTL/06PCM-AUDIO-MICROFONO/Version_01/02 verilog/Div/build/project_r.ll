Revision 3
; Created by bitgen P.20131013 at Wed Nov  8 20:34:11 2017
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
Bit  2240611 0x0000099f    835 Block=SLICE_X28Y113 Latch=AQ Net=count<0>
Bit  2240636 0x0000099f    860 Block=SLICE_X28Y113 Latch=BQ Net=count<1>
Bit  2240649 0x0000099f    873 Block=SLICE_X28Y113 Latch=CMUX Net=Result<2>
Bit  2240666 0x0000099f    890 Block=SLICE_X28Y113 Latch=DQ Net=count<3>
Bit  2240678 0x0000099f    902 Block=SLICE_X28Y114 Latch=AMUX Net=Result<4>
Bit  2240695 0x0000099f    919 Block=SLICE_X29Y114 Latch=BMUX Net=count<4>
Bit  2240700 0x0000099f    924 Block=SLICE_X28Y114 Latch=BQ Net=count<5>
Bit  2240701 0x0000099f    925 Block=SLICE_X29Y114 Latch=BQ Net=count<2>
Bit  2240705 0x0000099f    929 Block=SLICE_X28Y114 Latch=CQ Net=count<6>
Bit  2240706 0x0000099f    930 Block=SLICE_X29Y114 Latch=CQ Net=count<8>
Bit  2240714 0x0000099f    938 Block=SLICE_X29Y114 Latch=CMUX Net=count<10>
Bit  2240730 0x0000099f    954 Block=SLICE_X28Y114 Latch=DQ Net=count<7>
Bit  2240742 0x0000099f    966 Block=SLICE_X28Y115 Latch=AMUX Net=Result<8>
Bit  2240764 0x0000099f    988 Block=SLICE_X28Y115 Latch=BQ Net=count<9>
Bit  2240777 0x0000099f   1001 Block=SLICE_X28Y115 Latch=CMUX Net=Result<10>
Bit  2357028 0x00000a1f    900 Block=SLICE_X31Y114 Latch=AQ Net=clkout_OBUF
Bit  2357029 0x00000a1f    901 Block=SLICE_X31Y114 Latch=AMUX Net=clkout_rstpot
