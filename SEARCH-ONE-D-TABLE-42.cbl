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
       01 RESULTS.
           02 STUDENT.
              05 SUBJECT PIC 9(3) OCCURS 6 TIMES INDEXED BY SEQ.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           PERFORM 100-TAKE-MARKS VARYING SEQ FROM 1 BY 1 UNTIL SEQ > 6

           SET SEQ TO 1.

           SEARCH SUBJECT VARYING SEQ
               AT END DISPLAY 'STUDENT PASSED'
               WHEN SUBJECT(SEQ) < 35
                   DISPLAY 'STUDENT FAILED'
           END-SEARCH.

           STOP RUN.

       100-TAKE-MARKS.
           DISPLAY "MARK IS".
           ACCEPT SUBJECT(SEQ).

       END PROGRAM YOUR-PROGRAM-NAME.
