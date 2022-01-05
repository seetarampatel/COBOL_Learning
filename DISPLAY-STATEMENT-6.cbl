      * DISPLAY statment is used to display the data on the screen or terminal
      * We can display the variable or literal with the DISPLAY statement
      * We can also display multiple variables or literals at the same time.

       IDENTIFICATION DIVISION.
       PROGRAM-ID. DISPLAY-STATEMENT-LAERN.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  YEAR PICTURE 9(4).

       01  MY-NAME.
           05  FIRST-NAME PIC X(9).
           05  LAST-NAME PIC X(9).

       PROCEDURE DIVISION.
           MOVE 2019 TO YEAR.
           MOVE "SEETU" TO FIRST-NAME.
           MOVE "PATEL" TO LAST-NAME.

           DISPLAY "HELLO WORLD IN UPPERCASE".
           DISPLAY "hello world in lowercase".
           DISPLAY 12345.
           DISPLAY 2345.56674.
           DISPLAY "*************DESIGN***********".
           DISPLAY YEAR.
      *first-name and last-name contains the spaces because of the variable size.
           DISPLAY "MY FIRST NAME IS " FIRST-NAME "AND LAST NAME IS "
                   LAST-NAME.
           STOP RUN.
