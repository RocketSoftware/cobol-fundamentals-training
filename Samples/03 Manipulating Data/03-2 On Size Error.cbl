      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       working-storage section.
       01  bank-balance    pic 9(7)V9(2).
       01  interest        pic 9(7)V9(2) comp-5.
       78  interest-rate   value 0.04.

       procedure division.
           initialize bank-balance replacing numeric data by all "9"
           multiply bank-balance by interest-rate giving interest
           add interest to bank-balance
               on size error
                   display "ERROR - balance is too large!"
               not on size error
                   display interest " successfully added to account."
           end-add

           stop run
           .
