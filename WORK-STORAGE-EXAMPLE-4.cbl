       IDENTIFICATION DIVISION.
       PROGRAM-ID. WORK-STORAGE-EXAMPLES-LEARN.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       *> Alphanumeric
       01  MY-NAME PICTURE X(5).        *> XXXXX = X(5)

       *> Numeric
       01  PHONE PICTURE 9(10).
       01  MARKS PICTURE S999.
       01  INCOME  PICTURE 9(3)V9(2).

       *> Numeric Edited
       01  MONEY PICTURE ZZ9V9(2).
       01  PAY PICTURE ZZ9,9(2).
       01  PI-VALUE PICTURE 9(2).9(2).
       01  NEGATIVE-NUMBER PICTURE -ZZZ99.

       *> Value Clause
       01  EXAMINER-NAME PIC X(9)  VALUE SPACES.
       01  EXAMINER-MARK PIC 999   VALUE ZEROES.
       01  FRIEND-NAME PIC X(9)    VALUE "OJAS".
       01  FRIEND-PHONE PIC 9(10)  VALUE 1124352133.

       *> Level Number
       01  SUBJECT-MARKS.
           05 MATHS PIC 9(3).
           05 PHYSICS PIC 9(3).
           05 CHEMISTRY PIC 9(3).

       PROCEDURE DIVISION.
           MOVE "SEETU" TO MY-NAME.
           MOVE 1223546312 TO PHONE.
           MOVE -123 TO MARKS.
           MOVE 23.45 TO INCOME.
           MOVE 87.65 TO MONEY.
           MOVE 12123 TO PAY.
           MOVE 3.14 TO PI-VALUE.
           MOVE -211 TO NEGATIVE-NUMBER.
           MOVE 096100092 TO SUBJECT-MARKS.

           DISPLAY MY-NAME.
           DISPLAY PHONE.
           DISPLAY MARKS.
           DISPLAY INCOME.
           DISPLAY MONEY.
           DISPLAY PAY.
           DISPLAY PI-VALUE.
           DISPLAY NEGATIVE-NUMBER.
           DISPLAY EXAMINER-NAME.
           DISPLAY EXAMINER-MARK.
           DISPLAY FRIEND-NAME.
           DISPLAY FRIEND-PHONE.
           DISPLAY SUBJECT-MARKS.
           DISPLAY MATHS.
           DISPLAY PHYSICS.
           DISPLAY CHEMISTRY.
           STOP RUN.
