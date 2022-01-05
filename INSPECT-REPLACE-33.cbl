       IDENTIFICATION DIVISION.
       PROGRAM-ID. INSPECT-REPLACE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  FULL-NAME PIC X(40) VALUE SPACES.
       01  STR PIC X(20) VALUE "****323F***FD3".
       01  NUM1 PIC 9(4).9(2) VALUE "1234.34".
       01  COUNTER1 PIC 9(2).

       *> INSPECT can be used to count, replace and convert characters in a string.
       PROCEDURE DIVISION.
           MOVE "SEETARAM RAMESHBHAI PATEL" TO FULL-NAME.

           INSPECT FULL-NAME
           REPLACING ALL "A" BY "S".

           INSPECT NUM1
           REPLACING CHARACTERS BY "0" AFTER ".".

           INSPECT STR
           REPLACING LEADING "*" BY "-".

           DISPLAY FULL-NAME.
           DISPLAY NUM1.
           DISPLAY STR.

           STOP RUN.
