000100 IDENTIFICATION DIVISION.                                         PRDPLCMT
000200 PROGRAM-ID. PRDPLCMT.                                            PRDPLCMT
000300                                                                  PRDPLCMT
000400* © 2023-2025 ROCKET SOFTWARE, INC. OR ITS AFFILIATES.            PRDPLCMT
000500* ALL RIGHTS RESERVED.                                            PRDPLCMT
000600                                                                  PRDPLCMT
000700 DATA DIVISION.                                                   PRDPLCMT
000800 WORKING-STORAGE SECTION.                                         PRDPLCMT
000900 01  MY-VARIABLE PIC 9 VALUE 0.                                   PRDPLCMT
001000                                                                  PRDPLCMT
001100 PROCEDURE DIVISION.                                              PRDPLCMT
001200 100-PROG.                                                        PRDPLCMT
001300     PERFORM DISPLAY-THEN-INCREMENT                               PRDPLCMT
001400     PERFORM VERIFY-NUMERIC-VARIABLE                              PRDPLCMT
001500     STOP RUN                                                     PRDPLCMT
001600     .                                                            PRDPLCMT
001700                                                                  PRDPLCMT
001800 DISPLAY-THEN-INCREMENT SECTION.                                  PRDPLCMT
001900 200-ONE-SENTENCE.                                                PRDPLCMT
002000     DISPLAY MY-VARIABLE                                          PRDPLCMT
002100     ADD 1 TO MY-VARIABLE                                         PRDPLCMT
002200     .                                                            PRDPLCMT
002300 300-TWO-SENTENCES.                                               PRDPLCMT
002400     DISPLAY MY-VARIABLE.                                         PRDPLCMT
002500     ADD 1 TO MY-VARIABLE.                                        PRDPLCMT
002600                                                                  PRDPLCMT
002700 VERIFY-NUMERIC-VARIABLE SECTION.                                 PRDPLCMT
002800 400-GOOD.                                                        PRDPLCMT
002900     IF MY-VARIABLE IS NOT NUMERIC                                PRDPLCMT
003000         DISPLAY MY-VARIABLE                                      PRDPLCMT
003100         DISPLAY 'CANNOT INCREMENT NON-NUMERIC VARIABLE.'         PRDPLCMT
003200     .                                                            PRDPLCMT
003300 500-BAD.                                                         PRDPLCMT
003400     IF MY-VARIABLE IS NOT NUMERIC                                PRDPLCMT
003500         DISPLAY MY-VARIABLE.                                     PRDPLCMT
003600         DISPLAY 'CANNOT INCREMENT NON-NUMERIC VARIABLE.'.        PRDPLCMT
003700                                                                  PRDPLCMT