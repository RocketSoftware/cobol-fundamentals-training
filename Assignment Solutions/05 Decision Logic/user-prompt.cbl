      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       linkage section.
       copy user-inputs.

       procedure division using by reference user-inputs.
           perform prompt-for-first-number
           perform prompt-for-second-number
           perform prompt-for-function
           
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

       prompt-for-function section.
           display "Select a function:"
           display "- [A]ddition"
           display "- [S]ubtraction"
           display "- [M]ultiplication"
           display "- [D]ivision"
           perform until exit
               accept arithmetic-function
               if valid-function
                   exit perform
               else
                   display "Invalid function selected."
               end-if
           end-perform
           .
           