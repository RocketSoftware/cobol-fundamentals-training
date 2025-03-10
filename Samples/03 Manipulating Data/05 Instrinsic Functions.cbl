      * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.

       working-storage section.
       01  my-numeric              pic 99.

       01  my-alphanumeric         pic X(15).
       01  edited-alphanumeric     pic X(15).

       78  MINIMUM-RANDOM-NUMBER   value 0.
       78  MAXIMUM-RANDOM-NUMBER   value 99.

       01  today.
           05  year                pic 9(4).
           05  month               pic 9(2).
           05  #day                pic 9(2).

       procedure division.
           compute my-numeric = function mod(5, 2)             *> Holds 01
           compute my-numeric = function max(1, 2, 3, 4, 5)    *> Holds 05
           compute my-numeric = function min(1, 2, 3, 4, 5)    *> Holds 01
           compute my-numeric = function mean(1, 2, 3, 4, 5)   *> Holds 03
           compute my-numeric = function range(1, 2, 3, 4, 5)  *> Holds 04
           compute my-numeric = function sqrt(4)               *> Holds 02

           move "Jane Doe" to my-alphanumeric
           compute my-numeric = function length(my-alphanumeric)   *> Holds 15
           move function upper-case(my-alphanumeric)
               to edited-alphanumeric *> Holds "JANE DOE       "
           move function lower-case(my-alphanumeric)
               to edited-alphanumeric *> Holds "jane doe       "

           compute my-numeric = function random *
               (MAXIMUM-RANDOM-NUMBER - MINIMUM-RANDOM-NUMBER + 1)
               + MINIMUM-RANDOM-NUMBER
           display my-numeric

           move function current-date to today
           display today *> Holds YYYYMMDD

           stop run
           .
