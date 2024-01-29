KEYNAME=$NAMAUSER-key

aws ec2 delete-key-pair --key-name $KEYNAME
