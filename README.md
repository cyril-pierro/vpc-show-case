# TERRAFORM CONFIGURATION TO DIFFERENT ENVIRONMENTS

# test workflow for development
## Run Pre configuration first

```bash
    cd setup
    terraform init
    terraform fmt -check -recursive .
    terraform validate
    terrascan scan --severity high
    terraform plan
```
## START PROVISIONING
```bash
    export AWS_ACCESS_KEY_ID=your access key
    export AWS_SECRET_ACCESS_KEY=your secret key
    export AWS_DEFAULT_REGION=us-east-1
    export TF_VAR‍_environment=development
    cd setup
    terraform apply -auto-approve
```

## App Dependencies
```bash
    curl -L "$(curl -s https://api.github.com/repos/tenable/terrascan/releases/latest | grep -o -E "https://.+?_Darwin_x86_64.tar.gz")" > terrascan.tar.gz
    tar -xf terrascan.tar.gz terrascan && rm terrascan.tar.gz
    install terrascan /usr/local/bin && rm terrascan
    terrascan
```