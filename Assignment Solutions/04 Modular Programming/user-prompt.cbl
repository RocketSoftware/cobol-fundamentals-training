      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       linkage section.
       copy "user-inputs.cpy".

       procedure division using by reference user-inputs.
           perform prompt-for-first-number
           perform prompt-for-second-number
           
           goback
           .

       prompt-for-first-number section.
           display "Enter your first number:"
           accept first-number
           .

       prompt-for-second-number section.
           display "Enter your second number:"
           accept second-number
           .
           