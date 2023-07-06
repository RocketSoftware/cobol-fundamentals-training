      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       working-storage section.
       78  GRID-SIZE           value 8.
       01  #cell-name          typedef.
           05  #file           pic X.
           05  rank            pic 9.
       01  chessboard.
           05  x-positions     occurs GRID-SIZE.
               10  y-positions occurs GRID-SIZE.
                   15  cell    #cell-name.
       01  letters             pic X occurs GRID-SIZE
                                     values "a", "b", "c", "d",
                                            "e", "f", "g", "h".

       procedure division.
           declare x as binary-char
           declare y as binary-char
           perform varying x from 1 by 1 until x > GRID-SIZE
               perform varying y from 1 by 1 until y > GRID-SIZE
                   move letters(x) to #file of cell(x, y)
                   move y to cell::rank(x, y)
               end-perform
           end-perform

           display cell(1, 1)
           
           goback
           .
