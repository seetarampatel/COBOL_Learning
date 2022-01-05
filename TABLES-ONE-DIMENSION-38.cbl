      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ONE-DIMENSION-TABLE.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *> ONE dimension table

      *> EXAMPLE - there is one student with his five subject marks.
      *>   01 TABLE
      *>      02 ROW  // student
      *>         03 COLUMN OCCURS 5 TIMES.    // subjects
       01 WS-TABLE.
           *> Here we define the variable WS-MARK
           *> which occurs 3 times means have three values with subscript
           05 WS-MARK PIC 9(3) OCCURS 3 TIMES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE 098096091 TO WS-TABLE.
            DISPLAY "SUBJECT MARKS: ".
            DISPLAY "MATHEMATICS MARK IS: " WS-MARK(1).
            DISPLAY "PHYSICS MARK IS: " WS-MARK(2).
            DISPLAY "CHEMISTRY MARK IS: " WS-MARK(3).
            STOP RUN.
       END PROGRAM ONE-DIMENSION-TABLE.
