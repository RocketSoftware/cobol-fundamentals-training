       working-storage section.
       01  sales       binary-long occurs 5 values 0.

       procedure division.
           perform calculate-total-sales
           perform initialize-table
           perform calculate-total-sales
           goback
           .

       initialize-table section.
           move 1000 to sales(1)
           move 2000 to sales(2)
           move 3000 to sales(3)
           move 4000 to sales(4)
           move 5000 to sales(5)
           .

       calculate-total-sales section.
           declare total-sales as binary-long = 0
           declare i as binary-char
           perform varying i from 1 by 1 until i > 5
               add sales(i) to total-sales
           end-perform
           display total-sales
           .