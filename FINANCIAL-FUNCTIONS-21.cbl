       IDENTIFICATION DIVISION.
       PROGRAM-ID. FINANCIAL-FUNCTIONS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01  ANNUITY-INSTALLMENT PIC 9(6)V9(6).
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.
           *> (1) ANNUITY
           *> SYNTAX: FUNCTION ANNUITY(interest-rate, number-of-periods)
           *> Used to find the installment value for the loan.

           *> (2) PRESENT-VALUE

           COMPUTE ANNUITY-INSTALLMENT = 1000 * FUNCTION ANNUITY(2, 2).

           DISPLAY ANNUITY-INSTALLMENT.

           STOP RUN.

       END PROGRAM FINANCIAL-FUNCTIONS.
