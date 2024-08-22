```bash
# GIT
alias hi='echo hello world'
alias gst='git status'
alias gps='git push'
alias gpl='git pull'
alias gcm='git commit -m'
alias gck='git checkout'
alias gbr='git branch'
alias gadd='git add .'

# DOCKER

alias dkps='docker ps'
alias dkpsa='docker ps -a'
alias dkimg='docker images'
alias dkstart='docker start'
alias dkstop='docker stop'
alias dkrm='docker rm'
alias dklogin='docker login'
alias dktag='docker image tag' # Copy image to another name. Ex: docker image tag 3c784ee0df0a kimsonbui/currency-exchange-devops
alias dkpush='docker image push' # Push image to docker hub. Ex: docker image push {image}:{tag}
alias dkdelall='docker rm -v -f $(docker ps -qa)'
alias dkprune='docker system prune'
alias dkup='docker-compose up'
alias dkdown='docker-compose down'
alias dkrun='docker run -p 3000:3000 -name node-lib -d node-lib:v1'

dkbuild () {
    # $1 = $secret name
    # $2 = number of replica
    docker build -t $1 .
}


# Kubectl
alias kb='kubectl'
alias kbdpm='kubectl get deployments'
alias kbcluster='kubectl cluster-info'
alias kbapply='kubectl apply -f'


alias kbsvc='kubectl get svc'
alias kbpods='kubectl get pods -o wide'
alias kbdespods='kubectl describe pods'

alias kbnodes='kubectl get nodes -o wide'
alias kbevents='kubectl get events'

alias kbservices='kubectl get services'
alias kbservice='kubectl service' # Create a SSH tunnel from pod to your host and open windows in your default browser that's connected to the service
alias kbsvcdel='kubectl delete service'

alias kbview='kubectl config view'
alias kblogs='kubectl logs'
alias kbdpmdel='kubectl delete deployment'
alias kbproxy='kubectl proxy'
alias kbdes='kubectl describe'
alias kbdespod='kubectl describe pods'
alias kbdesnode='kubectl describe node'
alias kbdessecret='kubectl describe secret'
alias kbdessvc='kubectl describe service'
alias kbrs='kubectl get rs -o wide'
alias kbsc='kubectl get sc' # Get storage class
alias kbns='kubectl get namespace'
alias kbpodsns='kubectl get pod -namespace'

alias kbjobs='kubectl get jobs'
alias kbcj='kubectl get cronjob'

alias kbdelns='kubectl delete ns'
alias kbdeljob='kubectl delete job'
alias kbdelpod='kubectl delete pod'
alias kbdelcj='kubectl delete cronjob'
alias kbdelrs='kubectl delete rs'
alias kbdeldpm='kubectl delete deployment'
alias kbdelsvc='kubectl delete service'
alias kbdelpod='kubectl delete pod -f' 
alias kbgetsystem='kubectl get pod -n kube-system'
alias kbgetnsdb='kubectl get all -n kubernetes-dashboard'








alias kbcreatens='kubectl create namespace'
alias kbconfigmap='kubectl get configmap' # kubectl get configmap -n (n is namespace)
alias kbcreatetoken='kubeadm token create --print-join-command' 
alias kbsecret='kubectl get secrets -o wide'
alias kbgetall='kubectl get all'
alias kbingress='kubectl get ingress' # kubectl get ingress -n namespace
alias kbdesingress='kubectl describe ingress' # kubectl get ingress -n namespace
alias kbcontext='kubectl config current-context' # kubectl config current-context {ingress} -n {namespace}
alias kbconfigview='kubectl config view' # kubectl get configview
alias kbsetns=' kubectl config set-context --current --namespace=' # set current namespace
alias kbendpoint='kubectl get endpoints' # set current namespace




# alias kbdfnodeport="export NODE_PORT=$(kubectl get services/kubernetes-bootcamp -o go-template='{{(index .spec.ports 0).nodePort}}')"
# alias kbdfnamepod="export POD_NAME=$(kubectl get pods -o go-template --template '{{range .items}}{{.metadata.name}}{{"\n"}}{{end}}')"



kbenv () {
    #do things with parameters like $1 such as
    # $1 = role (Contributor), $2 = subscriptionId
    kubectl exec $1 -- env
}

kbexec () {
    # $1 = $POD_NAME
    kubectl exec -ti $1 -- bash
}

kblabel () {
    # $1 = $POD_NAME
    # $2 = Label
    kubectl label pods $1 version=$2
}

kbscale () {
    # $1 = $deployment name
    # $2 = number of replica
    kubectl scale $1 --replicas=$2
}

kbgetsecret () {
    # $1 = $secret name
    # $2 = number of replica
    kubectl get secret $1 -o jsonpath='{.data}'
}

kbpodIp () {
    podName=$1;
    kubectl get pods -l run=$podName -o custom-columns=POD_IP:.status.podIPs
}


sshAws () {
    # ssh -i "/home/ku_dev/.ssh/aws/k8s/k8s2024.pem" ubuntu@ec2-54-173-183-41.compute-1.amazonaws.com
    ip=$1;
    # ipUpdated="${ip//./-}"
    # echo Remote Ip addess is: $ipUpdated
    # sudo ssh -i "/home/ku_dev/.ssh/aws/k8s/k8s2024.pem" ubuntu@$ipUpdated
    sudo ssh -i "/home/ku_dev/.ssh/aws/k8s/k8s2024.pem" ubuntu@$1
}

sshAlias () {
    ip=$1;

    scp -i /home/$USER/.ssh/aws2024.pem /home/$USER/.bash_aliases ubuntu@$ip:/home/ubuntu/.bash_aliases

    sudo ssh -i /home/$USER/.ssh/aws2024.pem ubuntu@$1 "source ~/.bash_aliases"
}

initServer() {
    cd /home/ku_dev/repositories/devops/scripts/terraform/instance-infrasructure

    terraform apply -auto-approve

    ip=$(terraform output instance_public_ip);

    # echo "Ip: $ip"

    # ip=${ip//\"/}

    # echo $ip

    # sleep 2s;

    # echo scp -i /home/$USER/.ssh/aws2024.pem /home/$USER/.bash_aliases ubuntu@$ip:/home/ubuntu/.bash_aliases

    # sudo scp -i /home/$USER/.ssh/aws2024.pem /home/$USER/.bash_aliases ubuntu@$ip:/home/ubuntu/.bash_aliases

    # sudo ssh -i /home/$USER/.ssh/aws2024.pem ubuntu@$ip "source ~/.bash_aliases"

    # sshAlias $ip;
}


# Minikube
alias mn='minikube'
alias mnstart='minikube start'
alias mnstartprofile='minikube start --driver=docker --container-runtime=containerd --profile'
alias mnstop='minikube stop'
alias mndb='minikube dashboard --url'
alias mnsvc='minikube service'
alias mnip='echo $(minikube ip):$NODE_PORT'
alias mnprofiles='minikube profile list'
alias mnprofile='minikube profile' # Switch to minikube profile Ex: "minikube profile mike-bkt"
alias mndel='minikube delete -p' # Delete profile minikube from mnprofile
alias mnads='minikube addons list' # Dminikube addons list
alias mnsvc="minikube service --all"
alias mnsvcls="minikube service list"

alias mnenableingress="minikube addons enable ingress"
alias mnauditlogs="cat ~/.minikube/logs/audit.json"



#Terraform

alias terlogin='terraform login'
alias terinit='terraform init'
alias terplan='terraform plan'
alias terplanout='terraform plan -out plan.out'
alias terapply='terraform apply'
alias terapplyauto='terraform apply -auto-approve'
alias terfmt='terraform fmt'
alias terdestroy='terraform destroy'
alias terdestroyauto='terraform destroy -auto-approve'
alias terfmt='terraform fmt'
alias terclg='terraform console'
alias tervalid='terraform validate'
alias tershow='terraform show'
alias tershowjson='terraform show -json plan.out > plan.json'
alias tergraph='terraform graph'
alias terwsshow='terraform workspace show'
alias terwsnew='terraform workspace new'
alias terwslist='terraform workspace list'
alias terwsselect='terraform workspace select'
alias terstatelist='terraform state list'
alias terversion='terraform version'
alias teroutput='terraform output'



# Azure CLI
alias azacclist='az account list -o table'
alias azlogin='az login'
alias azlogout='az logout'
alias azloginNoSub='az login --allow-no-subscriptions'
alias azaccshow='az account show'
alias azacclist='az account list'
alias azsplist='az ad sp list --output table'
alias azspdel='az ad sp delete --id'
createServicePrincipal () {
    #do things with parameters like $1 such as
    # $1 = role (Contributor), $2 = subscriptionId
    az ad sp create-for-rbac --role="$1" --scopes="/subscriptions/$2"
}

# AWS CLI
alias awsconfig='aws configure'

# Asible
alias as='ansible'
alias asping='ansible -m ping'
alias aspath='cd /etc/ansible'


# Jenkins
alias jkstart='sudo systemctl start jenkins'
alias jkstop='sudo systemctl stop jenkins'
alias jkrestart='sudo systemctl restart jenkins'
alias jkstatus='sudo systemctl status jenkins'
alias jkedit='sudo nano /lib/systemd/system/jenkins.service'
alias jkeditdefault='sudo nano /etc/default/jenkins'
alias jkenable='sudo systemctl enable jenkins'
alias jkreload='sudo q systemctl daemon-reload'
alias jkbackup='sudo tar -zcvf jenkins-backup.tar.gz /var/lib/jenkins/'
alias jk2S3='sudo tar -zcvf jenkins-backup.tar.gz /var/lib/jenkins/'



# Other

alias sshpath='cd ~/.ssh'
alias asedit='sudo nano ~/.bash_aliases'
alias osversion='cat /etc/os-release'
alias terpath='cd /home/ku_dev/repositories/terraform'
alias refresh='source ~/.bash_aliases'
alias sshgen='ssh-keygen -m PEM -t rsa -b 4096' # ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f $HOME/.ssh/



# Other os
alias osupdate='sudo apt-get update'
alias osreload='sudo systemctl daemon-reload'
alias edithosts='sudo nano /etc/hosts'
alias cloudlog='cat /var/log/cloud-init-output.log'

certOneline () {
    fileName=$1
    echo "File Name: $fileName"
    awk 'NR>2 { sub(/\r/, ""); printf "%s",last} { last=$0 }' $fileName
}

```