      * Copyright © 2023 Open Text.
      
      * The only warranties for products and services of Open Text and its affiliates and licensors ("Open Text") 
      * are as may be set forth in the express warranty statements accompanying such products and services. 
      * Nothing herein should be construed as constituting an additional warranty. 
      * Open Text shall not be liable for technical or editorial errors or omissions contained herein. 
      * The information contained herein is subject to change without notice.        
       
       input-output section.
           select bird-spotting-data 
               assign "bird-spotting-data-indexed.dat"
               organization indexed
               access random
               record key record-key
               file status file-status-code.

       file section.
       FD  bird-spotting-data.
       01  bird-spotting-record.
           05  record-key              pic 9(3).
           05  filler                  pic X.
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
       01  file-status                 pic 9 value 0.
           88  end-of-file             value 1 false 0.
       01  file-status-code.
           05  status-key-1            pic X.
           05  status-key-2            pic X.

       procedure division.
           open i-o bird-spotting-data
           
           perform check-file-status-code
           perform read-record
           perform rewrite-record
           perform write-record
           perform delete-record

           close bird-spotting-data

           goback
           .

       check-file-status-code section.
           if file-status-code not equal "00"
               display "Error code " file-status-code
               goback
           end-if
           .

       read-record section.
           move 5 to record-key
           read bird-spotting-data
               invalid key 
                   display "Record not found " record-key
               not invalid key
                   display bird-spotting-record
           end-read
           .

       rewrite-record section.
           move 5 to record-key
           move 5 to bird-count
           rewrite bird-spotting-record
               invalid key
                   display "Failure to amend record " record-key
               not invalid key
                   display "Record " record-key " successfully amended"
           end-rewrite
           .

       write-record section.
           move 12 to record-key
           move "01/01/2023" to #date
           move "Wood Pigeon" to common-name
           move "Columba palumbus" to scientific-name
           move 1 to bird-count
           write bird-spotting-record
               invalid key
                   display "Failure to insert record " record-key
               not invalid key
                   display "Record " record-key " successfully inserted"
           end-write
           .

       delete-record section.
           move 7 to record-key
           delete bird-spotting-data
               invalid key 
                   display "Failure to delete " record-key
               not invalid key
                   display "Record " record-key " successfully deleted"
           end-delete
           .
           