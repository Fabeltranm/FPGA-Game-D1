Revision 3
; Created by bitgen P.20131013 at Fri Nov 10 03:36:44 2017
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
Bit  1006982 0x0000041f   1830 Block=SLICE_X10Y128 Latch=AMUX Net=Result<0>
Bit  1006998 0x0000041f   1846 Block=SLICE_X10Y128 Latch=BMUX Net=Result<1>
Bit  1007017 0x0000041f   1865 Block=SLICE_X10Y128 Latch=CMUX Net=Result<2>
Bit  1007027 0x0000041f   1875 Block=SLICE_X10Y128 Latch=DMUX Net=Result<3>
Bit  1007043 0x0000041f   1891 Block=SLICE_X10Y129 Latch=AQ Net=count<0>
Bit  1007068 0x0000041f   1916 Block=SLICE_X10Y129 Latch=BQ Net=count<1>
Bit  1007073 0x0000041f   1921 Block=SLICE_X10Y129 Latch=CQ Net=count<2>
Bit  1007098 0x0000041f   1946 Block=SLICE_X10Y129 Latch=DQ Net=count<3>
Bit  1007099 0x0000041f   1947 Block=SLICE_X11Y129 Latch=DQ Net=clkout_OBUF
