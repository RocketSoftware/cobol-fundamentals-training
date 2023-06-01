       working-storage section.
       01  my-reference    binary-long value 5.
       01  my-value        binary-long value 5.
       01  my-return       binary-long value 0.

       procedure division.
           perform parameterized-section(my-value) returning my-return
           display my-return *> 5 + 1 = 6

           perform no-parameters returning my-return
           display my-return *> 5

           perform optional-parameter() returning my-return
           display my-return *> 0 + 1 = 1

           perform by-value(my-value)
           display my-value *> Incremented in section, but value doesn't change here.

           perform by-reference(my-reference)
           display my-reference *> 5 + 1 = 6
           
           goback
           .

       parameterized-section section (value-parameter as binary-long)
                             returning return-parameter as binary-long.
           add 1 to value-parameter giving return-parameter
           .

       no-parameters section () 
                     returning return-parameter as binary-long.
           move 5 to return-parameter
           .

       optional-parameter section (value-parameter as binary-long = 0)
                          returning return-parameter as binary-long.
           add 1 to value-parameter giving return-parameter
           .
           
       by-value section (value value-parameter as binary-long).
           add 1 to value-parameter
           .

       by-reference section (reference ref-parameter as binary-long).
           add 1 to ref-parameter
           .