       linkage section.
       copy "user-inputs.cpy".

       procedure division using by reference user-inputs.
           perform prompt-for-first-number
           perform prompt-for-second-number
           goback
           .

       prompt-for-first-number section.
           display "Enter your first number:"
           accept first-number
           .

       prompt-for-second-number section.
           display "Enter your second number:"
           accept second-number
           .