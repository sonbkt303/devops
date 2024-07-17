

- [1 Installed aws tool](#1-installed-aws-tool)
  - [Install Aws cli](#install-aws-cli)
    - [Verify installed](#verify-installed)
  - [Configure the AWS CLI](#configure-the-aws-cli)
    - [](#)

# 1 Installed aws tool

## Install Aws cli

[Install aws cli link]([installed-tool-aws.md](https://docs.aws.amazon.com/cli/latest/userguide/getting-started-install.html))

```bash
curl "https://awscli.amazonaws.com/awscli-exe-linux-x86_64.zip" -o "awscliv2.zip"
unzip awscliv2.zip
sudo ./aws/install
```

### Verify installed
```bash
aws --help
```

## Configure the AWS CLI

```bash
# Example configure
export AWS_ACCESS_KEY_ID=AKIAIOSFODNN7EXAMPLE
export AWS_SECRET_ACCESS_KEY=wJalrXUtnFEMI/K7MDENG/bPxRfiCYEXAMPLEKEY
export AWS_DEFAULT_REGION=us-west-2

# Another way to update configure
aws configure
```
### 


