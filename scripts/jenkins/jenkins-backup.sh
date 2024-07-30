#!/bin/bash

sudo tar -zcvf ~/jenkins-backup.tar.gz /var/lib/jenkins

aws s3 cp ~/jenkins-backup.tar.gz s3://jenkins-2024/jenkins-backup.tar.gz

