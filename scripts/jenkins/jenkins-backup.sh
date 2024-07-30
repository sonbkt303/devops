#!/bin/bash

fileName=$1
DATE=$(date '+%Y-%m-%d')

if [ -z "${fileName}" ]; then
    fileName="jenkins-backup-$DATE.tar.gz"
    # echo "VAR is unset or set to the empty string $fileName"
else
    fileName=$1
fi

echo $fileName

sudo tar -zcvf ~/$fileName /var/lib/jenkins

aws s3 cp ~/$fileName s3://jenkins-2024/$fileName

