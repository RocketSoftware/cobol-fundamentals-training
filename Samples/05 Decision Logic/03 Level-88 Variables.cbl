       working-storage section.
       01  person               typedef.
           05  #name.
               10  first-name   pic X(15).
               10  last-name    pic X(15).
           03  gender           pic X value "O".
               88  female       value "F" "f".
               88  male         value "M" "m".
               88  #other       value "O" "o".
               88  valid-gender value "F" "f" "M" "m" "O" "o".
       01  my-person            person.
       01  switch               pic 9 value 1.
           88  switch-on        value 0 false 1.

       procedure division.
           move "Smith" to my-person::last-name
           perform greet-person
           move "F" to my-person::gender
           perform greet-person
           set my-person::male to true
           perform greet-person
           move "A" to my-person::gender
           perform greet-person

           perform display-switch-value
           set switch-on to true
           perform display-switch-value
           set switch-on to false
           perform display-switch-value

           goback
           .

       greet-person section.
           if not my-person::valid-gender
               display "Invalid Data - Set to Default"
               set my-person::#other to true
           end-if

           evaluate true
               when my-person::female
                   display "Hello, Mrs. " my-person::last-name
               when my-person::male
                   display "Hello, Mr. " my-person::last-name
               when other
                   display "Hello, Mx. " my-person::last-name
           end-evaluate
           .

       display-switch-value section.
           if switch-on
               display "Switch is on."
           else
               display "Switch is off."
           end-if
           .