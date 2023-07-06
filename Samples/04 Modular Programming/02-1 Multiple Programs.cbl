      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice. 

       procedure division.
           call "02-2 Subprogram"  *> Displays 0 1 2
           call "subprogram"       *> Displays 3 4 5
           cancel "subprogram"
           call "02-2 Subprogram"  *> Displays 0 1 2

           stop run
           .
