

#https://www.tecmint.com/tr-command-examples-in-linux/


POSIX Character set supported by tr command

[:digit:] Only the digits 0 to 9
[:alnum:] Any alphanumeric character
[:alpha:] Any alpha character A to Z or a to z.
[:blank:] Space and TAB characters only.
[:xdigit:] Hexadecimal notation 0-9, A-F, a-f.
[:punct:] Punctuation symbols . , ” ‘ ? ! ; : # $ % & ( ) * + – / < > = @ [ ] \ ^ _ { } | ~
[:print:] Any printable character.
[:space:] Any whitespace characters (space, tab, NL, FF, VT, CR). Many system abbreviates as \s.
[:graph:] Exclude whitespace (SPACE, TAB). Many system abbreviate as \W.
[:upper:] Any alpha character A to Z.
[:lower:] Any alpha character a to z.
[:cntrl:] Control Characters NL CR LF TAB VT FF NUL SOH STX EXT EOT ENQ ACK SO SI DLE DC1 DC2 DC3 DC4 NAK SYN ETB CAN EM SUB ESC IS1 IS2 IS3 IS4 DEL.

FN='abc.txt'

tr [a-z] [A-Z] < input.txt > output.txt


cat "${FN}" | tr '[:upper:]' '[:lower:]'                                   # UPPER_2_lower
cat "${FN}" | tr 'abcdefghijklmnopqrstuvwxyz' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' # lower_2_UPPER
cat "${FN}" | tr 'A-Z' 'a-z'                                               # UPPER_2_lower


cat "${FN}" | tr -d ''                                                     # Delete SPACES
cat "${FN}" | tr -s ''                                                     # squeeze sequence of double CHAR 


$ echo "My UID is $UID" | tr -cd "[:digit:]\n"                             # Complement Delete
$ echo "My UID is $UID" | tr -d "a-zA-Z"

cat "${FN}" | tr -s '\n' ' '                                               # Replace line with single space 
cat "${FN}" |
cat "${FN}" |
cat "${FN}" |




cat defconfig.conf  | tr '# [A-z]' [A-z] 
cat defconfig.conf  | tr '# [A-z]' '[A-z]' 
cat defconfig.conf  | tr '# [:alpha:]' '[A-z]' 
cat defconfig.conf  | tr '# [:alpha:]' '[:alpha:]' 
cat defconfig.conf  | tr '# [:alpha:]' '[:lowe:]' 
cat defconfig.conf  | tr '# [:alpha:]' '[:lower:]' 
cat defconfig.conf  | tr '# [:upper:]' '[:lower:]' 


cat HTML_TEST.htm  | tr 'abcdefghijklmnopqrstuvwxyz' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' # lower_2_UPPER
cat HTML_TEST.htm  | tr '[:upper:]' '[:lower:]'                                   # UPPER_2_lower
cat HTML_TEST.htm  | tr 'A-Z' 'a-z'                                               # UPPER_2_lower
cat HTML_TEST.htm  | tr '[:upper:]' '[:lower:]'                                   # UPPER_2_lower
cat HTML_TEST.htm  | tr 'abcdefghijklmnopqrstuvwxyz' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' # lower_2_UPPER
cat HTML_TEST.htm  | tr -d  '@ TABLE'
cat HTML_TEST.htm  | tr -dc  '[:digit:]'
cat HTML_TEST.htm  | tr -cd  '[:digit:]'
cat HTML_TEST.htm  | tr -cd  '[a-d]'
cat HTML_TEST.htm  | tr -cd  '[a-u]'
cat HTML_TEST.htm  | tr -d  '@ TABLE'
cat HTML_TEST.htm  | tr -dc  '[:digit:]'
cat HTML_TEST.htm  | tr -cd  '[:digit:]'
cat HTML_TEST.htm  | tr -cd  '[a-d]'
cat HTML_TEST.htm  | tr -cd  '[a-u]'
cat HTML_TEST.htm  | tr -s '\n' ' '
cat HTML_TEST.htm  | tr -s '\n' ' ' | wc -l
cat HTML_TEST.htm  | tr -s '\n' '\n ' | wc -l
cat HTML_TEST.htm  | tr -s '\n' '\n\n' | wc -l
cat HTML_TEST.htm  | tr -s '\n' '\n \n' | wc -l
cat HTML_TEST.htm  | tr -cs "[:alpha:]" "\n"
cat HTML_TEST.htm  | tr -cs "[:alpha:]" "\n" # Put any word on new line
cat HTML_TEST.htm  | tr -cs "[:alpha:]" "\n" # Put any word on new line | wc -l
cat HTML_TEST.htm  | tr -cs "[:alpha:]" "\n" # Put any word on new line | wc -l 
cat HTML_TEST.htm  | tr -cs "[:alpha:]" "\n" | wc -l # Put any word on new line 

cat HTML_TEST.htm  | tr -cs "[:alnum:]" "\n" | sort | uniq -c | sort -rn
cat HTML_TEST.htm  | tr -cs "[:alnum:]" "\n" | sort | uniq -c | sort -rn # Word counter


cat HTML_TEST.htm  | tr 'abcdefghijklmnopqrstuvwxyz' 'ABCDEFGHIJKLMNOPQRSTUVWXYZ' # lower_2_UPPER
cat HTML_TEST.htm  | tr '[:upper:]' '[:lower:]'                                   # UPPER_2_lower
cat HTML_TEST.htm  | tr 'A-Z' 'a-z'                                               # UPPER_2_lower

cat defconfig.conf  | tr '# [:alpha:]' '[:alpha:]' 
