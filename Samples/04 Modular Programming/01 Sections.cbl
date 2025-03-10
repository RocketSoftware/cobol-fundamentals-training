      * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.

       working-storage section.
       01  my-variable pic 9.

       procedure division.
           initialize my-variable
           perform display-then-increment *> Displays 0
           perform display-then-increment *> Displays 1
           perform display-then-increment *> Displays 2

           stop run
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
