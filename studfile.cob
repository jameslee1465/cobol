       IDENTIFICATION DIVISION.
       PROGRAM-ID. studfile.
       ENVIRONMENT DIVISION.
       INPUT-OUTPUT SECTION.
       FILE-CONTROL.
           SELECT StudentFile ASSiGN TO "student.txt"
               ORGANIZATION IS INDEXED
               ACCESS MODE IS RANDOM
               RECORD KEY IS IDNUM.

       DATA DIVISION.
       FILE SECTION.
       FD StudentFile.
       01 StudentData.
           02 IDNum PIC 9(9).
           02 FNAME PIC A(10).
           02 LNAME PIC A(10).
      *    02 Score.
      *        03 ChinS PIC 9(3).
      *        03 EngS PIC 9(3).
      *        03 MathS PIC 9(3).

       WORKING-STORAGE SECTION.
       01  Choice PIC 9.
       01  StayOpen PIC A Value "Y".
       01  StudExist PIC X.

       PROCEDURE DIVISION.
       StartPara.
           OPEN I-O STUDENTFILE.
           PERFORM UNTIL STAYOPEN = 'N'
               DISPLAY " "
               DISPLAY "Student Records"
               DISPLAY "1 : Get Student"
               DISPLAY "2 : Add Student"
               DISPLAY "3 : Update Student"
               DISPLAY "4 : Delete Student"
               DISPLAY "0 : Exit"
               DISPLAY ": " WITH NO ADVANCING
               ACCEPT CHOICE
               EVALUATE CHOICE
                   WHEN 1 PERFORM GetStud
                   WHEN 2 PERFORM AddStud
                   WHEN 3 PERFORM UpdateStud
                   WHEN 4 PERFORM DeleteStud
                   WHEN OTHER MOVE 'N' TO STAYOPEN
               END-EVALUATE
           END-PERFORM.
           CLOSE STUDENTFILE.
           STOP RUN.

       GetStud.
           MOVE 'Y' TO STUDEXIST.
           DISPLAY " "
           DISPLAY "Enter studentID to Get : " WITH NO ADVANCING.
           ACCEPT IDNUM.
           READ STUDENTFILE
               INVALID KEY MOVE 'N' TO STUDEXIST
           END-READ.
           IF STUDEXIST = 'N'
               DISPLAY "Student doesn't exist!"
           ELSE
               DISPLAY "StudentID : " IDNUM
               DISPLAY "First Name : " FNAME
               DISPLAY "Last Name : "LNAME
           END-IF.

       AddStud.
           DISPLAY " "
           DISPLAY "Enter StudentID : " WITH NO ADVANCING
           ACCEPT IDNUM
           DISPLAY "Enter first name : " WITH NO ADVANCING
           ACCEPT FNAME
           DISPLAY "Enter last name : " WITH NO ADVANCING
           ACCEPT LNAME
           WRITE STUDENTDATA
               INVALID KEY DISPLAY "StudentID taken!"
           END-WRITE.
           DISPLAY "Student added!".

       DeleteStud.
           DISPLAY " "
           DISPLAY "Enter StudentID to delete : " WITH NO ADVANCING
           ACCEPT IDNUM
           DELETE STUDENTFILE
               INVALID KEY DISPLAY "Student doesn't exist!"
           END-DELETE.
           DISPLAY "Student deleted!".

       UpdateStud.
           MOVE 'Y' TO STUDEXIST
           DISPLAY " "
           DISPLAY "Enter StudentID to update : " WITH NO ADVANCING
           ACCEPT IDNUM
           READ STUDENTFILE
               INVALID KEY MOVE 'N' TO STUDEXIST
           END-READ
           IF STUDEXIST = 'N'
               DISPLAY "Student doesn't exist!"
           ELSE
               DISPLAY "Enter the new first name : " WITH NO ADVANCING
               ACCEPT FNAME
               DISPLAY "Enter the new last name : " WITH NO ADVANCING
               ACCEPT LNAME
           END-IF
           REWRITE STUDENTDATA
               INVALID KEY DISPLAY "Student is not updated!"
           END-REWRITE.
           DISPLAY "Student is updated!".
