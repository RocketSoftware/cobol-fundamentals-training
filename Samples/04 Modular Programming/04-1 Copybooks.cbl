      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice. 

       working-storage section.
       copy bird-typedefs.
       copy bird replacing ==(prefix)== by ==ws==.

       procedure division.
           perform accept-names
           perform accept-measurements
           perform accept-breeding-population
           call "04-2 Subprogram" using by reference ws-bird
           perform hello-world
           
           goback
           .

       accept-names section.
           display "Please enter common name:"
           accept ws-bird::common-name
           display "Please enter a scientific name:"
           accept ws-bird::scientific-name
           .

       accept-measurements section.
           perform accept-length
           perform accept-wingspan
           perform accept-weight
           .

       accept-length section.
           display "Please enter minimum length:"
           accept ws-bird::#length::min
           display "Please enter maximum length:"
           accept ws-bird::#length::max
           .

       accept-wingspan section.
           display "Please enter minimum wingspan:"
           accept ws-bird::wingspan::min
           display "Please enter maximum wingspan:"
           accept ws-bird::wingspan::max
           .

       accept-weight section.
           display "Please enter minimum weight:"
           accept ws-bird::weight::min
           display "Please enter maximum weight:"
           accept ws-bird::weight::max
           .

       accept-breeding-population section.
           display "Please enter the UK breeding population:"
           accept ws-bird::uk-breeding-population
           .

       copy hello-world-section.
