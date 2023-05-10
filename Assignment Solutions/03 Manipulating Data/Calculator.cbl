       working-storage section.
       01  first-number        binary-char.
       01  second-number       binary-char.
       01  result              pic S9(5)V9(2).
       01  formatted-result    pic +9(5).9(2).
       01  integer             pic X(6).
       01  #decimal            pic X(2).

       procedure division.
           display "Enter your first number:"
           accept first-number
           
           display "Enter your second number:"
           accept second-number

           add first-number to second-number giving result rounded
               on size error
                   display "Error during addition."
               not on size error
                   move result to formatted-result
                   display "Result of Addition: " formatted-result
           end-add

           subtract first-number from second-number giving result 
               rounded
               on size error
                   display "Error during subtraction."
               not on size error
                   move result to formatted-result
                   display "Result of Subtraction: " formatted-result
           end-subtract

           multiply first-number by second-number giving result rounded
               on size error
                   display "Error during multiplication."
               not on size error
                   move result to formatted-result
                   display "Result of Multiplication: " formatted-result
           end-multiply

           divide first-number by second-number giving result rounded
               on size error
                   display "Error during division."
               not on size error
                   move result to formatted-result
                   display "Result of Division: " formatted-result
           end-divide

           move function mean(first-number, second-number) to result
           move result to formatted-result
           display "Result of Mean: " formatted-result

           unstring formatted-result delimited by "."
               into integer #decimal
           end-unstring
           display "Integer of Mean: " integer
           display "Decimal of Mean: " #decimal               

           stop run
           .