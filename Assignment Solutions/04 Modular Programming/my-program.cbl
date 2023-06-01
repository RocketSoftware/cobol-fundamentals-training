       working-storage section.
       copy user-inputs.
       copy calculator-results.
       01  formatted-result    pic +9(5).9(2).

       procedure division.
           initialize calculator-results
           perform get-user-inputs
           perform get-calculator-results
           perform display-calculator-results
           goback
           .

       get-user-inputs section.
           call "user-prompt" using by reference user-inputs
           .

       get-calculator-results section.
           call "calculator" using by reference calculator-results
                                   by value user-inputs
           .

       display-calculator-results section.
           perform display-addition-result
           perform display-subtraction-result
           perform display-multiplication-result
           perform display-division-result
           .

       display-addition-result section.
           move addition-result to formatted-result
           display "Result of Addition: " formatted-result
           .

       display-subtraction-result section.
           move subtraction-result to formatted-result
           display "Result of Subtraction: " formatted-result
           .

       display-multiplication-result section.
           move multiplication-result to formatted-result
           display "Result of Multiplication: " formatted-result
           .

       display-division-result section.
           move division-result to formatted-result
           display "Result of Division: " formatted-result
           .