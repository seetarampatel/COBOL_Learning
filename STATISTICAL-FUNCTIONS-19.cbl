       IDENTIFICATION DIVISION.
       PROGRAM-ID. STATISTICAL-FUNCTIONS.
       ENVIRONMENT DIVISION.
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       PROCEDURE DIVISION.
       MAIN-PROCEDURE.

           *> MIN, MAX, ORD-MIN, ORD-MAX, RANGE
           *> MEAN, MEDIAN, STANDARD-DEVIATION, VARIANCE

           *> 10 student marks
           *> 46, 31, 75, 89, 99, 43, 67, 81, 35, 73

           DISPLAY FUNCTION MIN(46, 31, 75, 89, 99, 43, 67, 81, 35, 73).

           DISPLAY FUNCTION MAX(46, 31, 75, 89, 99, 43, 67, 81, 35, 73).

           *> Position/order of min value
           DISPLAY FUNCTION ORD-MIN(46, 31, 75, 89, 99, 43, 67, 81, 35,
           73).

           *> Position/order of max value
           DISPLAY FUNCTION ORD-MAX(46, 31, 75, 89, 99, 43, 67, 81, 35,
           73).

           *> range = max - min
           DISPLAY FUNCTION RANGE(46, 31, 75, 89, 99, 43, 67, 81, 35,
           73).

           *> Find the average of the numbers // MEAN = SUM OF ALL NUMBERS / N
           DISPLAY FUNCTION MEAN(46, 31, 75, 89, 99, 43, 67, 81, 35, 73).

           *> Find the middle number lies in the middle of the numbers
           DISPLAY FUNCTION MEDIAN(46, 31, 75, 89, 99, 43, 67, 81, 35,
           73).

           *> Find how much the numbers vary from the mean
           DISPLAY FUNCTION STANDARD-DEVIATION(46, 31, 75, 89, 99, 43,
           67, 81, 35, 73).

           *> VARIANCE = STANDARD-DEVIATION ** 2
           DISPLAY FUNCTION VARIANCE(46, 31, 75, 89, 99, 43, 67, 81, 35,
           73).

           STOP RUN.
