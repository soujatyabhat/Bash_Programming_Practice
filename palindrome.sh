echo -n "Enter a number : "
read number
temp=$number
rev=0
rem=0
while [ $temp -gt 0 ]
do
	rem=`expr $temp % 10`
	rev=`expr $rev \* 10 + $rem`
	temp=`expr $temp / 10`
done
if [ $rev -eq $number ]
then
	echo "Given number $number is palindrome"
else
	echo "Given number $number is not palindrome"
fi
