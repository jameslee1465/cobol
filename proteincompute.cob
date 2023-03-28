       IDENTIFICATION DIVISION.
       PROGRAM-ID. Proteincompute.
       AUTHOR. James.
       DATE-WRITTEN. 2023-03-21.

       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MyWeight PIC 9(2).
       01 WorkedOut PIC A.
       01 PtAbsorbed PIC 9(3).
       01 PtShakeDense PIC 9v9 VALUE 0.8.
       01 PtShakeNeed PIC 9(3)v9(2).
       
       PROCEDURE DIVISION.
           DISPLAY 'What is your weight(kg)? ' with no ADVANCING.
           ACCEPT MYWEIGHT.
           DISPLAY 'How much protein did you absorb today?(g)'.
           ACCEPT PTABSORBED.
           DISPLAY 'Have you worked out today?(Y/N)'.
           ACCEPT WORKEDOUT.
           IF WORKEDOUT = 'N'
              COMPUTE PtShakeNeed = ( MYWEIGHT * 1.8 - PTABSORBED ) / 
              PTSHAKEDENSE
           ELSE 
              COMPUTE PtShakeNeed = ( MYWEIGHT * 2 - PTABSORBED ) / 
              PTSHAKEDENSE
           END-IF.
           DISPLAY PTSHAKENEED 'g proteinshake needed.'.

           STOP RUN.
       END PROGRAM Proteincompute.