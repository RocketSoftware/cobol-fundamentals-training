      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       working-storage section.
       01  random-number   pic 9(2).
       01  minimum         binary-char value 0.
       01  maximum         binary-char value 99.

       procedure division.
           perform demonstrate-perform-times
           perform demonstrate-perform-until
           perform demonstrate-perform-varying
           perform demonstrate-perform-until-exit
           
           goback
           .

       demonstrate-perform-times section.
           *> Out-of-line perform
           perform generate-random-number 5 times

           *> Inline perform
           perform 5 times
               display "Looping in perform times..."
               compute random-number = function random *
                       (maximum - minimum + 1) + minimum
               end-compute
               display random-number
           end-perform
           .

       demonstrate-perform-until section.
           declare counter as binary-char = 0
           perform until counter = 10
               display "Looping in perform until..."
               perform generate-random-number
               display random-number
               add 1 to counter
           end-perform
           .

       demonstrate-perform-varying section.
           declare counter as binary-char
           perform varying counter from 1 by 1 until counter = 10
               display "Looping in perform varying..."
               perform generate-random-number
               display random-number
           end-perform
           .

       demonstrate-perform-until-exit section.
           declare counter as binary-char = 0
           perform until exit
               if counter = 10
                   display "Exiting loop!"
                   exit perform
               end-if
               display "Looping in perform until exit..."
               perform generate-random-number
               display random-number
               add 1 to counter
           end-perform
           .

       generate-random-number section.
           compute random-number = function random *
                   (maximum - minimum + 1) + minimum
           end-compute
           .
