       IDENTIFICATION DIVISION.
       PROGRAM-ID. FACTORIAL.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NUM        PIC 9(3).
       01  I          PIC 9(3) VALUE 1.
       01  FACT       PIC 9(10) VALUE 1.

       PROCEDURE DIVISION.
           DISPLAY "ENTER A NUMBER: ".
           ACCEPT NUM.

           PERFORM VARYING I FROM 1 BY 1 UNTIL I > NUM
               MULTIPLY FACT BY I
           END-PERFORM.

           DISPLAY "FACTORIAL IS: " FACT.
           STOP RUN.
