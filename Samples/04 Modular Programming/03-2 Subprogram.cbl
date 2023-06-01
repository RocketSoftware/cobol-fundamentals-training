       program-id. passing-parameters initial.
       
       working-storage section.
       01  sub-return       binary-char.

       linkage section.
       01  sub-reference    binary-char.
       01  sub-content      binary-char.
       01  sub-value        binary-char.

       procedure division using by reference sub-reference
                                by reference sub-content
                                by value sub-value.
           add 1 to sub-reference *> Holds 6
           add 1 to sub-content *> Holds 6
           add 1 to sub-value *> Holds 6
           add sub-reference sub-content to sub-value giving sub-return
           goback returning sub-return
           .