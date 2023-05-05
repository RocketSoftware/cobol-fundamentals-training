       working-storage section.
       01  my-numeric              pic 99.

       01  my-alphanumeric         pic X(15).
       01  edited-alphanumeric     pic X(15).

       78  MINIMUM-RANDOM-NUMBER   value 0.
       78  MAXIMUM-RANDOM-NUMBER   value 99.

       procedure division.
           move function mod(5,2) to my-numeric            *> Holds 01
           move function max(1,2,3,4,5) to my-numeric      *> Holds 05
           move function min(1,2,3,4,5) to my-numeric      *> Holds 01
           move function mean(1,2,3,4,5) to my-numeric     *> Holds 03
           move function range(1,2,3,4,5) to my-numeric    *> Holds 04
           move function sqrt(4) to my-numeric             *> Holds 02

           move "Micro Focus" to my-alphanumeric
           move function length(my-alphanumeric) to my-numeric *> Holds 15
           move function upper-case(my-alphanumeric) 
               to edited-alphanumeric *> Holds "MICRO FOCUS    "
           move function lower-case(my-alphanumeric)
               to edited-alphanumeric *> Holds "micro focus    "

           perform 5 times
               compute my-numeric = function random *
                   (MAXIMUM-RANDOM-NUMBER - MINIMUM-RANDOM-NUMBER + 1) 
                   + MINIMUM-RANDOM-NUMBER
               display my-numeric
           end-perform

           stop run
           .