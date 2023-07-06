      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice. 
       
       working-storage section.
       01  salary  pic 9(5)V9(2).

       procedure division.
           move 5 to salary
           display salary *> Displays 0000500

           move 7.27 to salary
           display salary *> Displays 0000727

           stop run
           .
 