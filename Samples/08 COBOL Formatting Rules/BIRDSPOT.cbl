000100 IDENTIFICATION DIVISION.                                         BIRDSPOT
000200 PROGRAM-ID. BIRDSPOT.                                            BIRDSPOT
000300 AUTHOR. JANE DOE.                                                BIRDSPOT
000400                                                                  BIRDSPOT
000500* © 2023-2025 ROCKET SOFTWARE, INC. OR ITS AFFILIATES.            BIRDSPOT
000600* ALL RIGHTS RESERVED.                                            BIRDSPOT
000700                                                                  BIRDSPOT
000800 ENVIRONMENT DIVISION.                                            BIRDSPOT
000900 INPUT-OUTPUT SECTION.                                            BIRDSPOT
001000 FILE-CONTROL.                                                    BIRDSPOT
001100     SELECT BIRD-SPOTTING-DATA ASSIGN 'BIRD-SPOTTING-DATA.TXT'    BIRDSPOT
001200     ORGANIZATION SEQUENTIAL                                      BIRDSPOT
001300     FILE STATUS FILE-STATUS-CODE.                                BIRDSPOT
001400                                                                  BIRDSPOT
001500 DATA DIVISION.                                                   BIRDSPOT
001600 FILE SECTION.                                                    BIRDSPOT
001700 FD  BIRD-SPOTTING-DATA.                                          BIRDSPOT
001800 01  BIRD-SPOTTING-RECORD.                                        BIRDSPOT
001900     05  WS-DATE.                                                 BIRDSPOT
002000         10  WS-DAY          PIC 9(2).                            BIRDSPOT
002100         10  FILLER          PIC X.                               BIRDSPOT
002200         10  MONTH           PIC 9(2).                            BIRDSPOT
002300         10  FILLER          PIC X.                               BIRDSPOT
002400         10  YEAR            PIC 9(4).                            BIRDSPOT
002500         10  FILLER          PIC X(2).                            BIRDSPOT
002600     05  WS-NAME.                                                 BIRDSPOT
002700         10  COMMON-NAME     PIC X(16).                           BIRDSPOT
002800         10  SCIENTIFIC-NAME PIC X(24).                           BIRDSPOT
002900     05  BIRD-COUNT          PIC 9(4).                            BIRDSPOT
003000     05  FILLER              PIC X(2).                            BIRDSPOT
003100                                                                  BIRDSPOT
003200 WORKING-STORAGE SECTION.                                         BIRDSPOT
003300 01  FILE-STATUS             PIC 9 VALUE 1.                       BIRDSPOT
003400     88  END-OF-FILE         VALUE 0.                             BIRDSPOT
003500     88  NOT-END-OF-FILE     VALUE 1.                             BIRDSPOT
003600 01  FILE-STATUS-CODE.                                            BIRDSPOT
003700     05  STATUS-KEY-1        PIC X.                               BIRDSPOT
003800     05  STATUS-KEY-2        PIC X.                               BIRDSPOT
003900                                                                  BIRDSPOT
004000 PROCEDURE DIVISION.                                              BIRDSPOT
004100* This is a comment, it is ignored by the compiler.               BIRDSPOT
004200 100-PROGRAM.                                                     BIRDSPOT
004300     PERFORM READ-DATA                                            BIRDSPOT
004400     PERFORM 500-OPEN-FILE THRU 800-CLOSE-FILE                    BIRDSPOT
004500     GO TO 900-CHECK-STATUS-CODE                                  BIRDSPOT
004600     .                                                            BIRDSPOT
004700                                                                  BIRDSPOT
004800 READ-DATA SECTION.                                               BIRDSPOT
004900 200-OPEN-FILE.                                                   BIRDSPOT
005000     OPEN INPUT BIRD-SPOTTING-DATA                                BIRDSPOT
005100     PERFORM CHECK-FILE-STATUS-CODE                               BIRDSPOT
005200     SET NOT-END-OF-FILE TO TRUE                                  BIRDSPOT
005300     .                                                            BIRDSPOT
005400 300-READ-FILE.                                                   BIRDSPOT
005500     PERFORM UNTIL END-OF-FILE                                    BIRDSPOT
005600         READ BIRD-SPOTTING-DATA                                  BIRDSPOT
005700             AT END                                               BIRDSPOT
005800                 SET END-OF-FILE TO TRUE                          BIRDSPOT
005900             NOT AT END                                           BIRDSPOT
006000                 DISPLAY BIRD-SPOTTING-RECORD                     BIRDSPOT
006100         END-READ                                                 BIRDSPOT
006200     END-PERFORM                                                  BIRDSPOT
006300     .                                                            BIRDSPOT
006400 400-CLOSE-FILE.                                                  BIRDSPOT
006500     CLOSE BIRD-SPOTTING-DATA.                                    BIRDSPOT
006600                                                                  BIRDSPOT
006700 WRITE-DATA SECTION.                                              BIRDSPOT
006800 500-OPEN-FILE.                                                   BIRDSPOT
006900     OPEN EXTEND BIRD-SPOTTING-DATA                               BIRDSPOT
007000     PERFORM CHECK-FILE-STATUS-CODE                               BIRDSPOT
007100     .                                                            BIRDSPOT
007200 600-POPULATE-RECORD.                                             BIRDSPOT
007300     MOVE '01/01/2023' TO WS-DATE                                 BIRDSPOT
007400     MOVE 'WOOD PIGEON' TO COMMON-NAME                            BIRDSPOT
007500     MOVE 'COLUMBA PALUMBUS' TO SCIENTIFIC-NAME                   BIRDSPOT
007600     MOVE '0001' TO BIRD-COUNT                                    BIRDSPOT
007700     .                                                            BIRDSPOT
007800 700-WRITE-FILE.                                                  BIRDSPOT
007900     WRITE BIRD-SPOTTING-RECORD AFTER ADVANCING 1 LINE            BIRDSPOT
008000     .                                                            BIRDSPOT
008100 800-CLOSE-FILE.                                                  BIRDSPOT
008200     CLOSE BIRD-SPOTTING-DATA                                     BIRDSPOT
008300     .                                                            BIRDSPOT
008400                                                                  BIRDSPOT
008500 CHECK-FILE-STATUS-CODE SECTION.                                  BIRDSPOT
008600 900-CHECK-STATUS-CODE.                                           BIRDSPOT
008700     IF FILE-STATUS-CODE NOT EQUAL '00'                           BIRDSPOT
008800         DISPLAY 'ERROR CODE ' FILE-STATUS-CODE                   BIRDSPOT
008900         STOP RUN                                                 BIRDSPOT
009000     END-IF                                                       BIRDSPOT
009100     .                                                            BIRDSPOT
009200                                                                  BIRDSPOT