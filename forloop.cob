       IDENTIFICATION DIVISION.
       PROGRAM-ID. ForLoop.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Ind PIC S9.
       
       PROCEDURE DIVISION.
           PERFORM OutputData WITH TEST AFTER UNTIL IND > 5
           PERFORM FORLOOP.
       
       OutputData.
           DISPLAY IND.
           add 1 to ind.
       
       ForLoop.
           PERFORM OutputDAta2 VARYING IND From -9 by 1 Until ind = 9
           
           STOP RUN.

       OutputDATA2.
           DISPLAY IND.