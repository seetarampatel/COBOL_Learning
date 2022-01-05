      *>>>>>>>>>>>   IDENTIFICATION DIVISION   >>>>>>>>*
      *Contains the infromation about the program and programmer name.
      *Identification division is the first division in any cobol program.
      *This should come first before any other divisions.
      *It is used to identify the program.

      *Program-id is required
      *It must be 8 characters long on mainframe and 30 characters long on PC.
      *It contains the alphabets, numbers and hyphens.
      *It should not start and end with hyphen.

      *There are also some optional elements which can be written as comment now.
      *REMARKS. THIS IS A IDENTIFICATION DIVISION.
      *DATE-WRITTEN. OCTOBER 26, 2019.
      *DATE-COMPILED. OCTOBER 26, 2019.

       IDENTIFICATION DIVISION.               *> Mandatory
       PROGRAM-ID. FIRST-PROGRAM.             *> Mandatory
       AUTHOR. SEETARAM PATEL.
       REMARKS. THIS IS A IDENTIFICATION DIVISION.      *> Optional
       DATE-WRITTEN. OCTOBER 26, 2019.                  *> Optional
       DATE-COMPILED. OCTOBER 26, 2019.                 *> Optional
       *>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*

      *>>>>>>>>>>>   ENVIRONMENT DIVISION   >>>>>>>>*
      *Describe the program in which computer will run such as the source and object computer.
       ENVIRONMENT DIVISION.
      *>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*

      *>>>>>>>>>>>   DATA DIVISION   >>>>>>>>*
      *Provides the description of the data to be processed by the program such as input and output files.
       DATA DIVISION.
      *>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>>*

      *>>>>>>>>>>>   PROCEDURE DIVISION   >>>>>>>>*
      *Contains the algorithms or the code of the program.
       PROCEDURE DIVISION.
