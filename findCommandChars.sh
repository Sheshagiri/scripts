str1=$1;
i=0
while [ $i -ne ${#str1} ]
do
    c=${str1:$i:1}
    if [[ $2 == *$c* ]]
    then
      echo $c
    fi
    ((i++))
done
