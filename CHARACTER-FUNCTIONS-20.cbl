       IDENTIFICATION DIVISION.
       PROGRAM-ID. CHARACTER-FUNCTIONS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  I PIC 999 VALUE ZEROES.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           *> LENGTH, REVERSE
           *> UPPER-CASE, LOWER-CASE
           *> ORD, CHAR

           DISPLAY FUNCTION LENGTH(1234).
           DISPLAY FUNCTION LENGTH("name - Seetu").

           DISPLAY FUNCTION REVERSE(1234).
           DISPLAY FUNCTION REVERSE("seetaram").
           DISPLAY FUNCTION REVERSE("  seetu ").

           DISPLAY FUNCTION UPPER-CASE("uppercasechane").

           DISPLAY FUNCTION LOWER-CASE("LOWER-CASE-change").

           PERFORM UNTIL I > 256
               DISPLAY FUNCTION CHAR(I)
               COMPUTE I = I + 1
           END-PERFORM.

           *> CHAR function display the character according to the number.
           DISPLAY FUNCTION char(79).
           *> ORD function display the position/order/number of according to the character.
           DISPLAY FUNCTION ORD("N").

           DISPLAY FUNCTION char(58).
           DISPLAY FUNCTION ORD(9).

           STOP RUN.

       END PROGRAM CHARACTER-FUNCTIONS.
