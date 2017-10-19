Revision 3
; Created by bitgen P.20131013 at Tue Oct 17 19:57:42 2017
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
Bit   528320 0x0011001c      0 Block=OLOGIC_X12Y1 Type=DRP
Bit   528321 0x0011001c      1 Block=OLOGIC_X12Y1 Type=DRP
Bit   528322 0x0011001c      2 Block=OLOGIC_X12Y1 Type=DRP
Bit   528323 0x0011001c      3 Block=OLOGIC_X12Y1 Type=DRP
Bit   528324 0x0011001c      4 Block=OLOGIC_X12Y1 Type=DRP
Bit   528325 0x0011001c      5 Block=OLOGIC_X12Y1 Type=DRP
Bit   528326 0x0011001c      6 Block=OLOGIC_X12Y1 Type=DRP
Bit   528327 0x0011001c      7 Block=OLOGIC_X12Y1 Type=DRP
Bit   528328 0x0011001c      8 Block=OLOGIC_X12Y1 Type=DRP
Bit   528329 0x0011001c      9 Block=OLOGIC_X12Y1 Type=DRP
Bit   528330 0x0011001c     10 Block=OLOGIC_X12Y1 Type=DRP
Bit   528331 0x0011001c     11 Block=OLOGIC_X12Y1 Type=DRP
Bit   528332 0x0011001c     12 Block=OLOGIC_X12Y1 Type=DRP
Bit   528333 0x0011001c     13 Block=OLOGIC_X12Y1 Type=DRP
Bit   528334 0x0011001c     14 Block=OLOGIC_X12Y1 Type=DRP
Bit   528335 0x0011001c     15 Block=OLOGIC_X12Y1 Type=DRP
Bit   528336 0x0011001c     16 Block=OLOGIC_X12Y1 Type=DRP
Bit   528337 0x0011001c     17 Block=OLOGIC_X12Y1 Type=DRP
Bit   528338 0x0011001c     18 Block=OLOGIC_X12Y1 Type=DRP
Bit   528339 0x0011001c     19 Block=OLOGIC_X12Y1 Type=DRP
Bit   528340 0x0011001c     20 Block=OLOGIC_X12Y1 Type=DRP
Bit   528341 0x0011001c     21 Block=OLOGIC_X12Y1 Type=DRP
Bit   528342 0x0011001c     22 Block=OLOGIC_X12Y1 Type=DRP
Bit   528343 0x0011001c     23 Block=OLOGIC_X12Y1 Type=DRP
Bit   528344 0x0011001c     24 Block=OLOGIC_X12Y1 Type=DRP
Bit   528345 0x0011001c     25 Block=OLOGIC_X12Y1 Type=DRP
Bit   528346 0x0011001c     26 Block=OLOGIC_X12Y1 Type=DRP
Bit   528347 0x0011001c     27 Block=OLOGIC_X12Y1 Type=DRP
Bit   528351 0x0011001c     31 Block=OLOGIC_X12Y1 Type=DRP
Bit   528352 0x0011001c     32 Block=OLOGIC_X12Y1 Type=DRP
Bit   528356 0x0011001c     36 Block=OLOGIC_X12Y1 Type=DRP
Bit   528357 0x0011001c     37 Block=OLOGIC_X12Y1 Type=DRP
Bit   528358 0x0011001c     38 Block=OLOGIC_X12Y1 Type=DRP
Bit   528359 0x0011001c     39 Block=OLOGIC_X12Y1 Type=DRP
Bit   528360 0x0011001c     40 Block=OLOGIC_X12Y1 Type=DRP
Bit   528361 0x0011001c     41 Block=OLOGIC_X12Y1 Type=DRP
Bit   528362 0x0011001c     42 Block=OLOGIC_X12Y1 Type=DRP
Bit   528363 0x0011001c     43 Block=OLOGIC_X12Y1 Type=DRP
Bit   528364 0x0011001c     44 Block=OLOGIC_X12Y1 Type=DRP
Bit   528365 0x0011001c     45 Block=OLOGIC_X12Y1 Type=DRP
Bit   528366 0x0011001c     46 Block=OLOGIC_X12Y1 Type=DRP
Bit   528367 0x0011001c     47 Block=OLOGIC_X12Y1 Type=DRP
Bit   528368 0x0011001c     48 Block=OLOGIC_X12Y1 Type=DRP
Bit   528369 0x0011001c     49 Block=OLOGIC_X12Y1 Type=DRP
Bit   528370 0x0011001c     50 Block=OLOGIC_X12Y1 Type=DRP
Bit   528371 0x0011001c     51 Block=OLOGIC_X12Y1 Type=DRP
Bit   528372 0x0011001c     52 Block=OLOGIC_X12Y1 Type=DRP
Bit   528373 0x0011001c     53 Block=OLOGIC_X12Y1 Type=DRP
Bit   528374 0x0011001c     54 Block=OLOGIC_X12Y1 Type=DRP
Bit   528375 0x0011001c     55 Block=OLOGIC_X12Y1 Type=DRP
Bit   528376 0x0011001c     56 Block=OLOGIC_X12Y1 Type=DRP
Bit   528377 0x0011001c     57 Block=OLOGIC_X12Y1 Type=DRP
Bit   528378 0x0011001c     58 Block=OLOGIC_X12Y1 Type=DRP
Bit   528379 0x0011001c     59 Block=OLOGIC_X12Y1 Type=DRP
Bit   528380 0x0011001c     60 Block=OLOGIC_X12Y1 Type=DRP
Bit   528381 0x0011001c     61 Block=OLOGIC_X12Y1 Type=DRP
Bit   528382 0x0011001c     62 Block=OLOGIC_X12Y1 Type=DRP
Bit   528383 0x0011001c     63 Block=OLOGIC_X12Y1 Type=DRP
Bit   738464 0x0018001c     64 Block=OLOGIC_X17Y3 Type=DRP
Bit   738465 0x0018001c     65 Block=OLOGIC_X17Y3 Type=DRP
Bit   738466 0x0018001c     66 Block=OLOGIC_X17Y3 Type=DRP
Bit   738467 0x0018001c     67 Block=OLOGIC_X17Y3 Type=DRP
Bit   738468 0x0018001c     68 Block=OLOGIC_X17Y3 Type=DRP
Bit   738469 0x0018001c     69 Block=OLOGIC_X17Y3 Type=DRP
Bit   738470 0x0018001c     70 Block=OLOGIC_X17Y3 Type=DRP
Bit   738471 0x0018001c     71 Block=OLOGIC_X17Y3 Type=DRP
Bit   738472 0x0018001c     72 Block=OLOGIC_X17Y3 Type=DRP
Bit   738473 0x0018001c     73 Block=OLOGIC_X17Y3 Type=DRP
Bit   738474 0x0018001c     74 Block=OLOGIC_X17Y3 Type=DRP
Bit   738475 0x0018001c     75 Block=OLOGIC_X17Y3 Type=DRP
Bit   738476 0x0018001c     76 Block=OLOGIC_X17Y3 Type=DRP
Bit   738477 0x0018001c     77 Block=OLOGIC_X17Y3 Type=DRP
Bit   738478 0x0018001c     78 Block=OLOGIC_X17Y3 Type=DRP
Bit   738479 0x0018001c     79 Block=OLOGIC_X17Y3 Type=DRP
Bit   738480 0x0018001c     80 Block=OLOGIC_X17Y3 Type=DRP
Bit   738481 0x0018001c     81 Block=OLOGIC_X17Y3 Type=DRP
Bit   738482 0x0018001c     82 Block=OLOGIC_X17Y3 Type=DRP
Bit   738483 0x0018001c     83 Block=OLOGIC_X17Y3 Type=DRP
Bit   738484 0x0018001c     84 Block=OLOGIC_X17Y3 Type=DRP
Bit   738485 0x0018001c     85 Block=OLOGIC_X17Y3 Type=DRP
Bit   738486 0x0018001c     86 Block=OLOGIC_X17Y3 Type=DRP
Bit   738487 0x0018001c     87 Block=OLOGIC_X17Y3 Type=DRP
Bit   738488 0x0018001c     88 Block=OLOGIC_X17Y3 Type=DRP
Bit   738489 0x0018001c     89 Block=OLOGIC_X17Y3 Type=DRP
Bit   738490 0x0018001c     90 Block=OLOGIC_X17Y3 Type=DRP
Bit   738491 0x0018001c     91 Block=OLOGIC_X17Y3 Type=DRP
Bit   738495 0x0018001c     95 Block=OLOGIC_X17Y3 Type=DRP
Bit   738496 0x0018001c     96 Block=OLOGIC_X17Y3 Type=DRP
Bit   738500 0x0018001c    100 Block=OLOGIC_X17Y3 Type=DRP
Bit   738501 0x0018001c    101 Block=OLOGIC_X17Y3 Type=DRP
Bit   738502 0x0018001c    102 Block=OLOGIC_X17Y3 Type=DRP
Bit   738503 0x0018001c    103 Block=OLOGIC_X17Y3 Type=DRP
Bit   738504 0x0018001c    104 Block=OLOGIC_X17Y3 Type=DRP
Bit   738505 0x0018001c    105 Block=OLOGIC_X17Y3 Type=DRP
Bit   738506 0x0018001c    106 Block=OLOGIC_X17Y3 Type=DRP
Bit   738507 0x0018001c    107 Block=OLOGIC_X17Y3 Type=DRP
Bit   738508 0x0018001c    108 Block=OLOGIC_X17Y3 Type=DRP
Bit   738509 0x0018001c    109 Block=OLOGIC_X17Y3 Type=DRP
Bit   738510 0x0018001c    110 Block=OLOGIC_X17Y3 Type=DRP
Bit   738511 0x0018001c    111 Block=OLOGIC_X17Y3 Type=DRP
Bit   738512 0x0018001c    112 Block=OLOGIC_X17Y3 Type=DRP
Bit   738513 0x0018001c    113 Block=OLOGIC_X17Y3 Type=DRP
Bit   738514 0x0018001c    114 Block=OLOGIC_X17Y3 Type=DRP
Bit   738515 0x0018001c    115 Block=OLOGIC_X17Y3 Type=DRP
Bit   738516 0x0018001c    116 Block=OLOGIC_X17Y3 Type=DRP
Bit   738517 0x0018001c    117 Block=OLOGIC_X17Y3 Type=DRP
Bit   738518 0x0018001c    118 Block=OLOGIC_X17Y3 Type=DRP
Bit   738519 0x0018001c    119 Block=OLOGIC_X17Y3 Type=DRP
Bit   738520 0x0018001c    120 Block=OLOGIC_X17Y3 Type=DRP
Bit   738521 0x0018001c    121 Block=OLOGIC_X17Y3 Type=DRP
Bit   738522 0x0018001c    122 Block=OLOGIC_X17Y3 Type=DRP
Bit   738523 0x0018001c    123 Block=OLOGIC_X17Y3 Type=DRP
Bit   738524 0x0018001c    124 Block=OLOGIC_X17Y3 Type=DRP
Bit   738525 0x0018001c    125 Block=OLOGIC_X17Y3 Type=DRP
Bit   738526 0x0018001c    126 Block=OLOGIC_X17Y3 Type=DRP
Bit   738527 0x0018001c    127 Block=OLOGIC_X17Y3 Type=DRP
