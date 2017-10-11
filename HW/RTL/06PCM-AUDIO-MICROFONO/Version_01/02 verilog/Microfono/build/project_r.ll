Revision 3
; Created by bitgen P.20131013 at Tue Oct 10 13:01:28 2017
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
Bit  1083375 0x00280200     79 Block=B8 Latch=I Net=clk_BUFGP/IBUFG
Bit  1614650 0x003a0200    570 Block=SLICE_X50Y76 Latch=YQ Net=df/count<10>
Bit  1614653 0x003a0200    573 Block=SLICE_X50Y76 Latch=XQ Net=df/count<11>
Bit  1614682 0x003a0200    602 Block=SLICE_X50Y75 Latch=YQ Net=df/count<14>
Bit  1614685 0x003a0200    605 Block=SLICE_X50Y75 Latch=XQ Net=df/count<15>
Bit  1614746 0x003a0200    666 Block=SLICE_X50Y73 Latch=YQ Net=df/count<4>
Bit  1614749 0x003a0200    669 Block=SLICE_X50Y73 Latch=XQ Net=df/count<5>
Bit  1614813 0x003a0200    733 Block=SLICE_X50Y71 Latch=XQ Net=df/count<1>
Bit  1673594 0x003c0200    538 Block=SLICE_X52Y77 Latch=YQ Net=df/count<12>
Bit  1673597 0x003c0200    541 Block=SLICE_X52Y77 Latch=XQ Net=df/count<13>
Bit  1673626 0x003c0200    570 Block=SLICE_X52Y76 Latch=YQ Net=df/count<8>
Bit  1673629 0x003c0200    573 Block=SLICE_X52Y76 Latch=XQ Net=df/count<9>
Bit  1673754 0x003c0200    698 Block=SLICE_X52Y72 Latch=YQ Net=df/count<6>
Bit  1673757 0x003c0200    701 Block=SLICE_X52Y72 Latch=XQ Net=df/count<7>
Bit  1673786 0x003c0200    730 Block=SLICE_X52Y71 Latch=YQ Net=df/count<0>
Bit  1673818 0x003c0200    762 Block=SLICE_X52Y70 Latch=YQ Net=df/count<2>
Bit  1673821 0x003c0200    765 Block=SLICE_X52Y70 Latch=XQ Net=df/count<3>
Bit  1673850 0x003c0200    794 Block=SLICE_X52Y69 Latch=YQ Net=count<28>
Bit  1673853 0x003c0200    797 Block=SLICE_X52Y69 Latch=XQ Net=count<29>
Bit  1673946 0x003c0200    890 Block=SLICE_X52Y66 Latch=YQ Net=count<26>
Bit  1673949 0x003c0200    893 Block=SLICE_X52Y66 Latch=XQ Net=count<27>
Bit  1673978 0x003c0200    922 Block=SLICE_X52Y65 Latch=YQ Net=count<20>
Bit  1673981 0x003c0200    925 Block=SLICE_X52Y65 Latch=XQ Net=count<21>
Bit  1674010 0x003c0200    954 Block=SLICE_X52Y64 Latch=YQ Net=count<22>
Bit  1674013 0x003c0200    957 Block=SLICE_X52Y64 Latch=XQ Net=count<23>
Bit  1674042 0x003c0200    986 Block=SLICE_X52Y63 Latch=YQ Net=count<16>
Bit  1674045 0x003c0200    989 Block=SLICE_X52Y63 Latch=XQ Net=count<17>
Bit  1674106 0x003c0200   1050 Block=SLICE_X52Y61 Latch=YQ Net=count<14>
Bit  1674109 0x003c0200   1053 Block=SLICE_X52Y61 Latch=XQ Net=count<15>
Bit  1674138 0x003c0200   1082 Block=SLICE_X52Y60 Latch=YQ Net=count<12>
Bit  1674141 0x003c0200   1085 Block=SLICE_X52Y60 Latch=XQ Net=count<13>
Bit  1674170 0x003c0200   1114 Block=SLICE_X52Y59 Latch=YQ Net=count<8>
Bit  1674173 0x003c0200   1117 Block=SLICE_X52Y59 Latch=XQ Net=count<9>
Bit  1674202 0x003c0200   1146 Block=SLICE_X52Y58 Latch=YQ Net=count<10>
Bit  1674205 0x003c0200   1149 Block=SLICE_X52Y58 Latch=XQ Net=count<11>
Bit  1674266 0x003c0200   1210 Block=SLICE_X52Y56 Latch=YQ Net=count<4>
Bit  1674269 0x003c0200   1213 Block=SLICE_X52Y56 Latch=XQ Net=count<5>
Bit  1732858 0x02002400    826 Block=SLICE_X54Y68 Latch=YQ Net=count<30>
Bit  1732861 0x02002400    829 Block=SLICE_X54Y68 Latch=XQ Net=count<31>
Bit  1732922 0x02002400    890 Block=SLICE_X54Y66 Latch=YQ Net=count<24>
Bit  1732925 0x02002400    893 Block=SLICE_X54Y66 Latch=XQ Net=count<25>
Bit  1733018 0x02002400    986 Block=SLICE_X54Y63 Latch=YQ Net=count<18>
Bit  1733021 0x02002400    989 Block=SLICE_X54Y63 Latch=XQ Net=count<19>
Bit  1733210 0x02002400   1178 Block=SLICE_X54Y57 Latch=YQ Net=count<0>
Bit  1733213 0x02002400   1181 Block=SLICE_X54Y57 Latch=XQ Net=count<1>
Bit  1733242 0x02002400   1210 Block=SLICE_X54Y56 Latch=YQ Net=count<2>
Bit  1733245 0x02002400   1213 Block=SLICE_X54Y56 Latch=XQ Net=count<3>
Bit  1736314 0x02002600   1178 Block=SLICE_X55Y57 Latch=YQ Net=count<6>
Bit  1736317 0x02002600   1181 Block=SLICE_X55Y57 Latch=XQ Net=count<7>
Bit  2146173 0x02029600   1309 Block=SLICE_X66Y53 Latch=XQ Net=ws_OBUF
Bit  2146234 0x02029600   1370 Block=SLICE_X66Y51 Latch=YQ Net=df/clkout
Bit  2205104 0x04002400   1264 Block=J13 Latch=O2 Net=done_mux0000
Bit  2205616 0x04002400   1776 Block=K12 Latch=O2 Net=ws_mux0000
Bit  2205872 0x04002400   2032 Block=L15 Latch=O2 Net=df/clkout
Bit  2211111 0x04020200   1063 Block=G18 Latch=I Net=reset_IBUF
Bit  2211367 0x04020200   1319 Block=H18 Latch=I Net=enable_IBUF1
Bit  2211944 0x04020200   1896 Block=L17 Latch=I Net=dataint_IBUF
