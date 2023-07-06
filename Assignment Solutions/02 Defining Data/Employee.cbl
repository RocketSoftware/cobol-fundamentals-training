      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.  
       
       working-storage section.
       01  employee.
           05  employee-number     pic 9(5).
           05  salary              pic 9(5)V9(2).
           05  #name.
               10  first-name      pic X(10).
               10  last-name       pic X(10).

       01  salary-format           pic $(3),$(3).$(2) typedef.

       procedure division.
           move "000015000000Angela    Lukic     " to employee

           declare formatted-salary as salary-format
           move salary to formatted-salary

           display "Employee Number: " employee-number
           display "Salary: " formatted-salary
           display "First Name: " first-name
           display "Last Name: " last-name

           stop run
           .
