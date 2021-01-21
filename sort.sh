echo -n "Enter range : "
read number

a=()
for (( i = 0; i < $number; i++ ))
do
	echo -n "Enter $i value ":
	read data
	a[$i]=$data 
done 
echo "Before sort : ${a[@]}"

for (( i = 0; i < $number; i++ ))
do
	for (( j = 0; j < $number - $i - 1; j++ ))
	do
		if [ ${a[$j]} -ge ${a[`expr $j + 1`]} ]
		then
			temp=${a[$j]}
			a[$j]=${a[`expr $j + 1`]}
			a[`expr $j + 1`]=$temp
		fi
	done
done

echo "After sort : ${a[@]}"
