INSTANCEID=${1:-NO}

if [ "$INSTANCEID" = "NO" ]
then
	echo "tentukan instance id code yang akan dihentikan"
	exit 1
fi

aws ec2 terminate-instances --instance-ids $INSTANCEID
