      * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.

       working-storage section.
       01  by-reference        binary-char value 7.
       01  by-content          binary-char value 7.
       01  by-value            binary-char value 7.
       01  ws-variable         binary-char value 7.
       01  returning-variable  binary-char value 0.

       procedure division.
           call "03-2 Subprogram" using by reference by-reference
                                        by content by-content
                                        by value by-value
                                        by reference ws-variable
                                        returning returning-variable

           display by-reference *> Holds 8
           display by-content *> Holds 7
           display by-value *> Holds 7
           display ws-variable *> Holds 7
           display returning-variable *> 8 + 8 + 8 + 8 = 32

           goback
           .
