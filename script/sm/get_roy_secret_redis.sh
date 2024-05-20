rediscmd="redis-cli -u redis://localhost:7777 --raw"

function get_data(){
   WAKTUCACHE=300
   D=$(echo "get mysecret" | $rediscmd)
   if [ "$D" != "" ]
   then
	   X=$(echo $D | base64 -d )
   else
	   X=$(aws secretsmanager get-secret-value --secret-id roy_secret) 
	   XX=$(echo $X | base64 -w0)
	   echo "setex mysecret $WAKTUCACHE  $XX" | $rediscmd 
   fi
   echo $X | jq .SecretString  | jq -r | jq
}


get_data 


