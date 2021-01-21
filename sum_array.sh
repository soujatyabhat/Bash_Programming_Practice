echo -n "Enter range :  "
read range

array=()
sum=0

for (( i = 0; i < $range; i++ ))
do	
	echo -n "Enter $i data : "
	read data
	array[$i]=$data
	sum=`expr $sum + ${array[$i]}`  
done
echo "Sum: $sum"

