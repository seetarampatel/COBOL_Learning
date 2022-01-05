      ******************************************************************
      * Author:
      * Date:
      * Purpose:
      * Tectonics: cobc
      ******************************************************************
       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.
       DATA DIVISION.
       FILE SECTION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
           *> FILE ORGANIZATION
           *> (1) SEQUENTIAL FILE ORGANIZATION
           *> (2) LINEAR-SEQUENTIAL FILE ORGANIZATION
           *> (3) INDEXED FILE ORGANIZATION
           *> (4) RELATIVE FILE ORGANIZATION

           *> ACCESS METHODS
           *> QSAM - QUEUED SEQUENTIAL ACCESS METHOD
                         *> ARRANGES RECORD SEQUENTIALLY
           *> VSAM - VIRTUAL SEQUENTIAL ACCESS METHOD
                         *> ARRANGE RECORDS BY INDEX KEY
       MAIN-PROCEDURE.
            DISPLAY "Hello world"
            STOP RUN.
       END PROGRAM YOUR-PROGRAM-NAME.
