       working-storage section.
       01  alphanumeric-spaces     pic X(5) value spaces.
       01  alphanumeric-zeroes     pic X(5) value zeroes.
       01  alphanumeric-all        pic X(5) value all "*".
       01  numeric-zeroes          pic 9(5) value zeroes.

       procedure division.
           display alphanumeric-spaces *> Displays "     "
           display alphanumeric-zeroes *> Displays "00000"
           display alphanumeric-all    *> Displays "*****"
           display numeric-zeroes      *> Displays 00000

           stop run
           .


           