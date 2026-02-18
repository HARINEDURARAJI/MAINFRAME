       IDENTIFICATION DIVISION.
       PROGRAM-ID. PRIME-1-200.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM        PIC 9(3).
       01  DIVISOR    PIC 9(3).
       01  FLAG       PIC X.

       PROCEDURE DIVISION.
           PERFORM VARYING NUM FROM 2 BY 1 UNTIL NUM > 200
               MOVE "N" TO FLAG
               PERFORM VARYING DIVISOR FROM 2 BY 1 
                       UNTIL DIVISOR >= NUM
                   IF NUM MOD DIVISOR = 0
                       MOVE "Y" TO FLAG
                   END-IF
               END-PERFORM
               IF FLAG = "N"
                   DISPLAY NUM
               END-IF
           END-PERFORM.
           STOP RUN.
