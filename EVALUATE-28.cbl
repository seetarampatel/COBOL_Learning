       IDENTIFICATION DIVISION.
       PROGRAM-ID. CONDITIONAL-STATEMENTS.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  FAV-NUM PIC 9(1).
       01  AGE PIC 9(3).
       01  MARKS PIC 9(3).
       01  GENDER PIC X(6).
       01  RATING PIC 9(1).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           *> EVALUATE = SWITCH IN OTHER LANGUAGES

           *> EXAMPLE-1
           DISPLAY "PLEASE ENTER YOUR FAV-NUM".
           ACCEPT FAV-NUM.

           EVALUATE FAV-NUM
               WHEN 3 DISPLAY "YOU ARE CORRECT!"
           END-EVALUATE.


           DISPLAY "*********************************".
           *> EXAMPLE-2
           DISPLAY "PLEASE ENTER YOUR AGE".
           ACCEPT AGE.

           EVALUATE AGE >= 18
               WHEN TRUE DISPLAY "YOU ARE AN ADULT"
               WHEN OTHER DISPLAY "YOU ARE NOT AN ADULT"
           END-EVALUATE.



           DISPLAY "*********************************".
           *> EXAMPLE-3
           DISPLAY "PLEASE ENTER YOUR MARKS".
           ACCEPT MARKS.

           EVALUATE TRUE
               WHEN MARKS >= 80
                   DISPLAY "EXCELLENT STUDENT"
               WHEN MARKS >= 50 AND MARKS < 80
                   DISPLAY "GOOD STUDENT"
               WHEN MARKS >= 33 AND MARKS < 50
                   DISPLAY "PASSING MARKS STUDENT"
               WHEN OTHER
                   DISPLAY "FAIL STUDENT"
           END-EVALUATE.



           DISPLAY "*********************************".
           *> EXAMPLE-4
           DISPLAY "PLEASE ENTER YOUR GENDER".
           ACCEPT GENDER.

           DISPLAY "PLEASE ENTER YOUR RATING"
           ACCEPT RATING

           EVALUATE GENDER ALSO RATING > 7
               WHEN "FEMALE" ALSO TRUE
                       DISPLAY "ELIGIBLE FOR THE BEAUTY CONTEST"
               WHEN OTHER
                       DISPLAY "FORGET THE BEAUTY CONTEST"
           END-EVALUATE.

           STOP RUN.

       END PROGRAM CONDITIONAL-STATEMENTS.
