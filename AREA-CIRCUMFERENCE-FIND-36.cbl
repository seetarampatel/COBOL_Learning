      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01 RADIUS PIC 9(2)V9(2).
       01 PI PIC 9(1)V9(5) VALUE 3.14159.
       *> CIRCUMFERENCE FORMAT IS XX.XX
       01 CIRCUMFERENCE PIC ZZZ9(2).9(2).
       *> AREA FORMAT IS XXX.XX
       01 CIRCLE-AREA PIC ZZ9(3).9(2).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            DISPLAY "PLEASE ENTER RADIUS ".
            ACCEPT RADIUS.

            COMPUTE CIRCUMFERENCE = 2 * PI * RADIUS.
            DISPLAY "YOUR CIRCUMFERENCE IS: " CIRCUMFERENCE.

            COMPUTE CIRCLE-AREA = PI * RADIUS * RADIUS.
            DISPLAY "YOUR AREA IS: " CIRCLE-AREA.

            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
