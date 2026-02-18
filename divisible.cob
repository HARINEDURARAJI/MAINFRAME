       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVISIBLE.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 I PIC 9(4).

       PROCEDURE DIVISION.
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 1000
               IF I MOD 2 = 0 AND
                  I MOD 3 = 0 AND
                  I MOD 17 = 0
                   DISPLAY I
               END-IF
           END-PERFORM.

           STOP RUN.
