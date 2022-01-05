       IDENTIFICATION DIVISION.
       PROGRAM-ID. WORKING-STORAGE-LEARN.
       ENVIRONMENT DIVISION.
      *WORKING-STORAGE SECTION take place under the data division which is the third division.
      *It is used to identify the data associated with the program such as variables of the progarm.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
      *level-number   variable-name   picture-clause  value-clause(optional).

      *level-number.
          *> Related data items could be grouped together.
          *> Level numbers are used for this grouping.
          *> The parent/top item is called group item.
          *> The bottom/child items are called elementary items.
          *> Group item cannot have a PICTURE cluase.
          *> group item must begin in area A while elementary items begin in are B.
          *> Level numbers from 0 to 49 can be used.
          *> Data items unrelated to each other can be given level number of 77.

      *variable name:
           *> It can be a maximum of 30 characters.
           *> Variable names are called "Data items" or "Data names".
           *> They can have hyphens, digits or numbers.
           *> Variable Name should not start or end with hyphens.

      *PICTURE Clause:
           *> It is used to tell whether data item can contain alphabetic, numeric etc.
           *> It is given after the name of the data item.
           *> The length of data item can be given in the brackets.
           *> Each character or digit require one byte of storage.

           *>    Item Type     |   characters    |    Meaning
           *>------------------------------------------------------------------
           *>  Alphanumeric            X              Any character
           *>------------------------------------------------------------------
           *>   Numeric                9              Digit
           *>                          S              Sign
           *>                          V              Assigned Decimal point
           *>------------------------------------------------------------------
           *>  Numeric Edited          9              Digit
           *>                          Z              Zero supressed digit
           *>                          ,              Inserted comma
           *>                          .              Inseted digital point
           *>                          -              Minus sign if negative
           *>------------------------------------------------------------------

       *>  VALUE Clause:
           *> It is used to give the starting value to the variable.
           *> The most common way to assign a figurative constant is to give the value of ZEROES or SPACES.
       01  AGE PICTURE 9(3).

       01  MY-NAME.
           05  FIRST-NAME  PICTURE X(9).
           05  LAST-NAME   PICTURE X(9).

       77  FRIEND-NAME PICTURE X(9).

       PROCEDURE DIVISION.
           MOVE 20 TO AGE.
           MOVE "SEETU" TO FIRST-NAME.
           MOVE "PATEL" TO LAST-NAME.
           MOVE "MEET" TO FRIEND-NAME.

           DISPLAY AGE.
           DISPLAY FIRST-NAME.
           DISPLAY LAST-NAME.
           DISPLAY FRIEND-NAME.

           STOP RUN.
