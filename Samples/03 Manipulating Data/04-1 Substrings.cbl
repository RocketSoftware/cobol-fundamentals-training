      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice. 

       working-storage section.
       01  my-alphanumeric pic X(20) value "Hello, COBOL World!".

       procedure division.
           display my-alphanumeric(8:5) *> Displays "COBOL"
           stop run
           .
