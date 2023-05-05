       working-storage section.
       01  my-numeric          binary-long.
       01  my-other-numeric    binary-long.
       01  receiving-variable  binary-long.
       01  my-remainder        binary-long.

       procedure division.
           move 5 to my-numeric
           move 7 to my-other-numeric
           move 10 to receiving-variable *> 10
           add my-numeric to receiving-variable *> 10 + 5 = 15
           add my-numeric to my-other-numeric giving receiving-variable *> 5 + 7 = 12

           move 5 to my-numeric
           move 7 to my-other-numeric
           move 10 to receiving-variable *> 10
           subtract my-numeric from receiving-variable *> 10 - 5 = 5
           subtract my-numeric from my-other-numeric *> 7 - 5 = 2
                    giving receiving-variable 

           move 5 to my-numeric
           move 7 to my-other-numeric
           move 10 to receiving-variable *> 10
           multiply my-numeric by receiving-variable *> 5 * 10 = 50
           multiply my-numeric by my-other-numeric *> 5 * 7 = 35
                    giving receiving-variable

           move 5 to my-numeric
           move 10 to my-other-numeric
           move 50 to receiving-variable *> 50
           divide my-numeric into receiving-variable  *> 50 / 5 = 10
           divide my-numeric into my-other-numeric *> 10 / 5 = 2 remainder 0
                  giving receiving-variable remainder my-remainder
           divide my-numeric by my-other-numeric *> 5 / 10 = 0 remainder 5
                  giving receiving-variable remainder my-remainder

           declare vat as binary-long = 0.2
           declare daily-sales as binary-long = 1000
           declare weekly-sales as binary-long
           declare monthly-sales as binary-long
           declare yearly-sales as binary-long

           compute daily-sales = daily-sales - (daily-sales * vat)
           compute weekly-sales = daily-sales * 7
           compute yearly-sales = weekly-sales * 52
           compute monthly-sales = yearly-sales / 12

           stop run
           .