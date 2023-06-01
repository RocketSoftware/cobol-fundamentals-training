000010*This is a comment, it is ignored by the compiler.                BIRDSPOT
000020 IDENTIFICATION DIVISION.                                         BIRDSPOT
000030 PROGRAM-ID. BIRDSPOT.                                            BIRDSPOT
000040 AUTHOR. ANGELA LUKIC.                                            BIRDSPOT
000050                                                                  BIRDSPOT
000060 ENVIRONMENT DIVISION.                                            BIRDSPOT
000070 INPUT-OUTPUT SECTION.                                            BIRDSPOT
000080 FILE-CONTROL.                                                    BIRDSPOT
000090     SELECT BIRD-SPOTTING-DATA ASSIGN 'BIRD-SPOTTING-DATA.TXT'    BIRDSPOT
000100     ORGANIZATION LINE SEQUENTIAL                                 BIRDSPOT
000110     FILE STATUS FILE-STATUS-CODE.                                BIRDSPOT
000120                                                                  BIRDSPOT
000130 DATA DIVISION.                                                   BIRDSPOT
000140 FILE SECTION.                                                    BIRDSPOT
000150 FD  BIRD-SPOTTING-DATA.                                          BIRDSPOT
000160 01  BIRD-SPOTTING-RECORD.                                        BIRDSPOT
000170     05  WS-DATE.                                                 BIRDSPOT
000180         10  WS-DAY          PIC 9(2).                            BIRDSPOT
000190         10  FILLER          PIC X.                               BIRDSPOT
000200         10  MONTH           PIC 9(2).                            BIRDSPOT
000210         10  FILLER          PIC X.                               BIRDSPOT
000220         10  YEAR            PIC 9(4).                            BIRDSPOT
000230         10  FILLER          PIC X(2).                            BIRDSPOT
000240     05  WS-NAME.                                                 BIRDSPOT
000250         10  COMMON-NAME     PIC X(16).                           BIRDSPOT
000260         10  SCIENTIFIC-NAME PIC X(24).                           BIRDSPOT
000270     05  BIRD-COUNT          PIC 9(4).                            BIRDSPOT
000280                                                                  BIRDSPOT
000290 WORKING-STORAGE SECTION.                                         BIRDSPOT
000300 01  FILE-STATUS             PIC 9 VALUE 1.                       BIRDSPOT
000310     88  END-OF-FILE         VALUE 0.                             BIRDSPOT
000320     88  NOT-END-OF-FILE     VALUE 1.                             BIRDSPOT
000330 01  FILE-STATUS-CODE.                                            BIRDSPOT
000340     05  STATUS-KEY-1        PIC X.                               BIRDSPOT
000350     05  STATUS-KEY-2        PIC X.                               BIRDSPOT
000360                                                                  BIRDSPOT
000370 PROCEDURE DIVISION.                                              BIRDSPOT
000380 100-PROGRAM.                                                     BIRDSPOT
000390     PERFORM READ-DATA                                            BIRDSPOT
000400     PERFORM 500-OPEN-FILE THRU 800-CLOSE-FILE                    BIRDSPOT
000410     GO TO 900-CHECK-STATUS-CODE                                  BIRDSPOT
000420     .                                                            BIRDSPOT
000430                                                                  BIRDSPOT
000440 READ-DATA SECTION.                                               BIRDSPOT
000450 200-OPEN-FILE.                                                   BIRDSPOT
000460     OPEN INPUT BIRD-SPOTTING-DATA                                BIRDSPOT
000470     PERFORM CHECK-FILE-STATUS-CODE                               BIRDSPOT
000480     SET NOT-END-OF-FILE TO TRUE                                  BIRDSPOT
000490     .                                                            BIRDSPOT
000500 300-READ-FILE.                                                   BIRDSPOT
000510     PERFORM UNTIL END-OF-FILE                                    BIRDSPOT
000520         READ BIRD-SPOTTING-DATA                                  BIRDSPOT
000530             AT END                                               BIRDSPOT
000540                 SET END-OF-FILE TO TRUE                          BIRDSPOT
000550             NOT AT END                                           BIRDSPOT
000560                 DISPLAY BIRD-SPOTTING-RECORD                     BIRDSPOT
000570         END-READ                                                 BIRDSPOT
000580     END-PERFORM                                                  BIRDSPOT
000590     .                                                            BIRDSPOT
000600 400-CLOSE-FILE.                                                  BIRDSPOT
000610     CLOSE BIRD-SPOTTING-DATA.                                    BIRDSPOT
000620                                                                  BIRDSPOT
000630 WRITE-DATA SECTION.                                              BIRDSPOT
000640 500-OPEN-FILE.                                                   BIRDSPOT
000650     OPEN EXTEND BIRD-SPOTTING-DATA                               BIRDSPOT
000660     PERFORM CHECK-FILE-STATUS-CODE                               BIRDSPOT
000670     .                                                            BIRDSPOT
000680 600-POPULATE-RECORD.                                             BIRDSPOT
000690     MOVE '01/01/2023' TO WS-DATE                                 BIRDSPOT
000700     MOVE 'WOOD PIGEON' TO COMMON-NAME                            BIRDSPOT
000710     MOVE 'COLUMBA PALUMBUS' TO SCIENTIFIC-NAME                   BIRDSPOT
000720     MOVE '0001' TO BIRD-COUNT                                    BIRDSPOT
000730     .                                                            BIRDSPOT
000740 700-WRITE-FILE.                                                  BIRDSPOT
000750     WRITE BIRD-SPOTTING-RECORD AFTER ADVANCING 1 LINE            BIRDSPOT
000760     .                                                            BIRDSPOT
000770 800-CLOSE-FILE.                                                  BIRDSPOT
000780     CLOSE BIRD-SPOTTING-DATA                                     BIRDSPOT
000790     .                                                            BIRDSPOT
000800                                                                  BIRDSPOT
000810 CHECK-FILE-STATUS-CODE SECTION.                                  BIRDSPOT
000820 900-CHECK-STATUS-CODE.                                           BIRDSPOT
000830     IF FILE-STATUS-CODE NOT EQUAL '00'                           BIRDSPOT
000840         DISPLAY 'ERROR CODE ' FILE-STATUS-CODE                   BIRDSPOT
000850         STOP RUN                                                 BIRDSPOT
000860     END-IF                                                       BIRDSPOT                          
000870     .                                                            BIRDSPOT
000880                                                                  BIRDSPOT
000890 END PROGRAM BIRDSPOT.                                            BIRDSPOT