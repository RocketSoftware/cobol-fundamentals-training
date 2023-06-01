       working-storage section.
       copy employee-record.
       01  selected-employee           employee-record.
       01  employees                   employee-record occurs 50 
                                             indexed by employee-number.
       01  employee-full-name          pic X(40).
       01  formatted-salary            pic $(2),$(3),$(3).9(2).
       01  amend-record-selection      pic 9 value 0.
           88  amend-first-name        value 1.
           88  amend-last-name         value 2.
           88  amend-salary            value 3.
           88  amend-exit              value 4.
           88  valid-amend-selection   values 1 thru 4.

       linkage section.
       copy record-function.

       procedure division using by reference record-function.
           perform access-record
           evaluate true
               when access-function
                   perform display-selected-employee
               when amend-function
                   perform amend-record
               when insert-function
                   perform insert-record
               when delete-function
                   perform delete-record
           end-evaluate
           goback
           .

       access-record section.
           set employee-number to 1
           search employees
               at end
                   display "Invalid Employee Number " 
                           selected-employee-number
                   end-display
                   goback
               when employee-number = selected-employee-number
                   move employees(employee-number) to selected-employee
           end-search
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
                   move selected-employee to employees(employee-number)
                   display "Record successfully amended."
                   perform display-selected-employee
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
           move selected-employee to employees(employee-number)
           display "Record successfully added."
           perform display-selected-employee
           .

       delete-record section.
           initialize selected-employee::first-name
           initialize selected-employee::last-name
           initialize selected-employee::employee-salary
           move selected-employee to employees(employee-number)
           display "Record successfully deleted."
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