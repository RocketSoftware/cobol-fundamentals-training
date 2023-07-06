      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.  
       
       working-storage section.
       01  my-unsigned         pic 9(5).
       01  my-signed           pic S9(5).
       01  my-signed-leading   pic S9(5) leading.

       procedure division.
           move -5 to my-unsigned
           display my-unsigned *> Displays 00005

           move -5 to my-signed
           display my-signed *> Displays 00005-

           move -5 to my-signed-leading
           display my-signed-leading *> Displays -00005

           stop run
           .
