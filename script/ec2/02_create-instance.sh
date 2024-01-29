#https://docs.aws.amazon.com/AWSEC2/latest/UserGuide/launch-instances-from-launch-template.html
#https://docs.aws.amazon.com/autoscaling/ec2/userguide/examples-launch-templates-aws-cli.html
KEYNAME=$NAMAUSER-key
IMAGEID=ami-007855ac798b5175e
INSTANCETYPE=t2.micro
NAMATEMPLATE=$NAMAUSER-template

#create instance
aws ec2 create-launch-template \
	--launch-template-name $NAMATEMPLATE \
	--version-description version1 \
	--launch-template-data '{"ImageId": "'$IMAGEID'","InstanceType":"'$INSTANCETYPE'", "KeyName": "'$KEYNAME'" }'


##install linux
aws ec2 run-instances \
    --launch-template LaunchTemplateName=$NAMATEMPLATE,Version=1 \
    --user-data file://run-install-script.txt
