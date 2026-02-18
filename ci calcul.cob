       IDENTIFICATION DIVISION.
       PROGRAM-ID. COMPOUND-INTEREST.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 P PIC 9(5)V99.
       01 R PIC 9(3)V99.
       01 T PIC 9(3).
       01 AMOUNT PIC 9(9)V99.

       PROCEDURE DIVISION.
           DISPLAY "ENTER PRINCIPAL: ".
           ACCEPT P.
           DISPLAY "ENTER RATE: ".
           ACCEPT R.
           DISPLAY "ENTER TIME: ".
           ACCEPT T.

           COMPUTE AMOUNT = P * (1 + R / 100) ** T.
           DISPLAY "TOTAL AMOUNT: " AMOUNT.
           STOP RUN.
