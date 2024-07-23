```bash
# GIT
function Get-GitStatus {& git status $args }
SET-Alias -Name gst -Value Get-GitStatus

function Get-GitPush { & git push $args }
SET-Alias -Name gps -Value Get-GitPush -Force -Option AllScope

function Get-GitCommit { & git commit -m $args }
SET-Alias -Name gcm -Value Get-GitCommit -Force -Option AllScope

function Get-GitPull { & git pull $args }
SET-Alias -Name gpl -Value Get-GitPull -Force -Option AllScope

function Get-GitCheckout { & git checkout $args }
SET-Alias -Name gck -Value Get-GitCheckout -Force -Option AllScope

function Get-GitBranch { & git branch $args }
SET-Alias -Name gbr -Value Get-GitBranch -Force -Option AllScope

function Get-GitRemote { & git remote -v $args }
SET-Alias -Name grt -Value Get-GitRemote -Force -Option AllScope

#Docker
function Get-RuningDockerContainer { & docker ps $args}
SET-Alias -Name dkps -Value Get-RuningDockerContainer -Force -Option AllScope

function Get-DockerImages { & docker images $args}
SET-Alias -Name dkims -Value Get-DockerImages -Force -Option AllScope

function Get-DockerStartContainer { & docker start $args}
SET-Alias -Name dkst -Value Get-DockerStartContainer -Force -Option AllScope -Description 'Start Container'

function Get-DockerStopContainer { & docker stop $args}
SET-Alias -Name dkstop -Value Get-DockerStopContainer -Force -Option AllScope -Description 'Stop Container'

function Get-DockerRemoveImage { & docker rmi $args}
SET-Alias -Name dkrmi -Value Get-DockerRemoveImage -Force -Option AllScope -Description 'Remove Image Container'

function Get-DockerExecContainer { & docker exec -it $args /bin/bash }
SET-Alias -Name dkexec -Value Get-DockerExecContainer -Force -Option AllScope -Description 'Exec Container'

function Get-DockerRemoveContainer { & docker rm $args}
SET-Alias -Name dkrm -Value Get-DockerRemoveContainer -Force -Option AllScope -Description 'Remove Container'

#Kubectl

function Get-KubectlContextList { &  kubectl config get-contexts $args}
SET-Alias -Name kbctl -Value Get-KubectlContextList -Force -Option AllScope -Description 'Get ContextList'

function Get-KubectlReplicasets { & kubectl get replicasets $args}
SET-Alias -Name kbrs -Value Get-KubectlReplicasets -Force -Option AllScope -Description 'Get Replicasets'

function Get-KubectlGetPods { & kubectl get pods $args}
SET-Alias -Name kbpl -Value Get-KubectlGetPods -Force -Option AllScope -Description 'Get Kubectl Pods'


function Get-KubectlDeletePods { & kubectl delete pods $args}
SET-Alias -Name kbdelp -Value Get-KubectlDeletePods -Force -Option AllScope -Description 'Get Kubectl Delete Pods'

function Get-KubectlGetDeployment { & kubectl get deployment $args}
SET-Alias -Name kbdpl -Value Get-KubectlGetDeployment -Force -Option AllScope -Description 'Get Kubectl Get Deployment'


function Get-KubectlDescriblePod { & kubectl describe pod $args}
SET-Alias -Name kbdesp -Value Get-KubectlDescriblePod -Force -Option AllScope -Description 'Get Kubectl Get Deployment'

function Get-KubectlGetAll { & kubectl get all -o wide $args}
SET-Alias -Name kbga -Value Get-KubectlGetAll -Force -Option AllScope -Description 'Get Kubectl Get All'

function Get-KubectlGetDiff { & kubectl diff -f deployment.yaml $args}
SET-Alias -Name kbdiff -Value Get-KubectlGetDiff -Force -Option AllScope -Description 'Get Kubectl Get Diff'

function Get-KubectlGetClusterInfo { & kubectl cluster-info $args}
SET-Alias -Name kbdiff -Value Get-KubectlGetDiff -Force -Option AllScope -Description 'Get Kubectl Get Diff'

function Get-KubectlGetConfigMaps { & kubectl get configMaps $args}
SET-Alias -Name kbMaps -Value Get-KubectlGetConfigMaps -Force -Option AllScope -Description 'Get Kubectl Get configMaps'

function Get-KubectlDescribeConfigMaps { & kubectl describe configmap $args}
SET-Alias -Name kbdesMaps -Value Get-KubectlDescribeConfigMaps -Force -Option AllScope -Description 'Get Kubectl Get configMaps'

function Get-KubectlLogPods { & kubectl logs -f $args}
SET-Alias -Name kblog -Value Get-KubectlLogPods -Force -Option AllScope -Description 'Get Kubectl Log Port'



# Project
function Get-UseEvnContextDev { & kubectl config use-context kubernetes-admin@cl-ko-dev $args}
SET-Alias -Name kbusedev -Value Get-UseEvnContextDev -Force -Option AllScope -Description 'Get Kubectl use dev context'

function Get-UseEvnContextQa { & kubectl config use-context kubernetes-admin@cl-ko-qa $args}
SET-Alias -Name kbuseqa -Value Get-UseEvnContextQa -Force -Option AllScope -Description 'Get Kubectl use qa context'

function Get-UseEvnContextProd { & kubectl config use-context kubernetes-admin@cl-ko-prod $args}
SET-Alias -Name kbuseprod -Value Get-UseEvnContextProd -Force -Option AllScope -Description 'Get Kubectl use prod context'

function Get-UseEvnFowardPort { & kubectl port-forward --address 0.0.0.0 svc/mongodb-mongos --namespace mongodb 27017 $args}
SET-Alias -Name kbfwport -Value Get-UseEvnFowardPort -Force -Option AllScope -Description 'Get Kubectl use prod context'


# Terraform

function Get-TerraformPlpan { & terraform plan  $args}
SET-Alias -Name terplan -Value Get-TerraformPlpan -Force -Option AllScope -Description 'Get Terraform Plan'

function Get-TerraformValidate { & terraform plan  $args}
SET-Alias -Name tervalid -Value Get-TerraformValidate -Force -Option AllScope -Description 'Get Terraform Validate'

function Get-TerraformFormat { & terraform fmt  $args}
SET-Alias -Name terfmt -Value Get-TerraformFormat -Force -Option AllScope -Description 'Get Terraform Validate'

function Get-TerraformApply { & terraform apply  $args}
SET-Alias -Name terapply -Value Get-TerraformApply -Force -Option AllScope -Description 'Get Terraform Validate'

function Get-TerraformConsole { & terraform console  $args}
SET-Alias -Name terclg -Value Get-TerraformConsole -Force -Option AllScope -Description 'Get Terraform Console'


# Common

function Get-CreateFile { & New-Item $args}
SET-Alias -Name touch -Value Get-CreateFile -Force -Option AllScope -Description 'Create new file'

function Get-SetVariable { & Set-Variable $args}
SET-Alias -Name set -Value Get-SetVariable -Force -Option AllScope -Description 'Create new file'

function Get-KillNodeProcess { & taskkill /f /im node.exe $args}
SET-Alias -Name killnode -Value Get-KillNodeProcess -Force -Option AllScope -Description 'Kill all node process'

# Project
function Get-MoveToClkGraphProject { set-location "C:\Users\EVN0031\Desktop\Ewoosoft\repositories\vtsw\clkgraph" }
SET-Alias -Name clkg -Value Get-MoveToClkGraphProject -Force -Option AllScope -Description 'Move to Clkgraph Project'
function Get-MoveToClkGraphProject { set-location "C:\Users\EVN0031\Desktop\Ewoosoft\repositories\vtsw\clkgraph" }
SET-Alias -Name clkg -Value Get-MoveToClkGraphProject -Force -Option AllScope -Description 'Move to Clkgraph Project'
function Get-MoveToClkBoardProject { set-location "C:\Users\EVN0031\Desktop\Ewoosoft\repositories\vtsw\clkboard" }
SET-Alias -Name clkb -Value Get-MoveToClkBoardProject -Force -Option AllScope -Description 'Move to ClkBoard Project'

function Get-MoveToClkManagerProject { set-location "C:\Users\EVN0031\Desktop\Ewoosoft\repositories\vtsw\clkmanager" }
SET-Alias -Name clkm -Value Get-MoveToClkManagerProject -Force -Option AllScope -Description 'Move to ClkManager Project'

# function gotoa { set-location "F:\a" }
# new-alias cdt gotoa

# Get-Variable -Name "desc"
```