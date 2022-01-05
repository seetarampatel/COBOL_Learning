       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-UNTIL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  NO-OF-TIMES PIC 9(2) VALUE ZEROES.

       PROCEDURE DIVISION.
       000-MAIN-PROCEDURE.

           *> Syntax:
           *> PERFORM X VARYING Y FROM N1 BY N2 UNTIL Y condition N3
           *> N1 = starting value of Y
           *> N2 = incrementation of Y

           PERFORM 100-DISPLAY-WORD
               VARYING NO-OF-TIMES FROM 1 BY 1
               UNTIL NO-OF-TIMES > 10.

           STOP RUN.

           100-DISPLAY-WORD.
               DISPLAY "HELLO WORLD" .

       END PROGRAM PERFORM-UNTIL.
