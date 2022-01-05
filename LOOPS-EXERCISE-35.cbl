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
       01 MONEY PIC 9(10).
       01 TIME-LIMIT PIC 9(2).
       01 INTEREST-RATE PIC 9(10).
       01 CHOICE PIC 9(1).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "WELCOME TO THE SIMPLE INTERESRT"
                   "CALCULATION PROGRAM".

           MOVE 1 TO CHOICE.

           PERFORM 100-CALCULATE-INTEREST-RATE UNTIL CHOICE = 0.

           STOP RUN.

       100-CALCULATE-INTEREST-RATE.
           DISPLAY "PLEASE ENTER THE AMOUNT OF YOUR MONEY".
           ACCEPT MONEY.

           DISPLAY "PLEASE ENTER THE TIME".
           ACCEPT TIME-LIMIT.

           COMPUTE INTEREST-RATE = (MONEY * 8 * TIME-LIMIT) / 100.
           DISPLAY "INTEREST-RATE IS: " INTEREST-RATE.

           DISPLAY "CHOOSE 0 TO END AND 1 TO CONTINUE".
           ACCEPT CHOICE.

       END PROGRAM YOUR-PROGRAM-NAME.
