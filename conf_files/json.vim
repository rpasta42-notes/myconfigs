syn region jsonComment
   \ start="//" end="\n" display




syn region jsonSingleQuoteString
   \ start="'" end="'" display

"syn region jsonSingleQuoteKey
"   \ start="'" end="'[^,]*:" display




hi def link jsonComment             Comment
hi def link jsonSingleQuoteString   Constant

"hi def link jsonSingleQuoteKey      Type
"hi def link jsonSingleQuoteKey      Statement


