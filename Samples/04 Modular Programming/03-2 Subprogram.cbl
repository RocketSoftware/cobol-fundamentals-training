      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice. 

       working-storage section.
       01  ws-variable             binary-char.
       01  returning-variable      binary-char.
       
       linkage section.
       01  by-reference            binary-char.
       01  by-content              binary-char.
       01  by-value                binary-char.

       procedure division using by reference by-reference
                                by reference by-content
                                by value by-value
                                by reference ws-variable.
          
           add 1 to by-reference *> Holds 8
           add 1 to by-content *> Holds 8
           add 1 to by-value *> Holds 8
           add 1 to ws-variable *> Holds 8
           add by-reference by-content by-value to ws-variable
               giving returning-variable *> Holds 32
           end-add
           
           goback returning returning-variable
           .
