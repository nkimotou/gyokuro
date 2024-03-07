IDENTIFICATION DIVISION.
*> Set program identification (name) details
PROGRAM-ID. PrintString.

DATA DIVISION.
*> Set string variable data to string text
WORKING-STORAGE SECTION.
*> PIC defines the format of the data
*> X defines that the data contains alphanumeric characters
*> 20 defines length of string memory value to be 20 characters
01 StringVar PIC X(20) VALUE "Hello, world!".
*> Begin procedure 
PROCEDURE DIVISION.
    *> Print (display) StringVar to the console
    DISPLAY StringVar.
    STOP RUN.
