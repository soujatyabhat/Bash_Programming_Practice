a=()
flag=0
echo -n "Enter a number : "
read number
for ((i = 0; i < $number; i++))
do
	echo -n "Enter $i value : "
	read data
	a[$i]=$data
done

echo -n "Which value you want to search ?"
read search
for (( i = 0; i < $data; i++ ))
do
	if [ ${a[$i]} -eq $search ]
	then
		flag=1
		break
	fi
done

if [ $flag -eq 1 ]
then
	echo "Data has found in $i index number"
else
	echo "Data has not found"
fi
 

