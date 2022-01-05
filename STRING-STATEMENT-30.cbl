       IDENTIFICATION DIVISION.
       PROGRAM-ID. REFERENCE-MODIFICATION.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       01  FIRST-NAME  PIC X(20).
       01  LAST-NAME PIC X(10).
       01  FULL-NAME PIC X(40) VALUE SPACES.
       01  POINTER-FIELD PIC 9(2) VALUE 4.

       *>  STRING
           *> Used to concatenate two or more strings
           *> Delimite by size will send the whole field.
           *> Pointer clause determines the starting position in the receiving field
           *> Overflow clause will get executed when more charcters are sent to the receiving field then it can hold

       PROCEDURE DIVISION.
           MOVE "SEETARAM RAMESHBHAI" TO FIRST-NAME.
           MOVE "PATEL" TO LAST-NAME.

           *> STRING FIRST-NAME LAST-NAME INTO FULL-NAME.

           STRING FIRST-NAME DELIMITED BY SIZE
                  LAST-NAME DELIMITED BY SIZE
                  INTO FULL-NAME
                  WITH POINTER POINTER-FIELD
                  ON OVERFLOW DISPLAY "THERE IS OVERFLOW"
                  NOT ON OVERFLOW DISPLAY "NO OVERFLOW"
           END-STRING.

           DISPLAY FULL-NAME.

           STOP RUN.
