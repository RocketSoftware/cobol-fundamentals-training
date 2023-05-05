       working-storage section.
       01  my-variable     binary-long.
       01  my-decimal      pic 9V9 comp-5.

       procedure division.
           initialize my-variable
           move 1.5 to my-decimal

       *>  The result is 1.5, so gets rounded down to 1.
           add my-decimal to my-variable
           display my-variable

       *>  The result is 1.5, so gets rounded up to 2.
           add my-decimal to my-variable rounded
           display my-variable

       *>  The result is 1.4, so gets rounded down to 1.
           move 1.4 to my-decimal
           add my-decimal to my-variable rounded
           display my-variable

           stop run
           .



           