Revision 3
; Created by bitgen P.20131013 at Fri Nov  3 05:19:53 2017
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
Bit   335747 0x0000011f   2851 Block=SLICE_X0Y144 Latch=AQ Net=count<0>
Bit   335748 0x0000011f   2852 Block=SLICE_X1Y144 Latch=AQ Net=clk_div_OBUF
Bit   335772 0x0000011f   2876 Block=SLICE_X0Y144 Latch=BQ Net=count<1>
Bit   335777 0x0000011f   2881 Block=SLICE_X0Y144 Latch=CQ Net=count<2>
Bit   335802 0x0000011f   2906 Block=SLICE_X0Y144 Latch=DQ Net=count<3>
Bit   335811 0x0000011f   2915 Block=SLICE_X0Y145 Latch=AQ Net=count<4>
Bit   335836 0x0000011f   2940 Block=SLICE_X0Y145 Latch=BQ Net=count<5>
Bit   335841 0x0000011f   2945 Block=SLICE_X0Y145 Latch=CQ Net=count<6>
Bit   335866 0x0000011f   2970 Block=SLICE_X0Y145 Latch=DQ Net=count<7>
Bit   335875 0x0000011f   2979 Block=SLICE_X0Y146 Latch=AQ Net=count<8>
Bit   335900 0x0000011f   3004 Block=SLICE_X0Y146 Latch=BQ Net=count<9>
Bit   335905 0x0000011f   3009 Block=SLICE_X0Y146 Latch=CQ Net=count<10>
