       IDENTIFICATION DIVISION.
       PROGRAM-ID. UNSTRING-STATEMENT.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  FIRST-NAME  PIC X(10).
       01  MIDDLE-NAME PIC X(15).
       01  LAST-NAME PIC X(10).
       01  FULL-NAME PIC X(40) VALUE SPACES.
       01  COUNTER PIC 9(2) VALUE ZERO.
       01  POINTER-FIELD PIC 9(2) VALUE 1.

       *>  UNSTRING
           *> Used to divide a field into two or more fields
           *> TALLYING counts the number of receiving fields
           *> Pointer clause determines the starting position in the sending field
           *> Overflow clause will get executed when more charcters are sent to the receiving field then it can hold

       PROCEDURE DIVISION.
           MOVE "SEETARAM RAMESHBHAI PATEL" TO FULL-NAME.

           UNSTRING FULL-NAME DELIMITED BY " "
               INTO FIRST-NAME MIDDLE-NAME LAST-NAME
               WITH POINTER POINTER-FIELD
               TALLYING COUNTER
               ON OVERFLOW DISPLAY "OVERFLOW"
               NOT ON OVERFLOW DISPLAY "NO OVERFLOW"
           END-UNSTRING.

           DISPLAY FIRST-NAME.
           DISPLAY MIDDLE-NAME.
           DISPLAY LAST-NAME.
           DISPLAY COUNTER.

           STOP RUN.
