      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       working-storage section.
       01  my-variable pic 9.

       procedure division.
           initialize my-variable
           perform display-then-increment *> Displays 0
           perform display-then-increment *> Displays 1
           perform display-then-increment *> Displays 2
           
           stop run
           .

       display-then-increment section.
           perform display-variable
           perform increment-variable
           .

       display-variable section.
           display my-variable
           .

       increment-variable section.
           add 1 to my-variable
           .
