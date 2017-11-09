Revision 3
; Created by bitgen P.20131013 at Wed Nov  8 22:15:35 2017
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
Bit  4495907 0x0000139f    195 Block=SLICE_X62Y103 Latch=AQ Net=ampPWM_OBUF
Bit  4612067 0x0000141f      3 Block=SLICE_X64Y100 Latch=AQ Net=count<8>
Bit  4612092 0x0000141f     28 Block=SLICE_X64Y100 Latch=BQ Net=count<9>
Bit  4612097 0x0000141f     33 Block=SLICE_X64Y100 Latch=CQ Net=count<10>
Bit  4612122 0x0000141f     58 Block=SLICE_X64Y100 Latch=DQ Net=count<11>
Bit  4612131 0x0000141f     67 Block=SLICE_X64Y101 Latch=AQ Net=count<12>
Bit  4612156 0x0000141f     92 Block=SLICE_X64Y101 Latch=BQ Net=count<13>
Bit  4612161 0x0000141f     97 Block=SLICE_X64Y101 Latch=CQ Net=count<14>
Bit  4612186 0x0000141f    122 Block=SLICE_X64Y101 Latch=DQ Net=count<15>
Bit  4612195 0x0000141f    131 Block=SLICE_X64Y102 Latch=AQ Net=count<16>
Bit  4612220 0x0000141f    156 Block=SLICE_X64Y102 Latch=BQ Net=count<17>
Bit  4612225 0x0000141f    161 Block=SLICE_X64Y102 Latch=CQ Net=count<18>
Bit  4612250 0x0000141f    186 Block=SLICE_X64Y102 Latch=DQ Net=count<19>
Bit  4612259 0x0000141f    195 Block=SLICE_X64Y103 Latch=AQ Net=count<20>
Bit  4612284 0x0000141f    220 Block=SLICE_X64Y103 Latch=BQ Net=count<21>
Bit  4612289 0x0000141f    225 Block=SLICE_X64Y103 Latch=CQ Net=count<22>
Bit  4612298 0x0000141f    234 Block=SLICE_X65Y103 Latch=CMUX Net=Mcompar_n0001_cy<6>
Bit  4612314 0x0000141f    250 Block=SLICE_X64Y103 Latch=DQ Net=count<23>
Bit  4612323 0x0000141f    259 Block=SLICE_X64Y104 Latch=AQ Net=count<24>
Bit  4612348 0x0000141f    284 Block=SLICE_X64Y104 Latch=BQ Net=count<25>
Bit  4612353 0x0000141f    289 Block=SLICE_X64Y104 Latch=CQ Net=count<26>
Bit  4612378 0x0000141f    314 Block=SLICE_X64Y104 Latch=DQ Net=count<27>
Bit  4612387 0x0000141f    323 Block=SLICE_X64Y105 Latch=AQ Net=count<28>
Bit  4612412 0x0000141f    348 Block=SLICE_X64Y105 Latch=BQ Net=count<29>
Bit  4612417 0x0000141f    353 Block=SLICE_X64Y105 Latch=CQ Net=count<30>
Bit  4612442 0x0000141f    378 Block=SLICE_X64Y105 Latch=DQ Net=count<31>
Bit 17000195 0x0040141f   3107 Block=SLICE_X64Y98 Latch=AQ Net=count<0>
Bit 17000220 0x0040141f   3132 Block=SLICE_X64Y98 Latch=BQ Net=count<1>
Bit 17000225 0x0040141f   3137 Block=SLICE_X64Y98 Latch=CQ Net=count<2>
Bit 17000250 0x0040141f   3162 Block=SLICE_X64Y98 Latch=DQ Net=count<3>
Bit 17000259 0x0040141f   3171 Block=SLICE_X64Y99 Latch=AQ Net=count<4>
Bit 17000284 0x0040141f   3196 Block=SLICE_X64Y99 Latch=BQ Net=count<5>
Bit 17000289 0x0040141f   3201 Block=SLICE_X64Y99 Latch=CQ Net=count<6>
Bit 17000314 0x0040141f   3226 Block=SLICE_X64Y99 Latch=DQ Net=count<7>
Bit 18318019 0x00401a1f   2275 Block=SLICE_X82Y85 Latch=AQ Net=df/count<0>
Bit 18318044 0x00401a1f   2300 Block=SLICE_X82Y85 Latch=BQ Net=df/count<1>
Bit 18318049 0x00401a1f   2305 Block=SLICE_X82Y85 Latch=CQ Net=df/count<2>
Bit 18318074 0x00401a1f   2330 Block=SLICE_X82Y85 Latch=DQ Net=df/count<3>
Bit 18318086 0x00401a1f   2342 Block=SLICE_X82Y86 Latch=AMUX Net=Result<4>
Bit 18318108 0x00401a1f   2364 Block=SLICE_X82Y86 Latch=BQ Net=df/count<5>
Bit 18318113 0x00401a1f   2369 Block=SLICE_X82Y86 Latch=CQ Net=df/count<6>
Bit 18318138 0x00401a1f   2394 Block=SLICE_X82Y86 Latch=DQ Net=df/count<7>
Bit 18318147 0x00401a1f   2403 Block=SLICE_X82Y87 Latch=AQ Net=df/count<8>
Bit 18318172 0x00401a1f   2428 Block=SLICE_X82Y87 Latch=BQ Net=df/count<9>
Bit 18318177 0x00401a1f   2433 Block=SLICE_X82Y87 Latch=CQ Net=df/count<10>
Bit 18318202 0x00401a1f   2458 Block=SLICE_X82Y87 Latch=DQ Net=df/count<11>
Bit 18318211 0x00401a1f   2467 Block=SLICE_X82Y88 Latch=AQ Net=df/count<12>
Bit 18318236 0x00401a1f   2492 Block=SLICE_X82Y88 Latch=BQ Net=df/count<13>
Bit 18318241 0x00401a1f   2497 Block=SLICE_X82Y88 Latch=CQ Net=df/count<14>
Bit 18318260 0x00401a1f   2516 Block=SLICE_X83Y88 Latch=DMUX Net=df/count[31]_GND_2_o_equal_3_o<31>5
Bit 18318266 0x00401a1f   2522 Block=SLICE_X82Y88 Latch=DQ Net=df/count<15>
Bit 18318267 0x00401a1f   2523 Block=SLICE_X83Y88 Latch=DQ Net=df/count<4>
Bit 18318275 0x00401a1f   2531 Block=SLICE_X82Y89 Latch=AQ Net=df/count<16>
Bit 18318300 0x00401a1f   2556 Block=SLICE_X82Y89 Latch=BQ Net=df/count<17>
Bit 18318305 0x00401a1f   2561 Block=SLICE_X82Y89 Latch=CQ Net=df/count<18>
Bit 18318330 0x00401a1f   2586 Block=SLICE_X82Y89 Latch=DQ Net=df/count<19>
Bit 18318339 0x00401a1f   2595 Block=SLICE_X82Y90 Latch=AQ Net=df/count<20>
Bit 18318364 0x00401a1f   2620 Block=SLICE_X82Y90 Latch=BQ Net=df/count<21>
Bit 18318369 0x00401a1f   2625 Block=SLICE_X82Y90 Latch=CQ Net=df/count<22>
Bit 18318388 0x00401a1f   2644 Block=SLICE_X83Y90 Latch=DMUX Net=df/clkout_rstpot
Bit 18318394 0x00401a1f   2650 Block=SLICE_X82Y90 Latch=DQ Net=df/count<23>
Bit 18318395 0x00401a1f   2651 Block=SLICE_X83Y90 Latch=DQ Net=df/clkout
Bit 18318403 0x00401a1f   2659 Block=SLICE_X82Y91 Latch=AQ Net=df/count<24>
Bit 18318428 0x00401a1f   2684 Block=SLICE_X82Y91 Latch=BQ Net=df/count<25>
Bit 18318433 0x00401a1f   2689 Block=SLICE_X82Y91 Latch=CQ Net=df/count<26>
Bit 18318458 0x00401a1f   2714 Block=SLICE_X82Y91 Latch=DQ Net=df/count<27>
Bit 18318467 0x00401a1f   2723 Block=SLICE_X82Y92 Latch=AQ Net=df/count<28>
Bit 18318492 0x00401a1f   2748 Block=SLICE_X82Y92 Latch=BQ Net=df/count<29>
Bit 18318497 0x00401a1f   2753 Block=SLICE_X82Y92 Latch=CQ Net=df/count<30>
Bit 18318522 0x00401a1f   2778 Block=SLICE_X82Y92 Latch=DQ Net=df/count<31>
