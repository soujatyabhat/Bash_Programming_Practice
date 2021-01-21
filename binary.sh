echo -n "Enter range  : "
read range

flag=0
first=0
last=`expr $range - 1`
mid=`echo "(($first + $last) / 2)" | bc `

for (( i = 0; i < $range; i++))
do
	echo -n "Enter $i value : "
	read data
	a[$i]=$data
done


echo -n "Which value you want to search ? "
read search

while [ $last -ge $first ]
do
	if [ $search -gt ${a[$mid]} ]
	then
		first=`expr $mid + 1`
		
	elif [ ${a[$mid]} -eq $search ]
	then
		flag=1
		break
	else
		last=`expr $mid - 1` 
	fi
	
mid=`echo "(($first + $last) / 2)" | bc `
done 

if [ $flag -eq 1 ]
then
	echo "$search is present at `expr $mid + 1`"
else
	echo "$search is not present"
fi


