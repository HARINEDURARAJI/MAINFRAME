       IDENTIFICATION DIVISION.
       PROGRAM-ID. LARGEST-OF-3.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 A PIC 9(4).
       01 B PIC 9(4).
       01 C PIC 9(4).

       PROCEDURE DIVISION.
           DISPLAY "ENTER THREE NUMBERS:".
           ACCEPT A.
           ACCEPT B.
           ACCEPT C.

           IF A >= B AND A >= C
               DISPLAY "LARGEST: " A
           ELSE
               IF B >= A AND B >= C
                   DISPLAY "LARGEST: " B
               ELSE
                   DISPLAY "LARGEST: " C
               END-IF
           END-IF.

           STOP RUN.
