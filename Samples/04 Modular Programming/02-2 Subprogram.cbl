      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice. 

       program-id. subprogram.
       
       working-storage section.
       01  my-variable pic 9 value 0.
       
       procedure division.
           perform display-then-increment
           perform display-then-increment
           perform display-then-increment
           
           exit program
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
