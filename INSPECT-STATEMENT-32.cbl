       IDENTIFICATION DIVISION.
       PROGRAM-ID. INSPECT-STATEMENT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  FULL-NAME PIC X(40) VALUE SPACES.
       01  STR PIC X(20) VALUE "****323F***FD3".
       01  COUNTER1 PIC 9(2) VALUE ZERO.
       01  COUNTER2 PIC 9(2) VALUE ZERO.
       01  COUNTER3 PIC 9(2) VALUE ZERO.
       01  COUNTER4 PIC 9(2) VALUE ZERO.
       01  COUNTER5 PIC 9(2) VALUE ZERO.
       01  COUNTER6 PIC 9(2) VALUE ZERO.

       *> INSPECT can be used to count, replace and convert characters in a string.
       PROCEDURE DIVISION.
           MOVE "SEETARAM RAMESHBHAI PATEL" TO FULL-NAME.

           INSPECT FULL-NAME
           TALLYING COUNTER1 FOR ALL "E".

           INSPECT FULL-NAME
           TALLYING COUNTER2 FOR ALL "A" BEFORE "P".

           INSPECT FULL-NAME
           TALLYING COUNTER3 FOR ALL "A" AFTER "M".

           INSPECT FULL-NAME
           TALLYING COUNTER4 FOR CHARACTERS BEFORE "I".

           INSPECT STR
           TALLYING COUNTER6 FOR LEADING "*".

           DISPLAY COUNTER1.
           DISPLAY COUNTER2.
           DISPLAY COUNTER3.
           DISPLAY COUNTER4.
           DISPLAY COUNTER5.
           DISPLAY COUNTER6.

           STOP RUN.