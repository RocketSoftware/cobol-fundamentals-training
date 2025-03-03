      * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.

       working-storage section.
       01  ws-variable             binary-char.
       01  returning-variable      binary-char.

       linkage section.
       01  by-reference            binary-char.
       01  by-content              binary-char.
       01  by-value                binary-char.

       procedure division using by reference by-reference
                                by reference by-content
                                by value by-value
                                by reference ws-variable.

           add 1 to by-reference *> Holds 8
           add 1 to by-content *> Holds 8
           add 1 to by-value *> Holds 8
           add 1 to ws-variable *> Holds 8
           add by-reference by-content by-value to ws-variable
               giving returning-variable *> Holds 32
           end-add

           goback returning returning-variable
           .
