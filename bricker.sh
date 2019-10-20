 #!/bin/bash

#do the inserting
sed -i -E "s~$(grep -oP '\#\>\>.+\<\<\#' ./insertTarget.sh)~$(echo "$(cat .\/codeToInsert.sh)" | sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g')~g" ./insertTarget.sh

#grep -oP --color=always '\#\>\>.+\<\<\#' ./insertTarget.sh     #nice display, debug

#echo "$(cat .\/codeToInsert.sh)" | sed -E ':a;N;$!ba;s/\r{0,1}\n/\\n/g'  #check if escaping works

# my marker:  #>>codeToInsert<<#

#test if it works
#echo "$(cat ./insertTarget.sh)"
./insertTarget.sh