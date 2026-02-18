       IDENTIFICATION DIVISION.
       PROGRAM-ID. BUBBLE-SORT.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUMBERS.
          05 NUM PIC 9(3) OCCURS 10 TIMES.
       01 I PIC 9(2).
       01 J PIC 9(2).
       01 TEMP PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "ENTER 10 NUMBERS:".
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
               ACCEPT NUM(I)
           END-PERFORM.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 9
               PERFORM VARYING J FROM 1 BY 1 UNTIL J > 10 - I
                   IF NUM(J) > NUM(J + 1)
                       MOVE NUM(J) TO TEMP
                       MOVE NUM(J + 1) TO NUM(J)
                       MOVE TEMP TO NUM(J + 1)
                   END-IF
               END-PERFORM
           END-PERFORM.

           DISPLAY "SORTED ARRAY:".
           PERFORM VARYING I FROM 1 BY 1 UNTIL I > 10
               DISPLAY NUM(I)
           END-PERFORM.

           STOP RUN.
