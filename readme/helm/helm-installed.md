

- [Installation Helm](#installation-helm)

#  Installation Helm


[Install From Apt (Debian/Ubuntu)](https://helm.sh/docs/intro/install/)
https://artifacthub.io/packages/helm/prometheus-community/kube-prometheus-stack

```bash
curl https://baltocdn.com/helm/signing.asc | gpg --dearmor | sudo tee /usr/share/keyrings/helm.gpg > /dev/null
sudo apt-get install apt-transport-https --yes
echo "deb [arch=$(dpkg --print-architecture) signed-by=/usr/share/keyrings/helm.gpg] https://baltocdn.com/helm/stable/debian/ all main" | sudo tee /etc/apt/sources.list.d/helm-stable-debian.list
sudo apt-get update
sudo apt-get install helm
```