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

           *> EXAMPLE-1
           DISPLAY "PLEASE ENTER YOUR FAV-NUM".
           ACCEPT FAV-NUM.

           IF FAV-NUM = 3
               DISPLAY "YOU ARE CORRECT!"
           END-IF.


           DISPLAY "*********************************".
           *> EXAMPLE-2
           DISPLAY "PLEASE ENTER YOUR AGE".
           ACCEPT AGE.

           IF AGE >= 18
               DISPLAY "YOU ARE AN ADULT"
           ELSE
               DISPLAY "YOU ARE NOT AN ANDULT"
           END-IF.



           DISPLAY "*********************************".
           *> EXAMPLE-3
           DISPLAY "PLEASE ENTER YOUR MARKS".
           ACCEPT MARKS.

           IF MARKS >= 80
               DISPLAY "EXCELLENT STUDENT"
           ELSE IF MARKS >= 50 AND MARKS < 80
               DISPLAY "GOOD STUDENT"
           ELSE IF MARKS >= 33 AND MARKS < 50
               DISPLAY "PASSING MARKS STUDENT"
           ELSE
               DISPLAY "FAIL STUDENT"
           END-IF.



           DISPLAY "*********************************".
           *> EXAMPLE-4
           DISPLAY "PLEASE ENTER YOUR GENDER".
           ACCEPT GENDER.

           IF GENDER = "MALE"
               DISPLAY "YOU CAN NOT PARTICIPATE IN BEAUTY CONTEST"
           ELSE
               DISPLAY "PLEASE ENTER YOUR RATING"
               ACCEPT RATING

               IF RATING > 7
                   DISPLAY "GOOD RATING. TAKE-PART IN BEAUTY CONTEST"
               ELSE
                   DISPLAY "BAD RATING. FORGET THE BEAUTY CONTEST"
               END-IF
           END-IF.

           STOP RUN.

       END PROGRAM CONDITIONAL-STATEMENTS.
