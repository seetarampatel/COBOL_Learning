       IDENTIFICATION DIVISION.
       PROGRAM-ID. ADD-STATEMENT-LEARN.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  A PIC 9V99 VALUE 9.13.
       01  B PIC 99V99 VALUE 7.21.
       01  C PIC 99V99 VALUE ZEROES.
       01  D PIC 9(1) VALUE ZEROES.
       01  E PIC 99 VALUE ZEROES.
       01  M PIC 99V99 VALUE ZEROES.

       PROCEDURE DIVISION.
           ADD A TO B.
           ADD A TO B GIVING C.
           ADD A TO B GIVING D ON SIZE ERROR DISPLAY "INVALID SIZE".
           ADD A TO B GIVING E ROUNDED.
           COMPUTE M = A + B.
           COMPUTE A = A + B ON SIZE ERROR DISPLAY "SIZE ERROR!".

           DISPLAY "VALUE OF B IS: " B.
           DISPLAY "VALUE OF C IS: " C.
           DISPLAY "VALUE OF E IS: " E.
           DISPLAY "VALUE OF M IS: " M.

           STOP RUN.