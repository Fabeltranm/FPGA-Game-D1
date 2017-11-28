Revision 3
; Created by bitgen P.20131013 at Mon Nov 27 20:53:58 2017
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
Bit 17671619 0x0040171f   2275 Block=SLICE_X74Y85 Latch=AQ Net=df/count<0>
Bit 17671644 0x0040171f   2300 Block=SLICE_X74Y85 Latch=BQ Net=df/count<1>
Bit 17671649 0x0040171f   2305 Block=SLICE_X74Y85 Latch=CQ Net=df/count<2>
Bit 17671674 0x0040171f   2330 Block=SLICE_X74Y85 Latch=DQ Net=df/count<3>
Bit 17671686 0x0040171f   2342 Block=SLICE_X74Y86 Latch=AMUX Net=Result<4>
Bit 17671708 0x0040171f   2364 Block=SLICE_X74Y86 Latch=BQ Net=df/count<5>
Bit 17671713 0x0040171f   2369 Block=SLICE_X74Y86 Latch=CQ Net=df/count<6>
Bit 17671738 0x0040171f   2394 Block=SLICE_X74Y86 Latch=DQ Net=df/count<7>
Bit 17671747 0x0040171f   2403 Block=SLICE_X74Y87 Latch=AQ Net=df/count<8>
Bit 17671772 0x0040171f   2428 Block=SLICE_X74Y87 Latch=BQ Net=df/count<9>
Bit 17671777 0x0040171f   2433 Block=SLICE_X74Y87 Latch=CQ Net=df/count<10>
Bit 17671802 0x0040171f   2458 Block=SLICE_X74Y87 Latch=DQ Net=df/count<11>
Bit 17671811 0x0040171f   2467 Block=SLICE_X74Y88 Latch=AQ Net=df/count<12>
Bit 17671836 0x0040171f   2492 Block=SLICE_X74Y88 Latch=BQ Net=df/count<13>
Bit 17671841 0x0040171f   2497 Block=SLICE_X74Y88 Latch=CQ Net=df/count<14>
Bit 17671842 0x0040171f   2498 Block=SLICE_X75Y88 Latch=CQ Net=df/count<4>
Bit 17671850 0x0040171f   2506 Block=SLICE_X75Y88 Latch=CMUX Net=df/count[31]_GND_3_o_equal_2_o<31>5
Bit 17671866 0x0040171f   2522 Block=SLICE_X74Y88 Latch=DQ Net=df/count<15>
Bit 17671875 0x0040171f   2531 Block=SLICE_X74Y89 Latch=AQ Net=df/count<16>
Bit 17671900 0x0040171f   2556 Block=SLICE_X74Y89 Latch=BQ Net=df/count<17>
Bit 17671905 0x0040171f   2561 Block=SLICE_X74Y89 Latch=CQ Net=df/count<18>
Bit 17671930 0x0040171f   2586 Block=SLICE_X74Y89 Latch=DQ Net=df/count<19>
Bit 17671939 0x0040171f   2595 Block=SLICE_X74Y90 Latch=AQ Net=df/count<20>
Bit 17671959 0x0040171f   2615 Block=SLICE_X75Y90 Latch=BMUX Net=df/clkout_rstpot
Bit 17671964 0x0040171f   2620 Block=SLICE_X74Y90 Latch=BQ Net=df/count<21>
Bit 17671965 0x0040171f   2621 Block=SLICE_X75Y90 Latch=BQ Net=df/clkout
Bit 17671969 0x0040171f   2625 Block=SLICE_X74Y90 Latch=CQ Net=df/count<22>
Bit 17671994 0x0040171f   2650 Block=SLICE_X74Y90 Latch=DQ Net=df/count<23>
Bit 17672003 0x0040171f   2659 Block=SLICE_X74Y91 Latch=AQ Net=df/count<24>
Bit 17672028 0x0040171f   2684 Block=SLICE_X74Y91 Latch=BQ Net=df/count<25>
Bit 17672033 0x0040171f   2689 Block=SLICE_X74Y91 Latch=CQ Net=df/count<26>
Bit 17672058 0x0040171f   2714 Block=SLICE_X74Y91 Latch=DQ Net=df/count<27>
Bit 17672067 0x0040171f   2723 Block=SLICE_X74Y92 Latch=AQ Net=df/count<28>
Bit 17672092 0x0040171f   2748 Block=SLICE_X74Y92 Latch=BQ Net=df/count<29>
Bit 17672097 0x0040171f   2753 Block=SLICE_X74Y92 Latch=CQ Net=df/count<30>
Bit 17672122 0x0040171f   2778 Block=SLICE_X74Y92 Latch=DQ Net=df/count<31>
Bit 18665636 0x00401b9f    836 Block=SLICE_X89Y63 Latch=AQ Net=count<0>
Bit 18665661 0x00401b9f    861 Block=SLICE_X89Y63 Latch=BQ Net=count<1>
Bit 18665666 0x00401b9f    866 Block=SLICE_X89Y63 Latch=CQ Net=count<2>
Bit 18665691 0x00401b9f    891 Block=SLICE_X89Y63 Latch=DQ Net=count<3>
Bit 18665700 0x00401b9f    900 Block=SLICE_X89Y64 Latch=AQ Net=count<4>
Bit 18665725 0x00401b9f    925 Block=SLICE_X89Y64 Latch=BQ Net=count<5>
Bit 18665730 0x00401b9f    930 Block=SLICE_X89Y64 Latch=CQ Net=count<6>
Bit 18665755 0x00401b9f    955 Block=SLICE_X89Y64 Latch=DQ Net=count<7>
Bit 18665783 0x00401b9f    983 Block=SLICE_X89Y65 Latch=BMUX Net=count[7]_INV_46_o_inv
Bit 18665802 0x00401b9f   1002 Block=SLICE_X89Y65 Latch=CMUX Net=done_OBUF
Bit 18666436 0x00401b9f   1636 Block=SLICE_X89Y75 Latch=AQ Net=sregt<1>
Bit 18666461 0x00401b9f   1661 Block=SLICE_X89Y75 Latch=BQ Net=sregt<2>
Bit 18666466 0x00401b9f   1666 Block=SLICE_X89Y75 Latch=CQ Net=sregt<3>
Bit 18666491 0x00401b9f   1691 Block=SLICE_X89Y75 Latch=DQ Net=sregt<4>
Bit 18666692 0x00401b9f   1892 Block=SLICE_X89Y79 Latch=AQ Net=sregt<5>
Bit 18666717 0x00401b9f   1917 Block=SLICE_X89Y79 Latch=BQ Net=sregt<6>
Bit 18666722 0x00401b9f   1922 Block=SLICE_X89Y79 Latch=CQ Net=sregt<7>
