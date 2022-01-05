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
      *> two dimension table
       01 WS-TABLE.
           *> which occurs 3 times means have three values with subscript
           05 WS-SUBJECT-INFO OCCURS 3 TIMES INDEXED BY I.
              10 WS-SUBJECT-NAME PIC X(3).
              10 WS-SUBJECT-CODE OCCURS 2 TIMES INDEXED BY J.
                 15 WS-CODE PIC X(1).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "MAT12PHY34CHE56" TO WS-TABLE.
            PERFORM 100-SUBJECT-NAME VARYING I FROM 1 BY 1 UNTIL I > 3.
            SET I, J TO 1.
            STOP RUN.

       100-SUBJECT-NAME.
            DISPLAY "SUBJECT IS: " WS-SUBJECT-NAME(I).
            PERFORM 100-SUBJECT-CODE VARYING J FROM 1 BY 1 UNTIL J > 2.

       100-SUBJECT-CODE.
            DISPLAY "SUBJECT CODE IS: " WS-SUBJECT-CODE(I, J).

       END PROGRAM ONE-DIMENSION-TABLE.
