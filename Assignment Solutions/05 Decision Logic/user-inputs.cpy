       01  user-inputs.
           05  first-number                binary-char.
           05  second-number               binary-char.
           05  arithmetic-function         pic X.
               88  addition-function       value "A" "a".
               88  subtraction-function    value "S" "s".
               88  multiplication-function value "M" "m".
               88  division-function       value "D" "d".
               88  valid-function          value "A" "a" "S" "s"
                                                 "M" "m" "D" "d".