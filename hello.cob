       IDENTIFICATION DIVISION.
       PROGRAM-ID. Hello.
      *下面兩個可以不用寫
       AUTHOR. James.
       DATE-WRITTEN. 2023-3-20.

       ENVIRONMENT DIVISION.
       
       DATA DIVISION.
       WORKING-STORAGE SECTION.
       01 MyName PIC A(5) VALUE 'James'.
       01 MyAge PIC 9(2) VALUE 24.
       01 MyID PIC X(10) VALUE 'O100521188'.
       01 Amount PIC $9(4)V9(4) VALUE 1465.1465.
       01 Spending PIC -9(5) VALUE -50428.

       
       PROCEDURE DIVISION.
           DISPLAY 'I am ' WITH NO ADVANCING.
           DISPLAY MyName.
           DISPLAY MyAge.
           DISPLAY MyID.
           DISPLAY Amount.
           DISPLAY Spending.

           STOP RUN.
       END PROGRAM Hello.