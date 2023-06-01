       linkage section.
       copy user-inputs.

       procedure division using by reference user-inputs.
           perform prompt-for-first-number
           perform prompt-for-second-number
           perform prompt-for-function
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

       prompt-for-function section.
           display "Select a function:"
           display "- [A]ddition"
           display "- [S]ubtraction"
           display "- [M]ultiplication"
           display "- [D]ivision"
           perform until exit
               accept arithmetic-function
               if valid-function
                   exit perform
               else
                   display "Invalid function selected."
               end-if
           end-perform
           .