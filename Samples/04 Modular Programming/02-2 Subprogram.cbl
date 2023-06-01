       program-id. subprogram.
       
       working-storage section.
       01  my-variable pic 9 value 0.
       
       procedure division.
           perform display-then-increment
           perform display-then-increment
           perform display-then-increment
           exit program
           .

       display-then-increment section.
           perform display-variable
           perform increment-variable
           .

       display-variable section.
           display my-variable
           .

       increment-variable section.
           add 1 to my-variable
           .