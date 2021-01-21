echo -n "Enter user name : "
read name
while [ 1 ]
do
	`cat /etc/passwd > rmp`
	if [ `grep -wc $name rmp` -gt 0 ]
	then
		echo "User is Online :)"
		break
	else
		echo "User is not Online :("
	fi
	
sleep 3
done

