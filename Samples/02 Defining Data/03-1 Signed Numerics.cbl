      * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.

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
