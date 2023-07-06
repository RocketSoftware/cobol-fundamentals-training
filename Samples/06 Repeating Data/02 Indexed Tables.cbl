      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       working-storage section.
       78  TABLE-SIZE      value 5.
       01  sales           binary-long occurs TABLE-SIZE 
                                       indexed by i 
                                       values 1000, 2000, 3000, 
                                              4000, 5000.

       procedure division.
           perform calculate-total-sales
           perform demonstrate-search
           
           goback
           .

       calculate-total-sales section.
           declare total-sales as binary-long = 0
           perform varying i from 1 by 1 until i > TABLE-SIZE
               add sales(i) to total-sales
           end-perform
           display total-sales
           .

       demonstrate-search section.
           set i to 1
           search sales
               at end 
                   display "Invalid Index: " i
               when i = 3
                   display "Sales at index 3 are: " sales(i)
           end-search
           .
