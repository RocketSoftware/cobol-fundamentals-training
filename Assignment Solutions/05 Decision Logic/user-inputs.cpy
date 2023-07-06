      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
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
