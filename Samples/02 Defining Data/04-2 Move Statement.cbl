       working-storage section.
       01  my-alphanumeric pic X(5).
       01  my-numeric      pic 9(5).
       01  numeric-zeroes  pic 9(5) value zeroes.

       procedure division.
           move "Hello" to my-alphanumeric
           display my-alphanumeric *> Displays "Hello"

           move all "5" to my-numeric
           display my-numeric *> Displays 55555

           move numeric-zeroes to my-alphanumeric my-numeric
           display my-alphanumeric *> Displays "00000"
           display my-numeric *> Displays 00000

           stop run
           .



           