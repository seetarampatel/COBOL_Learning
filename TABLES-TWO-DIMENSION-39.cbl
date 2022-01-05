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

      *> EXAMPLE - we have 4 students and each student has the 5 subject marks
       *>  01 TABLE
       *>     02 ROW OCCURS 4 TIMES.         // students
       *>        03 COLUMN OCCURS 5 TIMES.   // subjects
       *>           04 DATA PIC X(5).
       01 WS-TABLE.
           *> here we define the group item WS-TABLE (all subject info)
           *> WS-TABLE has the data item WS-SUBJECT-INFO (each individual subject info)
           *> WS-SUBJECT-INFO have 2 parts
           *> 1: WS-SUBJECT-NAME - each subject name info
           *> 2: WS-SUBJECT-CODE - all info about subject code
           *> WS-SUBJECT-CODE has two parts and both are WS-CODE (each individiual subject code)

           *> which occurs 3 times means have three values with subscript
           04 WS-SUBJECT-INFO OCCURS 3 TIMES.
              10 WS-SUBJECT-NAME PIC X(3).
              10 WS-SUBJECT-CODE OCCURS 2 TIMES.
                 15 WS-CODE PIC X(1).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            MOVE "MATl12PHYl34CHEl56" TO WS-TABLE.
            DISPLAY "SUBJECT INFORMATION: ".
            DISPLAY "SUBJECT INFO MATHEMATICS : " WS-SUBJECT-INFO(1).
            DISPLAY "SUBJECT NAME IS: " WS-SUBJECT-NAME(1).
            DISPLAY "SUBJECT CODE 1 IS: " WS-CODE(1,1).
            DISPLAY "SUBJECT CODE 2 IS: " WS-CODE(1,2).

            DISPLAY "SUBJECT INFO PHYSICS : " WS-SUBJECT-INFO(2).
            DISPLAY "SUBJECT NAME IS: " WS-SUBJECT-NAME(2).
            DISPLAY "SUBJECT CODE 1 IS: " WS-CODE(2,1).
            DISPLAY "SUBJECT CODE 2 IS: " WS-CODE(2,2).

            DISPLAY "SUBJECT INFO CHEMISTRY : " WS-SUBJECT-INFO(3).
            DISPLAY "SUBJECT NAME IS: " WS-SUBJECT-NAME(3).
            DISPLAY "SUBJECT CODE 1 IS: " WS-CODE(3,1).
            DISPLAY "SUBJECT CODE 2 IS: " WS-CODE(3,2).
            STOP RUN.
       END PROGRAM ONE-DIMENSION-TABLE.
