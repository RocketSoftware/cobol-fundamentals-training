      * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.

       working-storage section.
       01  employee.
           05  employee-number     pic 9(5).
           05  salary              pic 9(5)V9(2).
           05  #name.
               10  first-name      pic X(10).
               10  last-name       pic X(10).

       01  salary-format           pic $(3),$(3).$(2) typedef.

       procedure division.
           move "000015000000Jane      Doe       " to employee

           declare formatted-salary as salary-format
           move salary to formatted-salary

           display "Employee Number: " employee-number
           display "Salary: " formatted-salary
           display "First Name: " first-name
           display "Last Name: " last-name

           stop run
           .
