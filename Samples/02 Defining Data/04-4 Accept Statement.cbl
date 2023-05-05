       working-storage section.
       01  my-name pic X(30).
       01  today   pic 9(4)/9(2)/9(2).

       procedure division.
           display "What is your name?"
           accept my-name
           display "Hello " my-name

           accept today from date yyyymmdd
           display today

           stop run
           1