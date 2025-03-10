      * © 2023-2025 Rocket Software, Inc. or its affiliates. All Rights Reserved.

       working-storage section.
       copy "bird-typedefs.cpy".
       01 measurements-format  pic 9(3).9 typedef.
       01 formatted-min        measurements-format.
       01 formatted-max        measurements-format.

       linkage section.
       copy "bird.cpy".

       procedure division using by reference bird.
           perform display-names
           perform display-measurements
           perform display-breeding-population

           goback
           .

       display-names section.
           display "Common Name: " common-name
           display "Scientific Name: " scientific-name
           .

       display-measurements section.
           perform display-length
           perform display-wingspan
           perform display-weight
           .

       display-length section.
           move min of #length to formatted-min
           move max of #length to formatted-max
           display "Length: " formatted-min " - " formatted-max
           .

       display-wingspan section.
           move min of wingspan to formatted-min
           move max of wingspan to formatted-max
           display "Wingspan: " formatted-min " - " formatted-max
           .

       display-weight section.
           move min of weight to formatted-min
           move max of weight to formatted-max
           display "Weight: " formatted-min " - " formatted-max
           .

       display-breeding-population section.
           display "UK Breeding Population: " uk-breeding-population
           .
