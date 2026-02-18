       IDENTIFICATION DIVISION.
       PROGRAM-ID. GRADE-CALCULATOR.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MARKS PIC 9(3).

       PROCEDURE DIVISION.
           DISPLAY "ENTER MARKS: ".
           ACCEPT MARKS.

           IF MARKS >= 90
               DISPLAY "GRADE: A"
           ELSE IF MARKS >= 80
               DISPLAY "GRADE: B"
           ELSE IF MARKS >= 70
               DISPLAY "GRADE: C"
           ELSE IF MARKS >= 60
               DISPLAY "GRADE: D"
           ELSE IF MARKS >= 50
               DISPLAY "GRADE: E"
           ELSE
               DISPLAY "GRADE: F"
           END-IF.

           STOP RUN.
