a=()
echo -n "Enter range : "
read n
for (( i = 0; i <$n; i++ ))
do
	echo -n "Enter $i element : "
	read data
	a[$i]=$data
done
echo "Data : ${a[@]}"


