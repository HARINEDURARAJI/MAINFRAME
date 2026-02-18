       IDENTIFICATION DIVISION.
       PROGRAM-ID. SIMPLE-INTEREST.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 P PIC 9(5)V99.
       01 R PIC 9(3)V99.
       01 T PIC 9(3).
       01 SI PIC 9(7)V99.

       PROCEDURE DIVISION.
           DISPLAY "ENTER PRINCIPAL: ".
           ACCEPT P.
           DISPLAY "ENTER RATE: ".
           ACCEPT R.
           DISPLAY "ENTER TIME: ".
           ACCEPT T.

           COMPUTE SI = (P * R * T) / 100.
           DISPLAY "SIMPLE INTEREST: " SI.
           STOP RUN.
