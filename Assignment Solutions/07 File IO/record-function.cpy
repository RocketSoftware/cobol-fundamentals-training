      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       01  record-function.
           05  selected-employee-number    pic 9(2).
           05  selected-function           pic 9 value 0.
               88  access-function         value 1.
               88  amend-function          value 2.
               88  insert-function         value 3.
               88  delete-function         value 4.
               88  exit-function           value 5.
               88  valid-function          values 1 thru 5.
