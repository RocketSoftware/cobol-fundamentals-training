      * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.

       procedure division.
           call "02-2 Subprogram"  *> Displays 0 1 2
           call "subprogram"       *> Displays 3 4 5
           cancel "subprogram"
           call "02-2 Subprogram"  *> Displays 0 1 2

           stop run
           .
