echo -n "Enter a number : "
read number
temp=$number
rev=0
sum=0
while [ $temp -gt 0 ]
do
	rev=`expr $temp % 10`
	sum=`expr $sum + $rev \* $rev \* $rev`
	temp=`expr $temp / 10`
done
if [ $number -eq $sum ]
then
	echo "Given digit $number is armstrong"
else
	echo "Given digit $number is not armstrong"
fi
