      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       working-storage section.
       01  my-alphanumeric pic X(10).

       procedure division.
           move "Hello" to my-alphanumeric
           perform demonstrate-if
           perform demonstrate-evaluate    

           move "Hi" to my-alphanumeric
           perform demonstrate-if
           perform demonstrate-evaluate 

           move "Goodbye" to my-alphanumeric
           perform demonstrate-if
           perform demonstrate-evaluate    

           goback
           .

       demonstrate-if section.
           if my-alphanumeric equals "Hello"
               display "IF: Hello, World!"
           else
               if my-alphanumeric equals "Hi"
                   continue
               else
                   display "IF: Nice to meet you!"
               end-if
           end-if
           display "IF: Goodbye, World!"
           .

       demonstrate-evaluate section.
           evaluate my-alphanumeric
               when "Hello"
                   display "EVALUATE: Hello, World!"
               when "Hi"
                   continue
               when other
                   display "EVALUATE: Nice to meet you!"
           end-evaluate
           display "EVALUATE: Goodbye, World!"
           .
