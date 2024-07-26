- [Install Jenkins](#install-jenkins)
  - [Check installation](#check-installation)
  - [Installation of Java](#installation-of-java)
- [Setup](#setup)
  - [Unlocks Jenkins](#unlocks-jenkins)
  - [Configure Github account](#configure-github-account)
    - [Generate developer personal access token](#generate-developer-personal-access-token)
    - [Config github account with jenkins](#config-github-account-with-jenkins)
      - [Go to: Manage Jenkins \> System \> Go to Git hub](#go-to-manage-jenkins--system--go-to-git-hub)
  - [Install jenkins docker plugins](#install-jenkins-docker-plugins)
  - [Setup Email notification](#setup-email-notification)
    - [Step 1: Install Email extension](#step-1-install-email-extension)
    - [Step 2: Configure Email](#step-2-configure-email)
    - [Step 3: Fix setup email if require](#step-3-fix-setup-email-if-require)


# Install Jenkins

[Install jenkins link on linux](https://www.jenkins.io/doc/book/installing/linux/)

```bash
sudo wget -O /usr/share/keyrings/jenkins-keyring.asc \
  https://pkg.jenkins.io/debian-stable/jenkins.io-2023.key
echo "deb [signed-by=/usr/share/keyrings/jenkins-keyring.asc]" \
  https://pkg.jenkins.io/debian-stable binary/ | sudo tee \
  /etc/apt/sources.list.d/jenkins.list > /dev/null
sudo apt-get update
sudo apt-get install jenkins
```

## Check installation 

```code
1. Setup Jenkins as a daemon launched on start: systemctl cat jenkins
2. If have troubleshooting Jenkins: journalctl -u jenkins.service
3. Set Jenkins to listen on port 8080. Access this port with your browser to start configuration. 
If Jenkins fails to start because a port is in use, run systemctl edit jenkins and add the following: 

systemctl edit jenkins

[Service]
Environment="JENKINS_PORT=8081"

```

## Installation of Java
Jenkins requires Java to run, yet not all Linux distributions include Java by default. Additionally, not all Java versions are compatible with Jenkins.

```bash
sudo apt update
sudo apt install fontconfig openjdk-17-jre
java -version
openjdk version "17.0.8" 2023-07-18
OpenJDK Runtime Environment (build 17.0.8+7-Debian-1deb12u1)
OpenJDK 64-Bit Server VM (build 17.0.8+7-Debian-1deb12u1, mixed mode, sharing)
```

# Setup
## Unlocks Jenkins

![alt text](../images/jenkins/jenkins-status.png)


## Configure Github account

[How To Set Up Continuous Integration With Git and Jenkins](https://www.lambdatest.com/blog/how-to-setup-continuous-integration-with-git-jenkins/)


### Generate developer personal access token

![alt text](../images/jenkins/jenkins-generate-git-token.png)

### Config github account with jenkins

#### Go to: Manage Jenkins > System > Go to Git hub

![alt text](../images/jenkins/jenkins-git-configure.png)

## Install jenkins docker plugins

![alt text](../images/jenkins/jenkins-docker-plugins.png)

## Setup Email notification

### Step 1: Install Email extension
### Step 2: Configure Email 

![alt text](../images/jenkins/jenkins-email-config.png)

### Step 3: Fix setup email if require
- Turn on security app: https://support.google.com/accounts/answer/185839?sjid=11118287221127811570-AP
- Support create google app account: https://support.google.com/accounts/answer/185833?sjid=11118287221127811570-AP
