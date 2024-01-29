KEYNAME=$NAMAUSER-key
#aws ec2 delete-key-pair --key-name $KEYNAME


#untuk create private key
ssh-keygen -N "" -f /tmp/mykeypair.pem -t rsa -m pem
chmod og-rwx /tmp/mykeypair.pem

#untuk menghasilkan public key dari privatekeynya
ssh-keygen -y -f /tmp/mykeypair.pem > /tmp/mykeypair.pub



aws ec2 import-key-pair \
 --key-name $KEYNAME \
 --public-key-material fileb:///tmp/mykeypair.pub


