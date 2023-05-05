       working-storage section.
       01  salary  pic 9(5)V9(2).

       procedure division.
           move 5 to salary
           display salary *> Displays 0000500

           move 7.27 to salary
           display salary *> Displays 0000727

           stop run
           .