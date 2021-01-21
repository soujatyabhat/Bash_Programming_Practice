echo -n "Enter year : "
read year
if [ `expr $year % 100` -eq 0 ]
then
	if [ `expr $year % 400` -eq 0 ]
	then
		echo "Given year $year is leap year"
	else
		echo "Given year $year is not leap year"
	fi

else
	if [ `expr $year % 4` -eq 0 ]
	then
		echo "Given year $year is leap year"
	else
		echo "Given year $year is not leap year"
	fi

fi

