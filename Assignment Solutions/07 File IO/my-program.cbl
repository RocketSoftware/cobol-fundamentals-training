      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       working-storage section.
       copy record-function.

       procedure division.
           perform until exit-function
               perform prompt-for-function
               evaluate true
                   when not valid-function
                        display "Invalid Function."
                   when not exit-function
                       perform prompt-for-employee-number
                       call "employee-record-manager" 
                            using by reference record-function
                       end-call
               end-evaluate
           end-perform
           
           display "Exiting program..."

           stop run
           .

       prompt-for-function section.
           display "Would you like to:"
           display "- [1] Access a record" 
           display "- [2] Amend a record"
           display "- [3] Insert a record"
           display "- [4] Delete a record"
           display "- [5] Exit the program"
           accept selected-function
           .

       prompt-for-employee-number section.
           display "Please enter an employee number:"
           accept selected-employee-number
           .
           