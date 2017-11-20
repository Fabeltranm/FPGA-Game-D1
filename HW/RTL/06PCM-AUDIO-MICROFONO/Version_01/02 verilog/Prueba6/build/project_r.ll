Revision 3
; Created by bitgen P.20131013 at Fri Nov 17 10:45:07 2017
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
Bit  3519843 0x00000f1f    195 Block=SLICE_X50Y103 Latch=AQ Net=df/clkout
Bit  3520739 0x00000f1f   1091 Block=SLICE_X50Y117 Latch=AQ Net=df/count<0>
Bit  3520764 0x00000f1f   1116 Block=SLICE_X50Y117 Latch=BQ Net=df/count<1>
Bit  3520769 0x00000f1f   1121 Block=SLICE_X50Y117 Latch=CQ Net=df/count<2>
Bit  3520794 0x00000f1f   1146 Block=SLICE_X50Y117 Latch=DQ Net=df/count<3>
Bit  3520804 0x00000f1f   1156 Block=SLICE_X51Y118 Latch=AQ Net=df/count<4>
Bit  3520806 0x00000f1f   1158 Block=SLICE_X50Y118 Latch=AMUX Net=Result<4>
Bit 17552995 0x0040169f      3 Block=SLICE_X72Y50 Latch=AQ Net=fi/dffr2
Bit 17669348 0x0040171f      4 Block=SLICE_X75Y50 Latch=AQ Net=fi/dffw2
Bit 17669349 0x0040171f      5 Block=SLICE_X75Y50 Latch=AMUX Net=fi/_n0085_inv
Bit 17669366 0x0040171f     22 Block=SLICE_X74Y50 Latch=BMUX Net=fi/_n0096_inv
Bit 17669372 0x0040171f     28 Block=SLICE_X74Y50 Latch=BQ Net=fi/empty_reg
Bit 17785699 0x0040179f      3 Block=SLICE_X76Y50 Latch=AQ Net=fi/rd_reg<0>
Bit 17785701 0x0040179f      5 Block=SLICE_X77Y50 Latch=AMUX Net=fi/rd_succ<0>
Bit 17785719 0x0040179f     23 Block=SLICE_X77Y50 Latch=BMUX Net=fi/rd_succ<1>
Bit 17785724 0x0040179f     28 Block=SLICE_X76Y50 Latch=BQ Net=fi/rd_reg<1>
Bit 17785729 0x0040179f     33 Block=SLICE_X76Y50 Latch=CQ Net=fi/rd_reg<2>
Bit 17785738 0x0040179f     42 Block=SLICE_X77Y50 Latch=CMUX Net=fi/rd_succ<2>
Bit 17785748 0x0040179f     52 Block=SLICE_X77Y50 Latch=DMUX Net=fi/rd_succ<3>
Bit 17785754 0x0040179f     58 Block=SLICE_X76Y50 Latch=DQ Net=fi/rd_reg<3>
Bit 17785763 0x0040179f     67 Block=SLICE_X76Y51 Latch=AQ Net=fi/rd_reg<4>
Bit 17785765 0x0040179f     69 Block=SLICE_X77Y51 Latch=AMUX Net=fi/rd_succ<4>
Bit 17785783 0x0040179f     87 Block=SLICE_X77Y51 Latch=BMUX Net=fi/rd_succ<5>
Bit 17785788 0x0040179f     92 Block=SLICE_X76Y51 Latch=BQ Net=fi/rd_reg<5>
Bit 17785793 0x0040179f     97 Block=SLICE_X76Y51 Latch=CQ Net=fi/rd_reg<6>
Bit 17785802 0x0040179f    106 Block=SLICE_X77Y51 Latch=CMUX Net=fi/rd_succ<6>
Bit 17785812 0x0040179f    116 Block=SLICE_X77Y51 Latch=DMUX Net=fi/rd_succ<7>
Bit 17785818 0x0040179f    122 Block=SLICE_X76Y51 Latch=DQ Net=fi/rd_reg<7>
Bit 17785827 0x0040179f    131 Block=SLICE_X76Y52 Latch=AQ Net=fi/rd_reg<8>
Bit 17785829 0x0040179f    133 Block=SLICE_X77Y52 Latch=AMUX Net=fi/rd_succ<8>
Bit 17785847 0x0040179f    151 Block=SLICE_X77Y52 Latch=BMUX Net=fi/rd_succ<9>
Bit 17785852 0x0040179f    156 Block=SLICE_X76Y52 Latch=BQ Net=fi/rd_reg<9>
Bit 17785857 0x0040179f    161 Block=SLICE_X76Y52 Latch=CQ Net=fi/rd_reg<10>
Bit 17785866 0x0040179f    170 Block=SLICE_X77Y52 Latch=CMUX Net=fi/rd_succ<10>
Bit 17785876 0x0040179f    180 Block=SLICE_X77Y52 Latch=DMUX Net=fi/rd_succ<11>
Bit 17785882 0x0040179f    186 Block=SLICE_X76Y52 Latch=DQ Net=fi/rd_reg<11>
Bit 17785891 0x0040179f    195 Block=SLICE_X76Y53 Latch=AQ Net=fi/rd_reg<12>
Bit 17785893 0x0040179f    197 Block=SLICE_X77Y53 Latch=AMUX Net=fi/rd_succ<12>
Bit 17785911 0x0040179f    215 Block=SLICE_X77Y53 Latch=BMUX Net=fi/rd_succ<13>
Bit 17785916 0x0040179f    220 Block=SLICE_X76Y53 Latch=BQ Net=fi/rd_reg<13>
Bit 17785921 0x0040179f    225 Block=SLICE_X76Y53 Latch=CQ Net=fi/rd_reg<14>
Bit 17785930 0x0040179f    234 Block=SLICE_X77Y53 Latch=CMUX Net=fi/rd_succ<14>
Bit 17785940 0x0040179f    244 Block=SLICE_X77Y53 Latch=DMUX Net=fi/rd_succ<15>
Bit 17785946 0x0040179f    250 Block=SLICE_X76Y53 Latch=DQ Net=fi/rd_reg<15>
Bit 17785955 0x0040179f    259 Block=SLICE_X76Y54 Latch=AQ Net=fi/rd_reg<16>
Bit 17785957 0x0040179f    261 Block=SLICE_X77Y54 Latch=AMUX Net=fi/rd_succ<16>
Bit 17785975 0x0040179f    279 Block=SLICE_X77Y54 Latch=BMUX Net=fi/rd_succ<17>
Bit 17785980 0x0040179f    284 Block=SLICE_X76Y54 Latch=BQ Net=fi/rd_reg<17>
Bit 17785985 0x0040179f    289 Block=SLICE_X76Y54 Latch=CQ Net=fi/rd_reg<18>
Bit 17785994 0x0040179f    298 Block=SLICE_X77Y54 Latch=CMUX Net=fi/rd_succ<18>
Bit 17786004 0x0040179f    308 Block=SLICE_X77Y54 Latch=DMUX Net=fi/rd_succ<19>
Bit 17786010 0x0040179f    314 Block=SLICE_X76Y54 Latch=DQ Net=fi/rd_reg<19>
Bit 17786019 0x0040179f    323 Block=SLICE_X76Y55 Latch=AQ Net=fi/rd_reg<20>
Bit 17786021 0x0040179f    325 Block=SLICE_X77Y55 Latch=AMUX Net=fi/rd_succ<20>
Bit 17786039 0x0040179f    343 Block=SLICE_X77Y55 Latch=BMUX Net=fi/rd_succ<21>
Bit 17786044 0x0040179f    348 Block=SLICE_X76Y55 Latch=BQ Net=fi/rd_reg<21>
Bit 17786049 0x0040179f    353 Block=SLICE_X76Y55 Latch=CQ Net=fi/rd_reg<22>
Bit 17786058 0x0040179f    362 Block=SLICE_X77Y55 Latch=CMUX Net=fi/rd_succ<22>
Bit 17786068 0x0040179f    372 Block=SLICE_X77Y55 Latch=DMUX Net=fi/rd_succ<23>
Bit 17786074 0x0040179f    378 Block=SLICE_X76Y55 Latch=DQ Net=fi/rd_reg<23>
Bit 17786083 0x0040179f    387 Block=SLICE_X76Y56 Latch=AQ Net=fi/rd_reg<24>
Bit 17786085 0x0040179f    389 Block=SLICE_X77Y56 Latch=AMUX Net=fi/rd_succ<24>
Bit 17786103 0x0040179f    407 Block=SLICE_X77Y56 Latch=BMUX Net=fi/rd_succ<25>
Bit 17786108 0x0040179f    412 Block=SLICE_X76Y56 Latch=BQ Net=fi/rd_reg<25>
Bit 17786113 0x0040179f    417 Block=SLICE_X76Y56 Latch=CQ Net=fi/rd_reg<26>
Bit 17786122 0x0040179f    426 Block=SLICE_X77Y56 Latch=CMUX Net=fi/rd_succ<26>
Bit 17786132 0x0040179f    436 Block=SLICE_X77Y56 Latch=DMUX Net=fi/rd_succ<27>
Bit 17786138 0x0040179f    442 Block=SLICE_X76Y56 Latch=DQ Net=fi/rd_reg<27>
Bit 17786147 0x0040179f    451 Block=SLICE_X76Y57 Latch=AQ Net=fi/rd_reg<28>
Bit 17786149 0x0040179f    453 Block=SLICE_X77Y57 Latch=AMUX Net=fi/rd_succ<28>
Bit 17786167 0x0040179f    471 Block=SLICE_X77Y57 Latch=BMUX Net=fi/rd_succ<29>
Bit 17786172 0x0040179f    476 Block=SLICE_X76Y57 Latch=BQ Net=fi/rd_reg<29>
Bit 17786177 0x0040179f    481 Block=SLICE_X76Y57 Latch=CQ Net=fi/rd_reg<30>
Bit 17786186 0x0040179f    490 Block=SLICE_X77Y57 Latch=CMUX Net=fi/rd_succ<30>
Bit 17786196 0x0040179f    500 Block=SLICE_X77Y57 Latch=DMUX Net=fi/rd_succ<31>
Bit 17786202 0x0040179f    506 Block=SLICE_X76Y57 Latch=DQ Net=fi/rd_reg<31>
Bit 17786211 0x0040179f    515 Block=SLICE_X76Y58 Latch=AQ Net=fi/rd_reg<32>
Bit 17786213 0x0040179f    517 Block=SLICE_X77Y58 Latch=AMUX Net=fi/rd_succ<32>
Bit 17786231 0x0040179f    535 Block=SLICE_X77Y58 Latch=BMUX Net=fi/rd_succ<33>
Bit 17786236 0x0040179f    540 Block=SLICE_X76Y58 Latch=BQ Net=fi/rd_reg<33>
Bit 17786241 0x0040179f    545 Block=SLICE_X76Y58 Latch=CQ Net=fi/rd_reg<34>
Bit 17786250 0x0040179f    554 Block=SLICE_X77Y58 Latch=CMUX Net=fi/rd_succ<34>
Bit 17786260 0x0040179f    564 Block=SLICE_X77Y58 Latch=DMUX Net=fi/rd_succ<35>
Bit 17786266 0x0040179f    570 Block=SLICE_X76Y58 Latch=DQ Net=fi/rd_reg<35>
Bit 17786275 0x0040179f    579 Block=SLICE_X76Y59 Latch=AQ Net=fi/rd_reg<36>
Bit 17786277 0x0040179f    581 Block=SLICE_X77Y59 Latch=AMUX Net=fi/rd_succ<36>
Bit 17786295 0x0040179f    599 Block=SLICE_X77Y59 Latch=BMUX Net=fi/rd_succ<37>
Bit 17786300 0x0040179f    604 Block=SLICE_X76Y59 Latch=BQ Net=fi/rd_reg<37>
Bit 17992548 0x0040189f      4 Block=SLICE_X79Y50 Latch=AQ Net=fi/wr_reg<0>
Bit 17992573 0x0040189f     29 Block=SLICE_X79Y50 Latch=BQ Net=fi/wr_reg<1>
Bit 17992578 0x0040189f     34 Block=SLICE_X79Y50 Latch=CQ Net=fi/wr_reg<2>
Bit 17992603 0x0040189f     59 Block=SLICE_X79Y50 Latch=DQ Net=fi/wr_reg<3>
Bit 17992612 0x0040189f     68 Block=SLICE_X79Y51 Latch=AQ Net=fi/wr_reg<4>
Bit 17992637 0x0040189f     93 Block=SLICE_X79Y51 Latch=BQ Net=fi/wr_reg<5>
Bit 17992642 0x0040189f     98 Block=SLICE_X79Y51 Latch=CQ Net=fi/wr_reg<6>
Bit 17992667 0x0040189f    123 Block=SLICE_X79Y51 Latch=DQ Net=fi/wr_reg<7>
Bit 17992676 0x0040189f    132 Block=SLICE_X79Y52 Latch=AQ Net=fi/wr_reg<8>
Bit 17992701 0x0040189f    157 Block=SLICE_X79Y52 Latch=BQ Net=fi/wr_reg<9>
Bit 17992706 0x0040189f    162 Block=SLICE_X79Y52 Latch=CQ Net=fi/wr_reg<10>
Bit 17992731 0x0040189f    187 Block=SLICE_X79Y52 Latch=DQ Net=fi/wr_reg<11>
Bit 17992740 0x0040189f    196 Block=SLICE_X79Y53 Latch=AQ Net=fi/wr_reg<12>
Bit 17992765 0x0040189f    221 Block=SLICE_X79Y53 Latch=BQ Net=fi/wr_reg<13>
Bit 17992770 0x0040189f    226 Block=SLICE_X79Y53 Latch=CQ Net=fi/wr_reg<14>
Bit 17992795 0x0040189f    251 Block=SLICE_X79Y53 Latch=DQ Net=fi/wr_reg<15>
Bit 17992804 0x0040189f    260 Block=SLICE_X79Y54 Latch=AQ Net=fi/wr_reg<16>
Bit 17992829 0x0040189f    285 Block=SLICE_X79Y54 Latch=BQ Net=fi/wr_reg<17>
Bit 17992834 0x0040189f    290 Block=SLICE_X79Y54 Latch=CQ Net=fi/wr_reg<18>
Bit 17992859 0x0040189f    315 Block=SLICE_X79Y54 Latch=DQ Net=fi/wr_reg<19>
Bit 17992868 0x0040189f    324 Block=SLICE_X79Y55 Latch=AQ Net=fi/wr_reg<20>
Bit 17992893 0x0040189f    349 Block=SLICE_X79Y55 Latch=BQ Net=fi/wr_reg<21>
Bit 17992898 0x0040189f    354 Block=SLICE_X79Y55 Latch=CQ Net=fi/wr_reg<22>
Bit 17992923 0x0040189f    379 Block=SLICE_X79Y55 Latch=DQ Net=fi/wr_reg<23>
Bit 17992932 0x0040189f    388 Block=SLICE_X79Y56 Latch=AQ Net=fi/wr_reg<24>
Bit 17992957 0x0040189f    413 Block=SLICE_X79Y56 Latch=BQ Net=fi/wr_reg<25>
Bit 17992962 0x0040189f    418 Block=SLICE_X79Y56 Latch=CQ Net=fi/wr_reg<26>
Bit 17992987 0x0040189f    443 Block=SLICE_X79Y56 Latch=DQ Net=fi/wr_reg<27>
Bit 17992996 0x0040189f    452 Block=SLICE_X79Y57 Latch=AQ Net=fi/wr_reg<28>
Bit 17992998 0x0040189f    454 Block=SLICE_X78Y57 Latch=AMUX Net=fi/_n0066
Bit 17993021 0x0040189f    477 Block=SLICE_X79Y57 Latch=BQ Net=fi/wr_reg<29>
Bit 17993026 0x0040189f    482 Block=SLICE_X79Y57 Latch=CQ Net=fi/wr_reg<30>
Bit 17993051 0x0040189f    507 Block=SLICE_X79Y57 Latch=DQ Net=fi/wr_reg<31>
Bit 17993060 0x0040189f    516 Block=SLICE_X79Y58 Latch=AQ Net=fi/wr_reg<32>
Bit 17993085 0x0040189f    541 Block=SLICE_X79Y58 Latch=BQ Net=fi/wr_reg<33>
Bit 17993090 0x0040189f    546 Block=SLICE_X79Y58 Latch=CQ Net=fi/wr_reg<34>
Bit 17993115 0x0040189f    571 Block=SLICE_X79Y58 Latch=DQ Net=fi/wr_reg<35>
Bit 17993124 0x0040189f    580 Block=SLICE_X79Y59 Latch=AQ Net=fi/wr_reg<36>
Bit 17993149 0x0040189f    605 Block=SLICE_X79Y59 Latch=BQ Net=fi/wr_reg<37>
Bit 18108902 0x0040191f      6 Block=SLICE_X80Y50 Latch=AMUX Net=fi/wr_succ<0>
Bit 18108918 0x0040191f     22 Block=SLICE_X80Y50 Latch=BMUX Net=fi/wr_succ<1>
Bit 18108937 0x0040191f     41 Block=SLICE_X80Y50 Latch=CMUX Net=fi/wr_succ<2>
Bit 18108947 0x0040191f     51 Block=SLICE_X80Y50 Latch=DMUX Net=fi/wr_succ<3>
Bit 18108966 0x0040191f     70 Block=SLICE_X80Y51 Latch=AMUX Net=fi/wr_succ<4>
Bit 18108982 0x0040191f     86 Block=SLICE_X80Y51 Latch=BMUX Net=fi/wr_succ<5>
Bit 18109001 0x0040191f    105 Block=SLICE_X80Y51 Latch=CMUX Net=fi/wr_succ<6>
Bit 18109011 0x0040191f    115 Block=SLICE_X80Y51 Latch=DMUX Net=fi/wr_succ<7>
Bit 18109018 0x0040191f    122 Block=SLICE_X80Y51 Latch=DQ Net=fi/full_reg
Bit 18109030 0x0040191f    134 Block=SLICE_X80Y52 Latch=AMUX Net=fi/wr_succ<8>
Bit 18109046 0x0040191f    150 Block=SLICE_X80Y52 Latch=BMUX Net=fi/wr_succ<9>
Bit 18109065 0x0040191f    169 Block=SLICE_X80Y52 Latch=CMUX Net=fi/wr_succ<10>
Bit 18109075 0x0040191f    179 Block=SLICE_X80Y52 Latch=DMUX Net=fi/wr_succ<11>
Bit 18109094 0x0040191f    198 Block=SLICE_X80Y53 Latch=AMUX Net=fi/wr_succ<12>
Bit 18109110 0x0040191f    214 Block=SLICE_X80Y53 Latch=BMUX Net=fi/wr_succ<13>
Bit 18109129 0x0040191f    233 Block=SLICE_X80Y53 Latch=CMUX Net=fi/wr_succ<14>
Bit 18109139 0x0040191f    243 Block=SLICE_X80Y53 Latch=DMUX Net=fi/wr_succ<15>
Bit 18109158 0x0040191f    262 Block=SLICE_X80Y54 Latch=AMUX Net=fi/wr_succ<16>
Bit 18109174 0x0040191f    278 Block=SLICE_X80Y54 Latch=BMUX Net=fi/wr_succ<17>
Bit 18109193 0x0040191f    297 Block=SLICE_X80Y54 Latch=CMUX Net=fi/wr_succ<18>
Bit 18109203 0x0040191f    307 Block=SLICE_X80Y54 Latch=DMUX Net=fi/wr_succ<19>
Bit 18109222 0x0040191f    326 Block=SLICE_X80Y55 Latch=AMUX Net=fi/wr_succ<20>
Bit 18109238 0x0040191f    342 Block=SLICE_X80Y55 Latch=BMUX Net=fi/wr_succ<21>
Bit 18109257 0x0040191f    361 Block=SLICE_X80Y55 Latch=CMUX Net=fi/wr_succ<22>
Bit 18109267 0x0040191f    371 Block=SLICE_X80Y55 Latch=DMUX Net=fi/wr_succ<23>
Bit 18109286 0x0040191f    390 Block=SLICE_X80Y56 Latch=AMUX Net=fi/wr_succ<24>
Bit 18109302 0x0040191f    406 Block=SLICE_X80Y56 Latch=BMUX Net=fi/wr_succ<25>
Bit 18109321 0x0040191f    425 Block=SLICE_X80Y56 Latch=CMUX Net=fi/wr_succ<26>
Bit 18109331 0x0040191f    435 Block=SLICE_X80Y56 Latch=DMUX Net=fi/wr_succ<27>
Bit 18109350 0x0040191f    454 Block=SLICE_X80Y57 Latch=AMUX Net=fi/wr_succ<28>
Bit 18109366 0x0040191f    470 Block=SLICE_X80Y57 Latch=BMUX Net=fi/wr_succ<29>
Bit 18109385 0x0040191f    489 Block=SLICE_X80Y57 Latch=CMUX Net=fi/wr_succ<30>
Bit 18109395 0x0040191f    499 Block=SLICE_X80Y57 Latch=DMUX Net=fi/wr_succ<31>
Bit 18109414 0x0040191f    518 Block=SLICE_X80Y58 Latch=AMUX Net=fi/wr_succ<32>
Bit 18109430 0x0040191f    534 Block=SLICE_X80Y58 Latch=BMUX Net=fi/wr_succ<33>
Bit 18109449 0x0040191f    553 Block=SLICE_X80Y58 Latch=CMUX Net=fi/wr_succ<34>
Bit 18109459 0x0040191f    563 Block=SLICE_X80Y58 Latch=DMUX Net=fi/wr_succ<35>
Bit 18109478 0x0040191f    582 Block=SLICE_X80Y59 Latch=AMUX Net=fi/wr_succ<36>
Bit 18109494 0x0040191f    598 Block=SLICE_X80Y59 Latch=BMUX Net=fi/wr_succ<37>
