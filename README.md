# AutoLabel
This is automatic label print code that I developed for the warehouse I worked at during college. 
The "Print label" button in our warehouse management software only created .txt file labels that would have to be printed from notepad manually one at a time. 
The label printer was a zebra label printer and they do have auto label print software but my work did not want to pay for it. 
I changed 4 things. I changed the generate labels code to create the labels in a ZPL format, which the zebra printer can read as its native programming language. I edited the "Print labels" subcommand that ran in the microsoft access program and had it run a .bat file. That .bat file then ran a ps1 file that send every label from the order to the zebra printer. I have redacted some details so as to not expose any sensitive work information.
