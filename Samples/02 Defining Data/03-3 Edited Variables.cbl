       working-storage section.
       01  salary              pic 9(5)V9(2).
       01  formatted-salary    pic $(3),$(3).9(2).

       01  current-date        pic X(8).
       01  formatted-date      pic 9(2)/9(2)/9(4).

       01  signed-numeric      pic S9(3).
       01  formatted-signed    pic +(4).

       procedure division.
           move 1234.56 to salary
           display salary              *> Displays 0123456
           move salary to formatted-salary
           display formatted-salary    *> Displays $1,234.56

           move 01012023 to current-date
           display current-date        *> Displays 01012023
           move current-date to formatted-date
           display formatted-date      *> Displays 01/01/2023

           move -727 to signed-numeric
           display signed-numeric      *> Displays 727-
           move signed-numeric to formatted-signed
           display formatted-signed    *> Displays -727

           stop run
           .