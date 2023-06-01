       input-output section.
           select bird-spotting-data assign "bird-spotting-data.txt"
               organization line sequential
               file status file-status-code.

       file section.
       FD  bird-spotting-data.
       01  bird-spotting-record.
           05  #date.
               10  #day                pic 9(2).
               10  filler              pic X.
               10  month               pic 9(2).
               10  filler              pic X.
               10  year                pic 9(4).
               10  filler              pic X(2).
           05  #name.
               10  common-name         pic X(16).
               10  scientific-name     pic X(24).
           05  bird-count              pic 9(4).

       working-storage section.
       01  file-status                 pic 9 value 1.
           88  end-of-file             value 0 false 1.
       01  file-status-code.
           05  status-key-1            pic X.
           05  status-key-2            pic X.

       procedure division.
           perform read-data
           perform write-data
           goback
           .

       read-data section.
           open input bird-spotting-data
           perform check-file-status-code
           set end-of-file to false
           perform until end-of-file
               read bird-spotting-data
                   at end 
                       set end-of-file to true
                   not at end
                       display bird-spotting-record
               end-read
           end-perform
           close bird-spotting-data
           .

       write-data section.
           open extend bird-spotting-data
           move "01/01/2023" to #date
           move "Wood Pigeon" to common-name
           move "Coumba Palumbus" to scientific-name
           move 1 to bird-count
           write bird-spotting-record after advancing 1 line
           close bird-spotting-data
           .

       check-file-status-code section.
           if file-status-code not equal "00"
               display "Error code " file-status-code
               goback
           end-if
           .