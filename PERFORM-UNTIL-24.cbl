       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-UNTIL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  I PIC 9(2) VALUE ZEROES.
       01  USER-NAME PIC X(30) VALUE SPACES.

       PROCEDURE DIVISION.
       000-MAIN-PROCEDURE.

           *> PERFORM procedure-name UNTIL CONDITION
           *> when condition will be true then loop stop

           PERFORM 100-DISPLAY-WORD UNTIL I > 10.
           PERFORM 200-DISPLAY-GREETING UNTIL USER-NAME = "EXIT".

           STOP RUN.

           100-DISPLAY-WORD.
               DISPLAY "NUMBER IS: " I.
               COMPUTE I = I + 1.

           200-DISPLAY-GREETING.
               DISPLAY "YOUR NAME: ".
               ACCEPT USER-NAME.
               IF USER-NAME = "EXIT"
                   DISPLAY "EXIT THE PROGRAM"
               ELSE
                   DISPLAY "HELLO " USER-NAME
               END-IF.

       END PROGRAM PERFORM-UNTIL.
