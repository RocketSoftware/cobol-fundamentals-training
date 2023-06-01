       01  record-function.
           05  selected-employee-number    pic 9(2).
           05  selected-function           pic 9 value 0.
               88  access-function         value 1.
               88  amend-function          value 2.
               88  insert-function         value 3.
               88  delete-function         value 4.
               88  exit-function           value 5.
               88  valid-function          values 1 thru 5.