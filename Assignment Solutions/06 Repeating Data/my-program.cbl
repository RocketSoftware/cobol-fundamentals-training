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
           goback
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