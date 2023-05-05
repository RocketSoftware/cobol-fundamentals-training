       working-storage section.
       01  my-alphanumeric pic X(20) value "Hello, COBOL World!".

       procedure division.
           display my-alphanumeric(8:5) *> Displays "COBOL"
           stop run
           .