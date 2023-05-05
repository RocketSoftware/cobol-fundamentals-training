       working-storage section.
       01  my-unsigned         pic 9(5).
       01  my-signed           pic S9(5).
       01  my-signed-leading   pic S9(5) leading.

       01  size-of-signed      pic 9.
       01  size-of-separate    pic 9.

       procedure division.
           move -5 to my-unsigned
           display my-unsigned *> Displays 00005

           move -5 to my-signed
           display my-signed *> Displays 00005-

           move -5 to my-signed-leading
           display my-signed-leading *> Displays -00005

           stop run
           .