       working-storage section. 
       01  name-string                 pic X(30) typedef.

       01  ranged-size                 typedef.
           05  min                     pic 9(3)V9.
           05  max                     pic 9(3)V9.
  
       01  bird                        typedef.
           05  #name.
               10  common-name         name-string.
               10  scientific-name     name-string.
           05  measurements.
               10  #length             ranged-size.
               10  wingspan            ranged-size.
               10  weight              ranged-size.
           05  uk-breeding-population  binary-long.

       01  my-bird                     bird.
       78  MY-CONSTANT                 value 7350000.

       procedure division.
           declare temp-name as name-string = "European Robin"
           move temp-name to common-name
           move "Turdus merula" to temp-name
           move temp-name to scientific-name

           move 12.0 to my-bird::#length::min
           move 14.0 to my-bird::#length::max
           move 20.0 to my-bird::wingspan::min
           move 22.0 to my-bird::wingspan::max
           move 14.0 to my-bird::weight::min
           move 21.0 to my-bird::weight::max
           move MY-CONSTANT to uk-breeding-population

           display #name *> Displays "European Robin                Erithacus rubecula            "
           display measurements *> Display 012001400200022001400210
           display my-bird::wingspan::max " - " *> Displays "0200 - 0220"
                   my-bird::wingspan::min 

           stop run
           .