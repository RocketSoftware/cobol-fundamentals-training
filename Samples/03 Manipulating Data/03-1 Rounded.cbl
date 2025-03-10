      * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.

       working-storage section.
       01  my-variable     binary-long.
       01  my-decimal      pic 9V9 comp-5.

       procedure division.
           initialize my-variable
           move 1.5 to my-decimal

       *>  1.5 gets rounded down to 1
           add my-decimal to my-variable *> 1.5 + 0 = 1.5
           display my-variable

       *>  2.5 gets rounded up to 3
           add my-decimal to my-variable rounded *> 1.5 + 1 = 2.5
           display my-variable

       *>  4.4 gets rounded down to 4
           move 1.4 to my-decimal
           add my-decimal to my-variable rounded *> 1.4 + 3 = 4.4
           display my-variable

           stop run
           .
