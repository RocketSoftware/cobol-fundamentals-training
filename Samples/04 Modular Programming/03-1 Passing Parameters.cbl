      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice. 

       working-storage section.
       01  by-reference        binary-char value 7.
       01  by-content          binary-char value 7.
       01  by-value            binary-char value 7.
       01  ws-variable         binary-char value 7.
       01  returning-variable  binary-char value 0.

       procedure division.
           call "03-2 Subprogram" using by reference by-reference
                                        by content by-content
                                        by value by-value
                                        by reference ws-variable
                                        returning returning-variable
           
           display by-reference *> Holds 8
           display by-content *> Holds 7
           display by-value *> Holds 7
           display ws-variable *> Holds 7
           display returning-variable *> 8 + 8 + 8 + 8 = 32
           
           goback
           .
