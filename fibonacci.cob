       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIBONACCI.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A PIC 9(4) VALUE 0.
       01 B PIC 9(4) VALUE 1.
       01 C PIC 9(4).
       01 SUM PIC 9(6) VALUE 0.

       PROCEDURE DIVISION.
           DISPLAY A
           DISPLAY B
           ADD A B GIVING SUM

           PERFORM UNTIL C > 100
               COMPUTE C = A + B
               IF C <= 100
                   DISPLAY C
                   ADD C TO SUM
               END-IF
               MOVE B TO A
               MOVE C TO B
           END-PERFORM.

           DISPLAY "SUM OF SERIES: " SUM.
           STOP RUN.
