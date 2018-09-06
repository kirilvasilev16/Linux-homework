#!/bin/bash
array_var=($PARAM1 $PARAM2 $PARAM3 $PARAM4 $PARAM5 $PARAM6 $PARAM7 $PARAM8 $PARAM9)


echo `cat template.txt | sed "s~@PARAM1@~$PARAM1~g" > new_file.txt`
text2=$(<new_file.txt)

for i in `seq 2 9`; do
text2=$(<new_file.txt)
parametre=@PARAM$i@
echo $text2 | sed "s~$parametre~${array_var[i-1]}~g" > new_file.txt
done