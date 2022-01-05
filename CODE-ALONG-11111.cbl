       IDENTIFICATION DIVISION.
       PROGRAM-ID. FIRST-PROGRAM.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 NAME PIC X(9).
       01 PHONE PIC 9(10).
       01  A PIC 9V99 VALUE 9.13.
       01  B PIC 99V99 VALUE 7.21.
       01  C PIC 99V99 VALUE ZEROES.
       01  D PIC 9(1) VALUE ZEROES.
       01  E PIC 99 VALUE ZEROES.
       01  M PIC 99V99 VALUE ZEROES.
       01  NUM1 PIC 9V9 VALUE 1.3.
       01  NUM2 PIC 9V99 VALUE 1.2.
       01  FIRST-NAME  PIC X(20).
       01  LAST-NAME PIC X(10).
       01  FULL-NAME PIC X(40) VALUE SPACES.
       01  POINTER-FIELD PIC 9(2) VALUE 4.

       PROCEDURE DIVISION.
           MOVE 1234567891 TO PHONE.
           MOVE "SEETARAM RAMESHBHAI" TO FIRST-NAME.
           MOVE "PATEL" TO LAST-NAME.

      *> Main procedure
       000-ACCEPT-AND-DISPLAY-VALUES.
           *> PERFORM is used to execute the procedures.
           PERFORM 100-ACCEPT-VALUES.
           PERFORM 200-DISPLAY-VALUES.

           *> ADD TO
           *> SUBTRACT FROM
           *> MULTIPLY TO
           *> DIVIDE BY => ALSO USE REMAINDER

           ADD A TO B GIVING D ON SIZE ERROR DISPLAY "INVALID SIZE".
           ADD A TO B GIVING E ROUNDED.
           COMPUTE C = A + B ON SIZE ERROR DISPLAY "INVALID SIZE".

           MULTIPLY NUM1 BY NUM2 ON SIZE ERROR
                                       DISPLAY "INVALID SIZE"
                                 NOT ON SIZE ERROR
                                       DISPLAY "VALUE IS " NUM2.

           IF NAME = "SEETU"
               DISPLAY "SUCCESSFUL"
           ELSE IF NAME = "SEETARAM"
               DISPLAY "STILL SUCCESSFUL"
           ELSE
               DISPLAY "TRY IT"
           END-IF.

           *> PERFORM WITH TEST BEFORE
           *> PEROFORM WITH TEST AFTER

           STRING FIRST-NAME DELIMITED BY SIZE
                  LAST-NAME DELIMITED BY SIZE
                  INTO FULL-NAME
                  WITH POINTER POINTER-FIELD
                  ON OVERFLOW DISPLAY "THERE IS OVERFLOW"
                  NOT ON OVERFLOW DISPLAY "NO OVERFLOW"
           END-STRING.

           DISPLAY FULL-NAME.
           *> STOP RUN staement signals the end of main procedure/execution of program
           STOP RUN.

       100-ACCEPT-VALUES.
           ACCEPT NAME.

       200-DISPLAY-VALUES.
           DISPLAY "NAME IS " NAME.
           DISPLAY "PHONE IS " PHONE.

       END PROGRAM FIRST-PROGRAM.
