       IDENTIFICATION DIVISION.
       PROGRAM-ID. PALINDROME.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NUM PIC 9(5).
       01 TEMP PIC 9(5).
       01 REV PIC 9(5) VALUE 0.
       01 REM PIC 9.

       PROCEDURE DIVISION.
           DISPLAY "ENTER NUMBER: ".
           ACCEPT NUM.
           MOVE NUM TO TEMP.

           PERFORM UNTIL TEMP = 0
               COMPUTE REM = TEMP MOD 10
               COMPUTE REV = REV * 10 + REM
               COMPUTE TEMP = TEMP / 10
           END-PERFORM.

           IF REV = NUM
               DISPLAY "PALINDROME NUMBER"
           ELSE
               DISPLAY "NOT A PALINDROME"
           END-IF.

           STOP RUN.
