#!/bin/bash

ip=$1;
#scp -i .ssh/aws/k8s/k8s2024.pem -r myfile.txt ubuntu@54.205.177.43:/home/ubuntu

# scp -i /home/$USER/.ssh/aws2024.pem -r myfile.txt ubuntu@54.205.177.43:/home/ubuntu

scp -i /home/$USER/.ssh/aws2024.pem /home/$USER/.bash_aliases ubuntu@$ip:/home/ubuntu/.bash_aliases

sudo ssh -i /home/$USER/.ssh/aws2024.pem ubuntu@$1 "source ~/.bash_aliases"



