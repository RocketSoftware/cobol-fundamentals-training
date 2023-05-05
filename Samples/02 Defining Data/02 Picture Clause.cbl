       working-storage section.
       01  my-numeric          pic 9(5). *> Equivalent to pic 99999
       01  my-alphanumeric     pic X(5). *> Equivalent to pic xxxxx

       procedure division.
           move 5 to my-numeric
           display my-numeric *> Displays 00005

           move 123456 to my-numeric
           display my-numeric *> Displays 23456

           move "Hello" to my-alphanumeric
           display my-alphanumeric *> Displays "Hello"

           move "Greetings" to my-alphanumeric
           display my-alphanumeric *> Displays "Greet"

           move "Hi" to my-alphanumeric
           display my-alphanumeric *> Displays "Hi   "

           stop run
           .