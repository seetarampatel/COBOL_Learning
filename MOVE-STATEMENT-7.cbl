       IDENTIFICATION DIVISION.
       PROGRAM-ID. MOVE-STATEMENT-LEARN.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  STR PICTURE X(30).

       01  PHONE-NUMBERS.
           05  TELEPHONE PIC 9(10).
           05  LANDLINE  PIC 9(10).

       77  NUM PIC 9(10).

      *> Move statement is used to assign literal to the variable
      *> We can also use MOVE statement to assign variable to another variable
       PROCEDURE DIVISION.
           MOVE "THIS IS A STRING" TO STR.
           MOVE 122345634 TO TELEPHONE.   *> Move literal to variable.
           MOVE TELEPHONE TO LANDLINE.    *> Move variable to variable.
           MOVE 12345 TO NUM.

           DISPLAY STR.
           DISPLAY TELEPHONE.
           DISPLAY LANDLINE.
           DISPLAY NUM.

           STOP RUN.
