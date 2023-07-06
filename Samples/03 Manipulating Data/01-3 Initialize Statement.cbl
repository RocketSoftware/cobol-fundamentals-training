      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       working-storage section.
       01  my-alphanumeric pic X(5).
       01  my-numeric      pic 9(5).

       procedure division.
           initialize my-alphanumeric
           display my-alphanumeric *> Displays "     "

           move 727 to my-numeric
           initialize my-numeric
           display my-numeric *> Displays 00000

           initialize my-alphanumeric
               replacing alphanumeric data by all "*"
           display my-alphanumeric *> Displays "*****"

           initialize my-numeric
               replacing numeric data by 12345
           display my-numeric *> Displays 12345

           stop run
           .
