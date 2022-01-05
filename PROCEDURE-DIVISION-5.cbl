       IDENTIFICATION DIVISION.
       PROGRAM-ID. PROCEDURE-DIVISION-LEARN.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  PHONE PIC 9(10).
       01  EMAIL PIC X(30).

       PROCEDURE DIVISION.

       *>  PROCEDURE Names:
       *>  Procedure names can have maximum of 30 characters.
       *>  They can contain alphabets, numbers, hyphen
       *>  Procedure names can't start and end with hyphen.
       *>  Procedure names should start in area A
       *>  Procedure statements start in area B.

       *>  This is a main procedure
       000-ACCEPT-AND-DISPLAY-VALUES.
           PERFORM 100-ACCEPT-VALUES.
           PERFORM 200-DISPLAY-VALUES.
           STOP RUN.

       100-ACCEPT-VALUES.
           ACCEPT PHONE.
           ACCEPT EMAIL.

       200-DISPLAY-VALUES.
           DISPLAY PHONE.
           DISPLAY EMAIL.
