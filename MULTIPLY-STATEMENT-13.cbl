       IDENTIFICATION DIVISION.
       PROGRAM-ID. MULTIPLI-STATEMENT-LEARN.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  A PIC 9V9 VALUE 1.3.
       01  B PIC 9V99 VALUE 1.2.
       01  C PIC 99 VALUE ZEROES.
       01  M PIC 9V999 VALUE ZEROES.

       PROCEDURE DIVISION.
           MULTIPLY A BY B GIVING C ROUNDED
           MULTIPLY A BY B ON SIZE ERROR
                               DISPLAY "ERROR SIZE"
                           NOT ON SIZE ERROR
                               DISPLAY "THE OUTPUT IS: " B.
           COMPUTE M = A * B.

           DISPLAY "VALUE OF C: " C.
           DISPLAY "VALUE OF M: " M.

           STOP RUN.
