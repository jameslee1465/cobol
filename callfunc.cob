      *Compile with "cobc -m GetSum.cob" first.
      *Then "cobc -x callFunc.cob".
       IDENTIFICATION DIVISION.
       PROGRAM-ID. CallFunction.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Num1 PIC 9 VALUE 3.
       01 NUM2 PIC 9 VALUE 5.
       01 SUM1 PIC 9(2).

       
       PROCEDURE DIVISION.
           CALL 'GetSum' USING NUM1, NUM2, SUM1.
           DISPLAY Num1 " + " Num2 " = " SUM1.

           STOP RUN.