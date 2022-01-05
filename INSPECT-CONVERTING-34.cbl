       IDENTIFICATION DIVISION.
       PROGRAM-ID. INSPECT-CONVERTING.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  FULL-NAME PIC X(40) VALUE SPACES.
       01  STR PIC X(20) VALUE "****323F***FD3".
       01  ABCD PIC X(40) VALUE "SEETARAM".

       *> INSPECT can be used to count, replace and convert characters in a string.
       PROCEDURE DIVISION.
           MOVE "SEETARAM RAMESHBHAI PATEL" TO FULL-NAME.

           INSPECT FULL-NAME
           CONVERTING "A" TO "a".

           INSPECT ABCD
           CONVERTING "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
           TO "abcdefghijklmnopqrstuvwxyz".

           INSPECT STR
           CONVERTING "*" TO "0" BEFORE "F".

           DISPLAY FULL-NAME.
           DISPLAY ABCD.
           DISPLAY STR.

           STOP RUN.
