      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. ONE-DIMENSION-TABLE-INDEX.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
      *> ONE dimension table
       01 WS-TABLE.
           *> Here we define the variable WS-MARK
           *> Here we call the table records by index number
           05 WS-MARK PIC 9(3) OCCURS 3 TIMES INDEXED BY I.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE 098096091 TO WS-TABLE.

            STOP RUN.

       100-DISPLAY-MARKS.
            *> use I as subscript
            DISPLAY "MARK IS: " WS-MARK(I).

       END PROGRAM ONE-DIMENSION-TABLE-INDEX.
