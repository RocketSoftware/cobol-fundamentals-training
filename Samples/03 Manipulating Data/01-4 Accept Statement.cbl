      * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.

       working-storage section.
       01  my-name pic X(30).

       procedure division.
           display "What is your name?"
           accept my-name
           display "Hello " my-name

           stop run
           .
