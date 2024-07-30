#!/bin/bash

fileName=$1

DATE=$(date '+%Y-%m-%d')

if [ -z "${fileName}" ]; then
    fileName="jenkins-backup-$DATE.tar.gz"
    # echo "VAR is unset or set to the empty string $fileName"
else
    fileName=$1
fi

aws s3 cp s3://jenkins-2024/$fileName $fileName

sudo systemctl stop jenkins

sudo rm -rf /var/lib/jenkins/

sudo tar -zxvf ~/$fileName -C /

sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins