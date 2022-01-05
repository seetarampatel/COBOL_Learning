       IDENTIFICATION DIVISION.
       PROGRAM-ID. ACCEPT-STATEMENT-LEARN.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  INPUT-MESSAGE   PIC X(10).
       01  FAVOURITE-NUMBER    PIC 9(10).
      *Need to specify the structure of the variable
       01  MIX-VALUE   PIC S9(10)V99.

      *> ACCEPT statement is used to take the value from user.
      *> The Value will be stored in the variables defined in the WORKING-STORAGE section.
       PROCEDURE DIVISION.
           ACCEPT MIX-VALUE.
           ACCEPT INPUT-MESSAGE.
           ACCEPT FAVOURITE-NUMBER.

           DISPLAY INPUT-MESSAGE.
           DISPLAY FAVOURITE-NUMBER.
           DISPLAY MIX-VALUE.

           STOP RUN.
