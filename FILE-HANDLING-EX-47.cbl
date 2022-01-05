       IDENTIFICATION DIVISION.
       PROGRAM-ID. YOUR-PROGRAM-NAME.

       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
       *> INFILE is a file name which we give as reference
       SELECT INFILE
       *> ASSIGN TO is used to specify the file path/name.
       ASSIGN TO "C:\Users\situ1\Desktop\Mainframe\COBOL\INFILE.DAT"
       *> We want to fetch data sequentially in line
       ORGANIZATION IS LINE SEQUENTIAL
       *> FILE STATUS is used to check for errors releted to file
       FILE STATUS IS FILE-CHECK-KEY.

       SELECT OUTFILE
       ASSIGN TO "C:\Users\situ1\Desktop\Mainframe\COBOL\OUTFILE.LPT"
       ORGANISATION IS LINE SEQUENTIAL.

       DATA DIVISION.
       FILE SECTION.
       *> File Description
       FD   INFILE.
       *> Define the structure of file coulumns
       01   FI-SUBJECT-MARKS.
            88 ENDOFFILE VALUE HIGH-VALUES.
            05 FI-SUBJECT   PIC X(10).
            05 FI-MARKS     PIC 9(3).

       FD   OUTFILE.
       01   PRINTLINE.
            02  FILLER         PIC X(15).

       WORKING-STORAGE SECTION.
       *> Header line
       01  HEADING-LINE.
           05 FILLER    PIC X(10) VALUE "SUBJECT".
           05 FILLER    PIC X(2) VALUE SPACES.
           05 FILLER    PIC X(5) VALUE "MARKS".

       *> Define the structure of our output files columns
       01   SUBJECT-MARKS.
            05 SUBJECT   PIC X(10).
            05 FILLER    PIC X(2) VALUE SPACES.
            05 MARKS     PIC 9(3).

       *> FILE-CHECK-KEY is used to asssign file error number
       01  FILE-CHECK-KEY PIC X(2).

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
            *> Open the file
            OPEN INPUT INFILE

            *> if file check key is not 0 then print the file error message
            *> with file check key number and stop the program
            IF FILE-CHECK-KEY NOT = "00"
                  DISPLAY "NON-ZERO FILE STATUS RETURNED FROM OPEN ",
                  FILE-CHECK-KEY
                  GO TO 900-END-PROGRAM
            END-IF.

            *> Read the file and at the end of file, set the ENDOFFILE = 1
            READ INFILE
               AT END SET ENDOFFILE TO TRUE
            END-READ.

            DISPLAY HEADING-LINE.

            WRITE PRINTLINE FROM HEADING-LINE
            AFTER ADVANCING PAGE.

            *> peroform the procedure until reaches to the end of file
            PERFORM 100-PROCESS-SUBJECT-MARKS UNTIL ENDOFFILE.

            *> Close the file
            PERFORM 900-END-PROGRAM.

       100-PROCESS-SUBJECT-MARKS.
               *> assign file data to the output variables.
               MOVE FI-SUBJECT TO SUBJECT.
               MOVE FI-MARKS TO MARKS.

               *> display the records
               DISPLAY SUBJECT-MARKS.

               WRITE PRINTLINE FROM HEADING-LINE
               AFTER ADVANCING 2 LINES.

               *> Read the file and at the end of file, set the ENDOFFILE = 1
               READ INFILE
                  AT END SET ENDOFFILE TO TRUE
               END-READ.

       900-END-PROGRAM.
           CLOSE INFILE.
           CLOSE OUTFILE.
           STOP RUN.

       END PROGRAM YOUR-PROGRAM-NAME.
