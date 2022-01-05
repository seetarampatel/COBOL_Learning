       IDENTIFICATION DIVISION.
       PROGRAM-ID. MATHEMATICAL-FUNCTIONS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           *> SUM, SQRT, REM, MOD, FACTORIAL
           *> LOG, LOG10, INTEGER, INTEGER-PART,
           *> NUMVAL, NUMVAL-C, RANDOM

           DISPLAY FUNCTION SUM(11 22 10 14).
           DISPLAY FUNCTION SUM(11,12,13,14).

           DISPLAY FUNCTION SQRT(1.44).

           *> REMAINDER is used with the decimal values
           DISPLAY FUNCTION REM(11.2,5)
           *> MOD is used with non-decimal values
           DISPLAY FUNCTION MOD(12,5)

           DISPLAY FUNCTION FACTORIAL(5).

           *> log_e
           DISPLAY FUNCTION LOG(2.71828).

           *> log_10
           DISPLAY FUNCTION LOG10(10).

           *> Remove the fractional part and display the lesser value
           DISPLAY FUNCTION INTEGER(4.8).
           DISPLAY FUNCTION INTEGER(-4.8).

           *> Only remove fractioal part
           DISPLAY FUNCTION INTEGER-PART(4.8).
           DISPLAY FUNCTION INTEGER-PART(-4.8).

           *> Convert the string into number and remove spaces
           DISPLAY FUNCTION NUMVAL("   1234").

           *> Convert the string into number and remove spaces and special characters
           DISPLAY FUNCTION NUMVAL-C("$1234").

           *> Display random number based on the argument
           DISPLAY FUNCTION RANDOM(52).
           STOP RUN.
