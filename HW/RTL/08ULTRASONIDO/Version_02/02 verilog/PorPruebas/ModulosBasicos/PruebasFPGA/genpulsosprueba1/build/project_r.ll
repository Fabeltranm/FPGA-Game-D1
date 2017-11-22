Revision 3
; Created by bitgen P.20131013 at Tue Nov  7 13:40:50 2017
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
Bit 17115395 0x0040149f   1955 Block=SLICE_X66Y80 Latch=AQ Net=genpulsos0/NoDoit
Bit 17115396 0x0040149f   1956 Block=SLICE_X67Y80 Latch=AQ Net=genpulsos0/Doit
Bit 17231491 0x0040151f   1699 Block=SLICE_X68Y76 Latch=AQ Net=divisorfrecgen0/count_1000<0>
Bit 17231516 0x0040151f   1724 Block=SLICE_X68Y76 Latch=BQ Net=divisorfrecgen0/count_1000<1>
Bit 17231521 0x0040151f   1729 Block=SLICE_X68Y76 Latch=CQ Net=divisorfrecgen0/count_1000<2>
Bit 17231546 0x0040151f   1754 Block=SLICE_X68Y76 Latch=DQ Net=divisorfrecgen0/count_1000<3>
Bit 17231555 0x0040151f   1763 Block=SLICE_X68Y77 Latch=AQ Net=divisorfrecgen0/count_1000<4>
Bit 17231556 0x0040151f   1764 Block=SLICE_X69Y77 Latch=AQ Net=divisorfrecgen0/CLKOUT1
Bit 17231580 0x0040151f   1788 Block=SLICE_X68Y77 Latch=BQ Net=divisorfrecgen0/count_1000<5>
Bit 17231585 0x0040151f   1793 Block=SLICE_X68Y77 Latch=CQ Net=divisorfrecgen0/count_1000<6>
Bit 17231610 0x0040151f   1818 Block=SLICE_X68Y77 Latch=DQ Net=divisorfrecgen0/count_1000<7>
Bit 17231619 0x0040151f   1827 Block=SLICE_X68Y78 Latch=AQ Net=divisorfrecgen0/count_1000<8>
Bit 17231644 0x0040151f   1852 Block=SLICE_X68Y78 Latch=BQ Net=divisorfrecgen0/count_1000<9>
