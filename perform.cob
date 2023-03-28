       IDENTIFICATION DIVISION.
       PROGRAM-ID. PerformPractice.

       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       
       PROCEDURE DIVISION.
       SubOne.
           DISPLAY "In para 1."
           PERFORM SubTwo.

       SubThree.
           DISPLAY "In para 3.".

       SubFour.
           DISPLAY "In para 4."
           PERFORM 2 TIMES
               DISPLAY "Repeated!"
           END-PERFORM.
           PERFORM SUBTHREE.

       SubTwo.
           DISPLAY "In para 2."
           PERFORM SubFour.



           STOP RUN.
