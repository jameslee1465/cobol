       IDENTIFICATION DIVISION.
       PROGRAM-ID. If-Tutorial.
       AUTHOR. James.
       DATE-WRITTEN. 2023-3-27.
       
       ENVIRONMENT DIVISION.
       CONFIGURATION SECTION.
       SPECIAL-NAMES.
           CLASS PassingGrade IS "A" THRU "C", "D".
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 Age PIC 99 VALUE 0.
       01 Score PIC 999 VALUE 0.
       01 Grade PIC X VALUE "D".
       01 CanVoteFlag PIC 9 VALUE 0.
           88 CanVote VALUE 1.
           88 CantVote VALUE 0.
       01  TestNum PIC X.
           88 IsPrime VALUE "1", "3", "5", "7".
           88 IsOdd VALUE "1", "3", "5", "7", "9".
           88 IsEven VALUE "2", "4", "6", "8".
           88 LessThan5 VALUE "1" THRU "4".
           88 ANum VALUE "1" THRU "9".
                  
       PROCEDURE DIVISION.
           DISPLAY "Enter age: " WITH NO ADVANCING.
           ACCEPT Age.
           IF AGE >= 18 THEN
               SET CANVOTE TO TRUE
               DISPlay "You can vote."
           ELSE 
               SET CANTVOTE TO TRUE
               DISPLAY "You can't vote."
           END-IF

           IF GRADE IS PassingGrade THEN
               DISPLAY "You passed."
           ELSE 
               DISPLAY "You Failed."
           END-IF

           IF GRADE IS NOT NUMERIC THEN
               DISPLAY "NOT A NUMber"
           END-IF

           DISPLAY CANVOTEFLAG.

           DISPLAY "Enter single number or x to exit ".
           ACCEPT TESTNUM.
           PERFORM UNTIL NOT ANUM
               EVALUATE TRUE
                   WHEN ISPRIME DISPLAY "PRIME"
                   WHEN ISEVEN DISPLAY "EVEN"
                   WHEN ISODD DISPLAY "ODD"
                   WHEN LESSTHAN5 DISPLAY "Less than 5"
                   WHEN OTHER DISPLAY "Default Action"
                END-EVALUATE
                ACCEPT TESTNUM
           END-PERFORM
               
           STOP RUN.