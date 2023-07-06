      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       working-storage section.
       01  my-binary           pic 9 binary.           *> Equivalent to pic 9 [usage] comp
       01  my-packed-decimal   pic 9 packed-decimal.   *> Equivalent to pic 9 [usage] comp-3
       01  my-computational    pic 9 comp-5.
       
       01  my-binary-char      binary-char.            *> Equivalent to s99 [usage] comp-5
       01  my-binary-short     binary-short.           *> Equivalent to s9(4) [usage] comp-5
       01  my-binary-long      binary-long.            *> Equivalent to pic s9(9) [usage] comp-5
       01  my-binary-double    binary-double.          *> Equivalent to s9(18) [usage] comp-5

       procedure division.
           move 5 to my-binary my-packed-decimal my-computational
           display my-binary           *> Holds 5
           display my-packed-decimal   *> Holds 5
           display my-computational    *> Holds 005

           move 255 to my-computational 
           display my-computational    *> Holds 255

           move 256 to my-computational 
           display my-computational    *> Holds 000

           move -727 to my-binary-short my-binary-long my-binary-double
           display my-binary-short     *> Holds -00727
           display my-binary-long      *> Holds -0000000727
           display my-binary-double    *> Holds -00000000000000000727

           stop run
           .
