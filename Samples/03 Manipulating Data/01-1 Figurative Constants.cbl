      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.  
       
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
           