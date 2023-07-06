      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       01  employee-record             typedef.
           05  employee-name.
               10  first-name          pic X(20) value spaces.
               10  last-name           pic X(20) value spaces.
           05  employee-salary         pic 9(7)V9(2) value zeroes.
