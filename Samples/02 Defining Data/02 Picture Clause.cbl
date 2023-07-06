      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.  
       
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
           