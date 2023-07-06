      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice. 

       working-storage section.
       78  FIRST-NAME-STRING   value "first name".
       78  LAST-NAME-STRING    value "last name".

       01  person.
           05  first-name      pic X(10).
           05  last-name       pic X(10).
           05  full-name       pic X(20).

       01  bird.
           05 genus            pic X(10).
           05 species          pic X(10).
           05 scientific-name  pic X(20).

       procedure division.
           display "What is your" space FIRST-NAME-STRING "?"
           accept first-name

           display "What is your" space LAST-NAME-STRING "?"
           accept last-name

           string first-name last-name 
               delimited by size
               into full-name
           end-string
           display "Hello " full-name
           
           string "Hubert" space "Wolfeschlegelsteinhausenbergerdorff" 
               into full-name
               on overflow
                   display "Last name is too long!"
           end-string
           display "Hello " full-name *> Hello Hubert Wolfeschl

           initialize full-name
           string first-name delimited by space
                  space delimited by size
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
