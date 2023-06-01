       working-storage section.
       01  my-alphanumeric pic X(10).

       procedure division.
           move "Hello" to my-alphanumeric
           perform demonstrate-if
           perform demonstrate-evaluate    

           move "Hi" to my-alphanumeric
           perform demonstrate-if
           perform demonstrate-evaluate 

           move "Greetings" to my-alphanumeric
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
                   if my-alphanumeric equals "Greetings"
                       exit section
                   else
                       display "IF: Nice to meet you!"
                   end-if
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
               when "Greetings"
                   exit section
               when other
                   display "EVALUATE: Nice to meet you!"
           end-evaluate
           display "EVALUATE: Goodbye, World!"
           .