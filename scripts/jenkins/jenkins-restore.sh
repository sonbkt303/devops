#!/bin/bash

aws s3 cp s3://jenkins-2024/jenkins-backup.tar.gz jenkins-backup.tar.gz

sudo rm -rf /var/lib/jenkins/

sudo tar -zxvf jenkins-backup.tar.gz -C /

sudo systemctl enable jenkins

sudo systemctl start jenkins

sudo systemctl status jenkins