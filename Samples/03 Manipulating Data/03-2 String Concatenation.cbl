       working-storage section.
       01  person.
           05  first-name              pic X(10).
               78  FIRST-NAME-STRING   value "first name".
           05  last-name               pic X(10).
               78  LAST-NAME-STRING    value "last name".
           05  full-name               pic X(20).
       01  question                    pic X(30).

       01  bird.
           05 genus                    pic X(10).
           05 species                  pic X(10).
           05 scientific-name          pic X(20).

       procedure division.
       *>  In some statements you need to concatenate with ampersands.
           move "What is your " & FIRST-NAME-STRING & "?" to question
           display question
           accept first-name

           display "What is your " LAST-NAME-STRING "?"
           accept last-name

           string first-name last-name into full-name
           display "Hello " full-name

           initialize full-name
           string first-name delimited by space
                  " " delimited by size
                  last-name delimited by space
                  into full-name
           end-string
           display "Hello " full-name

           move "Erithacus rubecula" to scientific-name
           unstring scientific-name
               delimited by space
               into genus species
           end-unstring
           display "Genus: " genus *> Genus: Erithacus
           display "Species: " species *> Species: rubecula

           stop run
           .