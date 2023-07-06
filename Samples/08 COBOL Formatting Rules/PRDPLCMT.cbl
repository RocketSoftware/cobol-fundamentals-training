000100 IDENTIFICATION DIVISION.                                         PRDPLCMT
000200 PROGRAM-ID. PRDPLCMT.                                            PRDPLCMT
000300                                                                  PRDPLCMT
000400* COPYRIGHT © 2023 OPEN TEXT.                                     PRDPLCMT
000500                                                                  PRDPLCMT
000600* THE ONLY WARRANTIES FOR PRODUCTS AND SERVICES OF OPEN TEXT AND  PRDPLCMT
000700* ITS AFFILIATES AND LICENSORS ("OPEN TEXT") ARE AS MAY BE SET    PRDPLCMT
000800* FORTH IN THE EXPRESS WARRANTY STATEMENTS ACCOMPANYING SUCH      PRDPLCMT
000900* PRODUCTS AND SERVICES. NOTHING HEREIN SHOULD BE CONSTRUED AS    PRDPLCMT
001000* CONSTITUTING AN ADDITIONAL WARRANTY. OPEN TEXT SHALL NOT BE     PRDPLCMT
001100* LIABLE FOR TECHNICAL OR EDITORIAL ERRORS OR OMISSIONS CONTAINED PRDPLCMT
001200* HEREIN. THE INFORMATION CONTAINED HEREIN IS SUBJECT TO CHANGE   PRDPLCMT
001300* WITHOUT NOTICE.                                                 PRDPLCMT
001400                                                                  PRDPLCMT
001500 DATA DIVISION.                                                   PRDPLCMT
001600 WORKING-STORAGE SECTION.                                         PRDPLCMT
001700 01  MY-VARIABLE PIC 9 VALUE 0.                                   PRDPLCMT
001800                                                                  PRDPLCMT
001900 PROCEDURE DIVISION.                                              PRDPLCMT
002000 100-PROG.                                                        PRDPLCMT
002100     PERFORM DISPLAY-THEN-INCREMENT                               PRDPLCMT
002200     PERFORM VERIFY-NUMERIC-VARIABLE                              PRDPLCMT
002300     STOP RUN                                                     PRDPLCMT
002400     .                                                            PRDPLCMT
002500                                                                  PRDPLCMT
002600 DISPLAY-THEN-INCREMENT SECTION.                                  PRDPLCMT
002700 200-ONE-SENTENCE.                                                PRDPLCMT
002800     DISPLAY MY-VARIABLE                                          PRDPLCMT
002900     ADD 1 TO MY-VARIABLE                                         PRDPLCMT
003000     .                                                            PRDPLCMT
003100 300-TWO-SENTENCES.                                               PRDPLCMT
003200     DISPLAY MY-VARIABLE.                                         PRDPLCMT
003300     ADD 1 TO MY-VARIABLE.                                        PRDPLCMT
003400                                                                  PRDPLCMT
003500 VERIFY-NUMERIC-VARIABLE SECTION.                                 PRDPLCMT
003600 400-GOOD.                                                        PRDPLCMT
003700     IF MY-VARIABLE IS NOT NUMERIC                                PRDPLCMT
003800         DISPLAY MY-VARIABLE                                      PRDPLCMT
003900         DISPLAY 'CANNOT INCREMENT NON-NUMERIC VARIABLE.'         PRDPLCMT
004000     .                                                            PRDPLCMT
004100 500-BAD.                                                         PRDPLCMT
004200     IF MY-VARIABLE IS NOT NUMERIC                                PRDPLCMT
004300         DISPLAY MY-VARIABLE.                                     PRDPLCMT
004400         DISPLAY 'CANNOT INCREMENT NON-NUMERIC VARIABLE.'.        PRDPLCMT
004500                                                                  PRDPLCMT