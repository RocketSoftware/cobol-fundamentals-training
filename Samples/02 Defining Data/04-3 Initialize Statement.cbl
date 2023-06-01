       working-storage section.
       01  my-alphanumeric pic X(5).
       01  my-numeric      pic 9(5).

       procedure division.
           initialize my-alphanumeric
           display my-alphanumeric *> Displays "     "

           move 727 to my-numeric
           initialize my-numeric
           display my-alphanumeric *> Displays 00000

           initialize my-alphanumeric
               replacing alphanumeric data by all "*"
           display my-alphanumeric *> Displays "*****"

           initialize my-numeric
               replacing numeric data by 12345
           display my-numeric *> Displays 12345

           stop run
           .        