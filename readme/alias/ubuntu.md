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
alias kbrs='kubectl get rs -o wide'
alias kbsc='kubectl get sc' # Get storage class
alias kbns='kubectl get namespace'
alias kbconfigmap='kubectl get configmap' # kubectl get configmap -n (n is namespace)


alias kbsecret='kubectl get secrets -o wide'
alias kbdessecret='kubectl describe secret'
alias kbgetall='kubectl get all'
alias kbingress='kubectl get ingress' # kubectl get ingress -n namespace
alias kbdesingress='kubectl describe ingress' # kubectl get ingress -n namespace
alias kbcontext='kubectl config current-context' # kubectl config current-context {ingress} -n {namespace}
alias kbconfigview='kubectl config view' # kubectl get configview
alias kbsetns=' kubectl config set-context --current --namespace=' # set current namespace




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


# Other

alias sshpath='cd ~/.ssh'
alias asedit='sudo nano ~/.bash_aliases'
alias osversion='cat /etc/os-release'
alias terpath='cd /home/ku_dev/repositories/terraform'
alias refresh='source ~/.bash_aliases'
alias sshgen='ssh-keygen -m PEM -t rsa -b 4096' # ssh-keygen -t rsa -b 4096 -C "your_email@example.com" -f $HOME/.ssh/id_rsa


# Other os
alias osupdate='sudo apt-get update'
alias osreload='sudo systemctl daemon-reload'
alias edithosts='sudo nano /etc/hosts'