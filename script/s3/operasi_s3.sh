#!/bin/sh
OPERASI=${1:-no}
NAMABUCKET=${2:-no}

function error(){
   echo "aturan penggunaan"
   echo $0 [operasi] [nama-bucket]
   echo operasi = {create-bucket, delete-bucket}
   echo nama-bucket = nama
   exit 1
}

[[ $OPERASI = "no" ]]  && error
[[ $NAMABUCKET = "no" ]]  && error


command="aws s3api  $OPERASI  --bucket $NAMABUCKET"

$command
