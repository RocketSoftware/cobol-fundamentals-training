       working-storage section.
       01  my-alphanumeric pic X(10) value "Hello".
       01  my-decimal      pic 9(2)V9(2) value 5.
       01  my-numeric      binary-short value 5.
       
       procedure division.
           perform demonstrate-equality
           perform demonstrate-class-conditions
           perform demonstrate-sign-conditions
           goback
           .

       demonstrate-equality section.
       *>  "Hello" and "Hello     " are equal.
           if my-alphanumeric is equal to "Hello" then
               display "Trailing whitespace is ignored!"
           end-if

       *>  +00005 and 05.00 are equal
           if my-numeric equal my-decimal
               display "Numerics compare their values!"
           end-if
           
       *>  [is] [not] equal/= [to] [then]
           if my-numeric = my-decimal
               display "You can also use symbols!"
           end-if

           if my-numeric equals my-decimal
               display "Micro Focus COBOL has additional keywords!"
           end-if
           .

       demonstrate-class-conditions section.
       *>  [is] [not] alphabetic/numeric [then]
           if my-alphanumeric alphabetic
               display "Alphanumerics are alphabetics!"
           end-if

       *>  Negated Condition
           if my-alphanumeric not numeric
               display "Alphanumerics are not numerics!"
           end-if
           .

       demonstrate-sign-conditions section.
       *>  [is] [not] positive/negative/zero/zeros/zeroes [then]
           if my-numeric not negative
               display "my-numeric is not negative."
           end-if

       *>  Combined Condition
           if my-numeric positive and my-numeric not zero
               display "my-numeric is a positive value greater than 0."
           end-if
           .