echo -n "Enter prime range  : "
read range
for (( i = 2; i <= $range; i++ ))
do
flag=0
	for (( j = 2; j <= $i / 2; j++ ))
	do
		if [ `expr $i % $j` -eq 0 ]
		then
			flag=1
			break
		fi
	done
	
if [ $flag -eq 0 ]
then
	echo -n $i " "
fi
done
 
	
