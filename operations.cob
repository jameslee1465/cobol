       IDENTIFICATION DIVISION.
       PROGRAM-ID. Operations.
       AUTHOR. James.
       DATE-WRITTEN. 2023-3-21.

       ENVIRONMENT DIVISION.
       

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 age PIC 9(3).
       01 result PIC 9(6).
       01 piVALUE CONSTANT AS 3.14.
       01 Myid.
           02 CheckBit PIC 9.
           02 idNum PIC 9(9).

       PROCEDURE DIVISION.
           MOVE 87 to AGE.
           DISPLAY Age.
           ADD 6 5 to age.
           DISPLAY age.
           SUBTRACT 11 FROM age.
           DISPLAY AGE.
           MULTIPLY 3 by age.
           DISPLAY AGE.
           DIVIDE 3 into AGE Giving RESULT.
           DISPLAY RESULT.
           COMPUTE Result = RESULT**3.
           DISPLAY Result.

           DISPLAY "What is your ID num? " WITH NO ADVANCING.
           ACCEPT Myid.
           DISPLAY "Your ID num is " CHECKBIT .
           DISPLAY idNum.
           DISPLAY PIVALUE.
      
           STOP RUN.
       END PROGRAM Operations.
            