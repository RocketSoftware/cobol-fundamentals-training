       working-storage section.
       01  employee.
           05  employee-number pic 9(5).
           05  salary pic 9(5)V9(2).
           05  #name.
               10  first-name  pic X(20).
               10  last-name   pic X(20).

       01  salary-format    pic $(3),$(3).$(2) typedef.

       procedure division.
           move 1 to employee-number
           initialize salary replacing numeric data by 50000

           display "What is your first name?"
           accept first-name
           display "What is your last name?"
           accept last-name

           declare formatted-salary as salary-format
           move salary to formatted-salary

           display "Employee Number: " employee-number
           display "Salary: " formatted-salary
           display "First Name: " first-name
           display "Last Name: " last-name

           stop run
           .