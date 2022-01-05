       *> Order of precedence in mathematical equations.
       *> brackets >
       *> exponentiation >
       *> multiplication and division (from left to right)
       *> addition and subtraction (from left to right)
       IDENTIFICATION DIVISION.
       PROGRAM-ID. DIVISION-STATEMENT-LEARN.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  A PIC 99 VALUE 29.
       01  B PIC 99 VALUE 25.
       01  C PIC 99 VALUE ZEROES.
       01  D PIC 99 VALUE ZEROES.
       01  P PIC 999 VALUE ZEROES.
       01  Q PIC 999 VALUE ZEROES.
       01  M PIC 999 VALUE ZEROES.

       PROCEDURE DIVISION.
           COMPUTE C = A + B.
           COMPUTE D = A - B.
           COMPUTE P = A * B.
           COMPUTE Q = A / B.
           COMPUTE M = A ** 2.

           DISPLAY "VALUE OF C IS: " C.
           DISPLAY "VALUE OF D IS: " D.
           DISPLAY "VALUE OF P IS: " P.
           DISPLAY "VALUE OF Q IS: " Q.
           DISPLAY "VALUE OF M IS: " M.

           STOP RUN.
