       working-storage section.
       01  main-reference  binary-char value 5.
       01  main-content    binary-char value 5.
       01  main-value      binary-char value 5.
       01  main-return     binary-char value 0.

       procedure division.
           call "03-2 Subprogram" using by reference main-reference
                                        by content main-content
                                        by value main-value
                                        returning main-return
           display main-reference *> Holds 6
           display main-content *> Holds 5
           display main-value *> Holds 5
           display main-return *> 6 + 6 + 6 = 18

           goback
           .