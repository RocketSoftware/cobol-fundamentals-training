       program-id. copybooks initial.
       
       working-storage section.
       copy bird-typedefs.
       copy bird replacing ==(prefix)== by ==ws==.
       01  measurements-format     pic 9(3).9 typedef.
       01  formatted-min           measurements-format.
       01  formatted-max           measurements-format.

       linkage section.
       copy bird replacing ==(prefix)== by ==lk==.

       procedure division using by reference lk-bird.
           move lk-bird to ws-bird
           perform display-names
           perform display-measurements
           perform display-breeding-population
           perform hello-world
           goback
           .

       display-names section.
           display "Common Name: " ws-bird::common-name
           display "Scientific Name: " ws-bird::scientific-name
           .

       display-measurements section.
           perform display-length
           perform display-wingspan
           perform display-weight
           .

       display-length section.
           move ws-bird::#length::min to formatted-min
           move ws-bird::#length::max to formatted-max
           display "Length: " formatted-min " - " formatted-max
           .

       display-wingspan section.
           move ws-bird::wingspan::min to formatted-min
           move ws-bird::wingspan::max to formatted-max
           display "Wingspan: " formatted-min " - " formatted-max
           .

       display-weight section.
           move ws-bird::weight::min to formatted-min
           move ws-bird::weight::max to formatted-max
           display "Weight: " formatted-min " - " formatted-max
           .

       display-breeding-population section.
           display "UK Breeding Population: " 
                   ws-bird::uk-breeding-population
           .

       copy hello-world-section.