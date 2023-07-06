      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       working-storage section.
       01  sales.     
           05  sales-entry binary-long occurs 5 values 0.

       procedure division.
           perform initialize-table
           perform calculate-total-sales
           
           goback
           .

       initialize-table section.
           move 1000 to sales-entry(1)
           move 2000 to sales-entry(2)
           move 3000 to sales-entry(3)
           move 4000 to sales-entry(4)
           move 5000 to sales-entry(5)
           .

       calculate-total-sales section.
           declare total-sales as binary-long = 0
           declare i as binary-char
           perform varying i from 1 by 1 until i > 5
               add sales-entry(i) to total-sales
           end-perform
           display total-sales
           .
