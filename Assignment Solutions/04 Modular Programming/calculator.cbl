       linkage section.
       copy user-inputs.
       copy calculator-results.

       procedure division using by reference calculator-results
                                by value user-inputs.
           perform calculate-addition
           perform calculate-subtraction
           perform calculate-multiplication
           perform calculate-division
           goback
           .

       calculate-addition section.
           add first-number to second-number 
               giving addition-result rounded
               on size error
                   display "Error during addition."
           end-add
           .

       calculate-subtraction section.
           subtract first-number from second-number
                    giving subtraction-result rounded
                    on size error
                       display "Error during subtraction."
           end-subtract
           .

       calculate-multiplication section.
           multiply first-number by second-number
                    giving multiplication-result rounded
                    on size error
                       display "Error during multiplication."
           end-multiply
           .

       calculate-division section.
           divide first-number by second-number
               giving division-result rounded
               on size error
                   display "Error during division."
           end-divide
           .