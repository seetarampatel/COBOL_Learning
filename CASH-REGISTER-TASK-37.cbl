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
       01 ITEMS.
               05 INAME PIC X(25).
               05 QUANTITY PIC 9(2).
               05 PRICE PIC 9(3)V9(2).
               05 SALE PIC 9(3)V9(2) VALUE ZEROES.

       01 WANT-MORE PIC X(1) VALUE "Y".

       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           DISPLAY "HELLO WELCOME TO THE SEETU PATEL'S STORE".

           PERFORM 100-CALCULATE-ITEM-PRICE UNTIL WANT-MORE = "N"
           DISPLAY SALE.

           STOP RUN.

       100-CALCULATE-ITEM-PRICE.
           DISPLAY "PLEASE ENTER ITEM NAME".
           ACCEPT INAME.

           DISPLAY "PLEASE ENTER ITEM PRICE".
           ACCEPT PRICE.

           DISPLAY "PLEASE ENTER ITEM QUANTITY".
           ACCEPT QUANTITY.

           COMPUTE PRICE = PRICE * QUANTITY.

           DISPLAY "DO YOU WANT TO BUY MORE ITEMS".
           ACCEPT WANT-MORE.

           COMPUTE SALE = SALE + PRICE.

           IF SALE > 100
               COMPUTE SALE = (SALE - (SALE * 0.2)).

       END PROGRAM YOUR-PROGRAM-NAME.
