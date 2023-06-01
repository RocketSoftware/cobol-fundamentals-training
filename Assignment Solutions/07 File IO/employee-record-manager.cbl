       input-output section.
           select employee-data
               assign "employee-data.dat"
               organization indexed
               access random
               record key employee-number
               file status file-status-code.

       file section.
       FD  employee-data.
       01  selected-employee.
           05  employee-number         pic 9(2).
           05  employee-name.
               10  first-name          pic X(20).
               10  last-name           pic X(20).
           05  employee-salary         pic 9(7)V9(2).
       
       working-storage section.
       01  employee-full-name          pic X(40).
       01  formatted-salary            pic $(2),$(3),$(3).9(2).
       01  amend-record-selection      pic 9 value 0.
           88  amend-first-name        value 1.
           88  amend-last-name         value 2.
           88  amend-salary            value 3.
           88  amend-exit              value 4.
           88  valid-amend-selection   values 1 thru 4.
       01  file-status                 pic 9 value 0.
           88  end-of-file             value 1 false 0.
       01  file-status-code.
           05  status-key-1            pic X.
           05  status-key-2            pic X.

       linkage section.
       copy record-function.

       procedure division using by reference record-function.
           open i-o employee-data
           move selected-employee-number to employee-number
           evaluate true
               when access-function
                   perform access-record
               when amend-function
                   perform amend-record
               when insert-function
                   perform insert-record
               when delete-function
                   perform delete-record
           end-evaluate
           close employee-data
           goback
           .

       access-record section.
           read employee-data
               invalid key
                   display "Record not found " employee-number
               not invalid key
                   perform display-selected-employee
           end-read
           .

       amend-record section.
       initialize amend-record-selection
           perform until amend-exit
               perform prompt-for-amend-function
               evaluate true
                   when not valid-amend-selection
                       display "Invalid Function."
                   when amend-first-name
                       perform prompt-for-first-name
                   when amend-last-name
                       perform prompt-for-last-name
                   when amend-salary
                       perform prompt-for-salary
               end-evaluate

               if valid-amend-selection and not amend-exit
                   rewrite selected-employee
                       invalid key 
                           display "Failure to amend record " 
                                    employee-number
                       not invalid key
                           display "Record " employee-number
                                   " successfully amended."
                           end-display
                           perform display-selected-employee
                   end-rewrite
               end-if
           end-perform
           .

       prompt-for-amend-function section.
           display "What field do you wish to amend?"
           display "- [1] First Name"
           display "- [2] Last Name"
           display "- [3] Salary"
           display "- [4] Exit Amend"
           accept amend-record-selection
           .

       insert-record section.
           perform prompt-for-first-name
           perform prompt-for-last-name
           perform prompt-for-salary
           write selected-employee
               invalid key
                   display "Failure to insert record " employee-number
               not invalid key
                   display "Record " employee-number " successfully " &
                           "inserted."
                   end-display
                   perform display-selected-employee
           end-write
           .

       delete-record section.
           delete employee-data
               invalid key
                   display "Failure to delete " employee-number
               not invalid key
                   display "Record " employee-number " successfully " &
                           "deleted."
                   end-display
           end-delete
           .

       prompt-for-first-name section.
           display "Please enter first name:"
           initialize selected-employee::employee-name::first-name
           accept selected-employee::employee-name::first-name
           .

       prompt-for-last-name section.
           display "Please enter last name name:"
           initialize selected-employee::employee-name::last-name
           accept selected-employee::employee-name::last-name
           .

       prompt-for-salary section.
           display "Please enter salary:"
           initialize selected-employee::employee-salary
           accept selected-employee::employee-salary
           .

       display-selected-employee section.
           perform format-selected-employee-data
           display "Employee Number: " selected-employee-number
           display "Employee Name: " employee-full-name
           display "Employee Salary: " formatted-salary
           .

       format-selected-employee-data section.
           initialize employee-full-name
           string selected-employee::first-name delimited by space
                  " " delimited by size  
                  selected-employee::last-name delimited by space
                  into employee-full-name
           end-string

           initialize formatted-salary
           move selected-employee::employee-salary to formatted-salary
           .