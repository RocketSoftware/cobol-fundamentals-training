000100 IDENTIFICATION DIVISION.                                         BIRDSPOT
000200 PROGRAM-ID. BIRDSPOT.                                            BIRDSPOT
000300 AUTHOR. ANGELA LUKIC.                                            BIRDSPOT
000400                                                                  BIRDSPOT
000500* COPYRIGHT © 2023 OPEN TEXT.                                     BIRDSPOT
000600                                                                  BIRDSPOT
000700* THE ONLY WARRANTIES FOR PRODUCTS AND SERVICES OF OPEN TEXT AND  BIRDSPOT
000800* ITS AFFILIATES AND LICENSORS ("OPEN TEXT") ARE AS MAY BE SET    BIRDSPOT
000900* FORTH IN THE EXPRESS WARRANTY STATEMENTS ACCOMPANYING SUCH      BIRDSPOT
001000* PRODUCTS AND SERVICES. NOTHING HEREIN SHOULD BE CONSTRUED AS    BIRDSPOT
001100* CONSTITUTING AN ADDITIONAL WARRANTY. OPEN TEXT SHALL NOT BE     BIRDSPOT
001200* LIABLE FOR TECHNICAL OR EDITORIAL ERRORS OR OMISSIONS CONTAINED BIRDSPOT
001300* HEREIN. THE INFORMATION CONTAINED HEREIN IS SUBJECT TO CHANGE   BIRDSPOT
001400* WITHOUT NOTICE.                                                 BIRDSPOT
001500                                                                  BIRDSPOT
001600 ENVIRONMENT DIVISION.                                            BIRDSPOT
001700 INPUT-OUTPUT SECTION.                                            BIRDSPOT
001800 FILE-CONTROL.                                                    BIRDSPOT
001900     SELECT BIRD-SPOTTING-DATA ASSIGN 'BIRD-SPOTTING-DATA.TXT'    BIRDSPOT
002000     ORGANIZATION SEQUENTIAL                                      BIRDSPOT
002100     FILE STATUS FILE-STATUS-CODE.                                BIRDSPOT
002200                                                                  BIRDSPOT
002300 DATA DIVISION.                                                   BIRDSPOT
002400 FILE SECTION.                                                    BIRDSPOT
002500 FD  BIRD-SPOTTING-DATA.                                          BIRDSPOT
002600 01  BIRD-SPOTTING-RECORD.                                        BIRDSPOT
002700     05  WS-DATE.                                                 BIRDSPOT
002800         10  WS-DAY          PIC 9(2).                            BIRDSPOT
002900         10  FILLER          PIC X.                               BIRDSPOT
003000         10  MONTH           PIC 9(2).                            BIRDSPOT
003100         10  FILLER          PIC X.                               BIRDSPOT
003200         10  YEAR            PIC 9(4).                            BIRDSPOT
003300         10  FILLER          PIC X(2).                            BIRDSPOT
003400     05  WS-NAME.                                                 BIRDSPOT
003500         10  COMMON-NAME     PIC X(16).                           BIRDSPOT
003600         10  SCIENTIFIC-NAME PIC X(24).                           BIRDSPOT
003700     05  BIRD-COUNT          PIC 9(4).                            BIRDSPOT
003800     05  FILLER              PIC X(2).                            BIRDSPOT
003900                                                                  BIRDSPOT
004000 WORKING-STORAGE SECTION.                                         BIRDSPOT
004100 01  FILE-STATUS             PIC 9 VALUE 1.                       BIRDSPOT
004200     88  END-OF-FILE         VALUE 0.                             BIRDSPOT
004300     88  NOT-END-OF-FILE     VALUE 1.                             BIRDSPOT
004400 01  FILE-STATUS-CODE.                                            BIRDSPOT
004500     05  STATUS-KEY-1        PIC X.                               BIRDSPOT
004600     05  STATUS-KEY-2        PIC X.                               BIRDSPOT
004700                                                                  BIRDSPOT
004800 PROCEDURE DIVISION.                                              BIRDSPOT
004900* This is a comment, it is ignored by the compiler.               BIRDSPOT
005000 100-PROGRAM.                                                     BIRDSPOT
005100     PERFORM READ-DATA                                            BIRDSPOT
005200     PERFORM 500-OPEN-FILE THRU 800-CLOSE-FILE                    BIRDSPOT
005300     GO TO 900-CHECK-STATUS-CODE                                  BIRDSPOT
005400     .                                                            BIRDSPOT
005500                                                                  BIRDSPOT
005600 READ-DATA SECTION.                                               BIRDSPOT
005700 200-OPEN-FILE.                                                   BIRDSPOT
005800     OPEN INPUT BIRD-SPOTTING-DATA                                BIRDSPOT
005900     PERFORM CHECK-FILE-STATUS-CODE                               BIRDSPOT
006000     SET NOT-END-OF-FILE TO TRUE                                  BIRDSPOT
006100     .                                                            BIRDSPOT
006200 300-READ-FILE.                                                   BIRDSPOT
006300     PERFORM UNTIL END-OF-FILE                                    BIRDSPOT
006400         READ BIRD-SPOTTING-DATA                                  BIRDSPOT
006500             AT END                                               BIRDSPOT
006600                 SET END-OF-FILE TO TRUE                          BIRDSPOT
006700             NOT AT END                                           BIRDSPOT
006800                 DISPLAY BIRD-SPOTTING-RECORD                     BIRDSPOT
006900         END-READ                                                 BIRDSPOT
007000     END-PERFORM                                                  BIRDSPOT
007100     .                                                            BIRDSPOT
007200 400-CLOSE-FILE.                                                  BIRDSPOT
007300     CLOSE BIRD-SPOTTING-DATA.                                    BIRDSPOT
007400                                                                  BIRDSPOT
007500 WRITE-DATA SECTION.                                              BIRDSPOT
007600 500-OPEN-FILE.                                                   BIRDSPOT
007700     OPEN EXTEND BIRD-SPOTTING-DATA                               BIRDSPOT
007800     PERFORM CHECK-FILE-STATUS-CODE                               BIRDSPOT
007900     .                                                            BIRDSPOT
008000 600-POPULATE-RECORD.                                             BIRDSPOT
008100     MOVE '01/01/2023' TO WS-DATE                                 BIRDSPOT
008200     MOVE 'WOOD PIGEON' TO COMMON-NAME                            BIRDSPOT
008300     MOVE 'COLUMBA PALUMBUS' TO SCIENTIFIC-NAME                   BIRDSPOT
008400     MOVE '0001' TO BIRD-COUNT                                    BIRDSPOT
008500     .                                                            BIRDSPOT
008600 700-WRITE-FILE.                                                  BIRDSPOT
008700     WRITE BIRD-SPOTTING-RECORD AFTER ADVANCING 1 LINE            BIRDSPOT
008800     .                                                            BIRDSPOT
008900 800-CLOSE-FILE.                                                  BIRDSPOT
009000     CLOSE BIRD-SPOTTING-DATA                                     BIRDSPOT
009100     .                                                            BIRDSPOT
009200                                                                  BIRDSPOT
009300 CHECK-FILE-STATUS-CODE SECTION.                                  BIRDSPOT
009400 900-CHECK-STATUS-CODE.                                           BIRDSPOT
009500     IF FILE-STATUS-CODE NOT EQUAL '00'                           BIRDSPOT
009600         DISPLAY 'ERROR CODE ' FILE-STATUS-CODE                   BIRDSPOT
009700         STOP RUN                                                 BIRDSPOT
009800     END-IF                                                       BIRDSPOT                          
009900     .                                                            BIRDSPOT
010000                                                                  BIRDSPOT