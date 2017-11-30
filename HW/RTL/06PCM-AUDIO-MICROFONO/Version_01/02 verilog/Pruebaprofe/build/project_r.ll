Revision 3
; Created by bitgen P.20131013 at Wed Nov 29 21:40:07 2017
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
Bit 17671811 0x0040171f   2467 Block=SLICE_X74Y88 Latch=AQ Net=df/count<0>
Bit 17671836 0x0040171f   2492 Block=SLICE_X74Y88 Latch=BQ Net=df/count<1>
Bit 17671841 0x0040171f   2497 Block=SLICE_X74Y88 Latch=CQ Net=df/count<2>
Bit 17671866 0x0040171f   2522 Block=SLICE_X74Y88 Latch=DQ Net=df/count<3>
Bit 17671878 0x0040171f   2534 Block=SLICE_X74Y89 Latch=AMUX Net=Result<4>
Bit 17671900 0x0040171f   2556 Block=SLICE_X74Y89 Latch=BQ Net=df/count<5>
Bit 17671905 0x0040171f   2561 Block=SLICE_X74Y89 Latch=CQ Net=df/count<6>
Bit 17671930 0x0040171f   2586 Block=SLICE_X74Y89 Latch=DQ Net=df/count<7>
Bit 17671939 0x0040171f   2595 Block=SLICE_X74Y90 Latch=AQ Net=df/count<8>
Bit 17671964 0x0040171f   2620 Block=SLICE_X74Y90 Latch=BQ Net=df/count<9>
Bit 17671969 0x0040171f   2625 Block=SLICE_X74Y90 Latch=CQ Net=df/count<10>
Bit 17671994 0x0040171f   2650 Block=SLICE_X74Y90 Latch=DQ Net=df/count<11>
Bit 17672003 0x0040171f   2659 Block=SLICE_X74Y91 Latch=AQ Net=df/count<12>
Bit 17672028 0x0040171f   2684 Block=SLICE_X74Y91 Latch=BQ Net=df/count<13>
Bit 17672033 0x0040171f   2689 Block=SLICE_X74Y91 Latch=CQ Net=df/count<14>
Bit 17672052 0x0040171f   2708 Block=SLICE_X75Y91 Latch=DMUX Net=df/count[31]_GND_5_o_equal_2_o<31>5
Bit 17672058 0x0040171f   2714 Block=SLICE_X74Y91 Latch=DQ Net=df/count<15>
Bit 17672059 0x0040171f   2715 Block=SLICE_X75Y91 Latch=DQ Net=df/count<4>
Bit 17672067 0x0040171f   2723 Block=SLICE_X74Y92 Latch=AQ Net=df/count<16>
Bit 17672092 0x0040171f   2748 Block=SLICE_X74Y92 Latch=BQ Net=df/count<17>
Bit 17672097 0x0040171f   2753 Block=SLICE_X74Y92 Latch=CQ Net=df/count<18>
Bit 17672122 0x0040171f   2778 Block=SLICE_X74Y92 Latch=DQ Net=df/count<19>
Bit 17672131 0x0040171f   2787 Block=SLICE_X74Y93 Latch=AQ Net=df/count<20>
Bit 17672156 0x0040171f   2812 Block=SLICE_X74Y93 Latch=BQ Net=df/count<21>
Bit 17672161 0x0040171f   2817 Block=SLICE_X74Y93 Latch=CQ Net=df/count<22>
Bit 17672186 0x0040171f   2842 Block=SLICE_X74Y93 Latch=DQ Net=df/count<23>
Bit 17672195 0x0040171f   2851 Block=SLICE_X74Y94 Latch=AQ Net=df/count<24>
Bit 17672220 0x0040171f   2876 Block=SLICE_X74Y94 Latch=BQ Net=df/count<25>
Bit 17672225 0x0040171f   2881 Block=SLICE_X74Y94 Latch=CQ Net=df/count<26>
Bit 17672250 0x0040171f   2906 Block=SLICE_X74Y94 Latch=DQ Net=df/count<27>
Bit 17672259 0x0040171f   2915 Block=SLICE_X74Y95 Latch=AQ Net=df/count<28>
Bit 17672284 0x0040171f   2940 Block=SLICE_X74Y95 Latch=BQ Net=df/count<29>
Bit 17672289 0x0040171f   2945 Block=SLICE_X74Y95 Latch=CQ Net=df/count<30>
Bit 17672314 0x0040171f   2970 Block=SLICE_X74Y95 Latch=DQ Net=df/count<31>
Bit 17788355 0x0040179f   2659 Block=SLICE_X76Y91 Latch=AQ Net=df/clkout
Bit 17788358 0x0040179f   2662 Block=SLICE_X76Y91 Latch=AMUX Net=df/clkout_rstpot
Bit 17992612 0x0040189f     68 Block=SLICE_X79Y51 Latch=AQ Net=fi/wr_reg<0>
Bit 17992637 0x0040189f     93 Block=SLICE_X79Y51 Latch=BQ Net=fi/wr_reg<1>
Bit 17992642 0x0040189f     98 Block=SLICE_X79Y51 Latch=CQ Net=fi/wr_reg<2>
Bit 17992667 0x0040189f    123 Block=SLICE_X79Y51 Latch=DQ Net=fi/wr_reg<3>
Bit 17992676 0x0040189f    132 Block=SLICE_X79Y52 Latch=AQ Net=fi/wr_reg<4>
Bit 17992701 0x0040189f    157 Block=SLICE_X79Y52 Latch=BQ Net=fi/wr_reg<5>
Bit 17992706 0x0040189f    162 Block=SLICE_X79Y52 Latch=CQ Net=fi/wr_reg<6>
Bit 17992731 0x0040189f    187 Block=SLICE_X79Y52 Latch=DQ Net=fi/wr_reg<7>
Bit 17992740 0x0040189f    196 Block=SLICE_X79Y53 Latch=AQ Net=fi/wr_reg<8>
Bit 17992765 0x0040189f    221 Block=SLICE_X79Y53 Latch=BQ Net=fi/wr_reg<9>
Bit 17992770 0x0040189f    226 Block=SLICE_X79Y53 Latch=CQ Net=fi/wr_reg<10>
Bit 17992795 0x0040189f    251 Block=SLICE_X79Y53 Latch=DQ Net=fi/wr_reg<11>
Bit 17992804 0x0040189f    260 Block=SLICE_X79Y54 Latch=AQ Net=fi/wr_reg<12>
Bit 17992829 0x0040189f    285 Block=SLICE_X79Y54 Latch=BQ Net=fi/wr_reg<13>
Bit 17992834 0x0040189f    290 Block=SLICE_X79Y54 Latch=CQ Net=fi/wr_reg<14>
Bit 17992859 0x0040189f    315 Block=SLICE_X79Y54 Latch=DQ Net=fi/wr_reg<15>
Bit 17992868 0x0040189f    324 Block=SLICE_X79Y55 Latch=AQ Net=fi/wr_reg<16>
Bit 17992893 0x0040189f    349 Block=SLICE_X79Y55 Latch=BQ Net=fi/wr_reg<17>
Bit 17992898 0x0040189f    354 Block=SLICE_X79Y55 Latch=CQ Net=fi/wr_reg<18>
Bit 17992923 0x0040189f    379 Block=SLICE_X79Y55 Latch=DQ Net=fi/wr_reg<19>
Bit 17992932 0x0040189f    388 Block=SLICE_X79Y56 Latch=AQ Net=fi/wr_reg<20>
Bit 17992957 0x0040189f    413 Block=SLICE_X79Y56 Latch=BQ Net=fi/wr_reg<21>
Bit 17992962 0x0040189f    418 Block=SLICE_X79Y56 Latch=CQ Net=fi/wr_reg<22>
Bit 17992987 0x0040189f    443 Block=SLICE_X79Y56 Latch=DQ Net=fi/wr_reg<23>
Bit 17992996 0x0040189f    452 Block=SLICE_X79Y57 Latch=AQ Net=fi/wr_reg<24>
Bit 17993021 0x0040189f    477 Block=SLICE_X79Y57 Latch=BQ Net=fi/wr_reg<25>
Bit 17993026 0x0040189f    482 Block=SLICE_X79Y57 Latch=CQ Net=fi/wr_reg<26>
Bit 17993051 0x0040189f    507 Block=SLICE_X79Y57 Latch=DQ Net=fi/wr_reg<27>
Bit 17993060 0x0040189f    516 Block=SLICE_X79Y58 Latch=AQ Net=fi/wr_reg<28>
Bit 17993085 0x0040189f    541 Block=SLICE_X79Y58 Latch=BQ Net=fi/wr_reg<29>
Bit 17993090 0x0040189f    546 Block=SLICE_X79Y58 Latch=CQ Net=fi/wr_reg<30>
Bit 17993115 0x0040189f    571 Block=SLICE_X79Y58 Latch=DQ Net=fi/wr_reg<31>
Bit 17993124 0x0040189f    580 Block=SLICE_X79Y59 Latch=AQ Net=fi/wr_reg<32>
Bit 17993149 0x0040189f    605 Block=SLICE_X79Y59 Latch=BQ Net=fi/wr_reg<33>
Bit 17993154 0x0040189f    610 Block=SLICE_X79Y59 Latch=CQ Net=fi/wr_reg<34>
Bit 17993179 0x0040189f    635 Block=SLICE_X79Y59 Latch=DQ Net=fi/wr_reg<35>
Bit 17993188 0x0040189f    644 Block=SLICE_X79Y60 Latch=AQ Net=fi/wr_reg<36>
Bit 17993213 0x0040189f    669 Block=SLICE_X79Y60 Latch=BQ Net=fi/wr_reg<37>
Bit 17993218 0x0040189f    674 Block=SLICE_X79Y60 Latch=CQ Net=fi/wr_reg<38>
Bit 17993243 0x0040189f    699 Block=SLICE_X79Y60 Latch=DQ Net=fi/wr_reg<39>
Bit 17993252 0x0040189f    708 Block=SLICE_X79Y61 Latch=AQ Net=fi/wr_reg<40>
Bit 17993277 0x0040189f    733 Block=SLICE_X79Y61 Latch=BQ Net=fi/wr_reg<41>
Bit 17993282 0x0040189f    738 Block=SLICE_X79Y61 Latch=CQ Net=fi/wr_reg<42>
Bit 17993307 0x0040189f    763 Block=SLICE_X79Y61 Latch=DQ Net=fi/wr_reg<43>
Bit 17993316 0x0040189f    772 Block=SLICE_X79Y62 Latch=AQ Net=fi/wr_reg<44>
Bit 17993341 0x0040189f    797 Block=SLICE_X79Y62 Latch=BQ Net=fi/wr_reg<45>
Bit 17993346 0x0040189f    802 Block=SLICE_X79Y62 Latch=CQ Net=fi/wr_reg<46>
Bit 17993371 0x0040189f    827 Block=SLICE_X79Y62 Latch=DQ Net=fi/wr_reg<47>
Bit 17993380 0x0040189f    836 Block=SLICE_X79Y63 Latch=AQ Net=fi/wr_reg<48>
Bit 17993405 0x0040189f    861 Block=SLICE_X79Y63 Latch=BQ Net=fi/wr_reg<49>
Bit 18108965 0x0040191f     69 Block=SLICE_X81Y51 Latch=AMUX Net=fi/wr_succ<0>
Bit 18108983 0x0040191f     87 Block=SLICE_X81Y51 Latch=BMUX Net=fi/wr_succ<1>
Bit 18109002 0x0040191f    106 Block=SLICE_X81Y51 Latch=CMUX Net=fi/wr_succ<2>
Bit 18109012 0x0040191f    116 Block=SLICE_X81Y51 Latch=DMUX Net=fi/wr_succ<3>
Bit 18109029 0x0040191f    133 Block=SLICE_X81Y52 Latch=AMUX Net=fi/wr_succ<4>
Bit 18109047 0x0040191f    151 Block=SLICE_X81Y52 Latch=BMUX Net=fi/wr_succ<5>
Bit 18109066 0x0040191f    170 Block=SLICE_X81Y52 Latch=CMUX Net=fi/wr_succ<6>
Bit 18109076 0x0040191f    180 Block=SLICE_X81Y52 Latch=DMUX Net=fi/wr_succ<7>
Bit 18109083 0x0040191f    187 Block=SLICE_X81Y52 Latch=DQ Net=fi/full_reg
Bit 18109093 0x0040191f    197 Block=SLICE_X81Y53 Latch=AMUX Net=fi/wr_succ<8>
Bit 18109111 0x0040191f    215 Block=SLICE_X81Y53 Latch=BMUX Net=fi/wr_succ<9>
Bit 18109130 0x0040191f    234 Block=SLICE_X81Y53 Latch=CMUX Net=fi/wr_succ<10>
Bit 18109140 0x0040191f    244 Block=SLICE_X81Y53 Latch=DMUX Net=fi/wr_succ<11>
Bit 18109157 0x0040191f    261 Block=SLICE_X81Y54 Latch=AMUX Net=fi/wr_succ<12>
Bit 18109175 0x0040191f    279 Block=SLICE_X81Y54 Latch=BMUX Net=fi/wr_succ<13>
Bit 18109194 0x0040191f    298 Block=SLICE_X81Y54 Latch=CMUX Net=fi/wr_succ<14>
Bit 18109204 0x0040191f    308 Block=SLICE_X81Y54 Latch=DMUX Net=fi/wr_succ<15>
Bit 18109221 0x0040191f    325 Block=SLICE_X81Y55 Latch=AMUX Net=fi/wr_succ<16>
Bit 18109239 0x0040191f    343 Block=SLICE_X81Y55 Latch=BMUX Net=fi/wr_succ<17>
Bit 18109258 0x0040191f    362 Block=SLICE_X81Y55 Latch=CMUX Net=fi/wr_succ<18>
Bit 18109268 0x0040191f    372 Block=SLICE_X81Y55 Latch=DMUX Net=fi/wr_succ<19>
Bit 18109285 0x0040191f    389 Block=SLICE_X81Y56 Latch=AMUX Net=fi/wr_succ<20>
Bit 18109303 0x0040191f    407 Block=SLICE_X81Y56 Latch=BMUX Net=fi/wr_succ<21>
Bit 18109322 0x0040191f    426 Block=SLICE_X81Y56 Latch=CMUX Net=fi/wr_succ<22>
Bit 18109332 0x0040191f    436 Block=SLICE_X81Y56 Latch=DMUX Net=fi/wr_succ<23>
Bit 18109349 0x0040191f    453 Block=SLICE_X81Y57 Latch=AMUX Net=fi/wr_succ<24>
Bit 18109367 0x0040191f    471 Block=SLICE_X81Y57 Latch=BMUX Net=fi/wr_succ<25>
Bit 18109386 0x0040191f    490 Block=SLICE_X81Y57 Latch=CMUX Net=fi/wr_succ<26>
Bit 18109396 0x0040191f    500 Block=SLICE_X81Y57 Latch=DMUX Net=fi/wr_succ<27>
Bit 18109413 0x0040191f    517 Block=SLICE_X81Y58 Latch=AMUX Net=fi/wr_succ<28>
Bit 18109414 0x0040191f    518 Block=SLICE_X80Y58 Latch=AMUX Net=fi/_n0112_inv
Bit 18109431 0x0040191f    535 Block=SLICE_X81Y58 Latch=BMUX Net=fi/wr_succ<29>
Bit 18109450 0x0040191f    554 Block=SLICE_X81Y58 Latch=CMUX Net=fi/wr_succ<30>
Bit 18109460 0x0040191f    564 Block=SLICE_X81Y58 Latch=DMUX Net=fi/wr_succ<31>
Bit 18109477 0x0040191f    581 Block=SLICE_X81Y59 Latch=AMUX Net=fi/wr_succ<32>
Bit 18109495 0x0040191f    599 Block=SLICE_X81Y59 Latch=BMUX Net=fi/wr_succ<33>
Bit 18109514 0x0040191f    618 Block=SLICE_X81Y59 Latch=CMUX Net=fi/wr_succ<34>
Bit 18109524 0x0040191f    628 Block=SLICE_X81Y59 Latch=DMUX Net=fi/wr_succ<35>
Bit 18109541 0x0040191f    645 Block=SLICE_X81Y60 Latch=AMUX Net=fi/wr_succ<36>
Bit 18109559 0x0040191f    663 Block=SLICE_X81Y60 Latch=BMUX Net=fi/wr_succ<37>
Bit 18109578 0x0040191f    682 Block=SLICE_X81Y60 Latch=CMUX Net=fi/wr_succ<38>
Bit 18109588 0x0040191f    692 Block=SLICE_X81Y60 Latch=DMUX Net=fi/wr_succ<39>
Bit 18109605 0x0040191f    709 Block=SLICE_X81Y61 Latch=AMUX Net=fi/wr_succ<40>
Bit 18109623 0x0040191f    727 Block=SLICE_X81Y61 Latch=BMUX Net=fi/wr_succ<41>
Bit 18109642 0x0040191f    746 Block=SLICE_X81Y61 Latch=CMUX Net=fi/wr_succ<42>
Bit 18109652 0x0040191f    756 Block=SLICE_X81Y61 Latch=DMUX Net=fi/wr_succ<43>
Bit 18109669 0x0040191f    773 Block=SLICE_X81Y62 Latch=AMUX Net=fi/wr_succ<44>
Bit 18109687 0x0040191f    791 Block=SLICE_X81Y62 Latch=BMUX Net=fi/wr_succ<45>
Bit 18109706 0x0040191f    810 Block=SLICE_X81Y62 Latch=CMUX Net=fi/wr_succ<46>
Bit 18109716 0x0040191f    820 Block=SLICE_X81Y62 Latch=DMUX Net=fi/wr_succ<47>
Bit 18109733 0x0040191f    837 Block=SLICE_X81Y63 Latch=AMUX Net=fi/wr_succ<48>
Bit 18109751 0x0040191f    855 Block=SLICE_X81Y63 Latch=BMUX Net=fi/wr_succ<49>
Bit 18664932 0x00401b9f    132 Block=SLICE_X89Y52 Latch=AQ Net=fi/dffw1
Bit 18664957 0x00401b9f    157 Block=SLICE_X89Y52 Latch=BQ Net=fi/dffw2
Bit 18664962 0x00401b9f    162 Block=SLICE_X89Y52 Latch=CQ Net=done_OBUF
Bit 18664979 0x00401b9f    179 Block=SLICE_X88Y52 Latch=DMUX Net=fi/_n0125
Bit 18664980 0x00401b9f    180 Block=SLICE_X89Y52 Latch=DMUX Net=done_rstpot
