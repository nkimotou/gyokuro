*> Set (identify) the program's name
IDENTIFICATION DIVISION.
PROGRAM-ID. SimpleAddition.
*> Data declaration
DATA DIVISION.
*> Assigns variables and stores the data
WORKING-STORAGE SECTION.
01 Num1 PIC 9(5) VALUE 12345.
01 Num2 PIC 9(5) VALUE 54321.
01 Result PIC 9(6).
*> Program logic
PROCEDURE DIVISION.
    *> Set result equal to the addition of variables set above
    COMPUTE Result = Num1 + Num2.
    *> Print result to the console
    DISPLAY 'The sum of ' Num1 ' and ' Num2 ' is ' Result.
    *> End program
    STOP RUN.
