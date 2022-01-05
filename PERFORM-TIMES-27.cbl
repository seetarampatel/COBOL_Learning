       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-UNTIL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NO-OF-TIMES PIC 9(2) VALUE ZEROES.

       PROCEDURE DIVISION.
       000-MAIN-PROCEDURE.

           *> Syntax:
           *> PERFORM procedure-name N TIMES

           *> example - 1
           PERFORM 100-DISPLAY-WORD 7 TIMES.

           *> example - 2
           DISPLAY "****************************************".
           DISPLAY "HOW MANY TIMES DO YOU WANT TO DISPLAY HELLO WORLD.".
           ACCEPT NO-OF-TIMES.

           PERFORM 100-DISPLAY-WORD NO-OF-TIMES TIMES.

           STOP RUN.

           100-DISPLAY-WORD.
               DISPLAY "HELLO WORLD".

       END PROGRAM PERFORM-UNTIL.
