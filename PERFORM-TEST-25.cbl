       IDENTIFICATION DIVISION.
       PROGRAM-ID. PERFORM-UNTIL.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  I PIC 9(2) VALUE ZEROES.
       01  J PIC 9(2) VALUE ZEROES.

       PROCEDURE DIVISION.
       000-MAIN-PROCEDURE.

           *> PERFORM WITH TEST AFTER
           *> PERFORM WITH TEST BEFORE

           *> First check the condition and then display the message
           PERFORM WITH TEST BEFORE
               VARYING I FROM 1 BY 1
               UNTIL I > 10
               DISPLAY "HELLO WORLD BEFORE " I
           END-PERFORM.

           DISPLAY "***********************".

           *> First display the message then check the condition.
           PERFORM WITH TEST AFTER
               VARYING J FROM 1 BY 1
               UNTIL J > 10
               DISPLAY "HELLO WORLD AFTER " J
           END-PERFORM.

       END PROGRAM PERFORM-UNTIL.
