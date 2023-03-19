# aws-ec2-demo
terraform demo for ssh access to ec2

## Guides

1. https://medium.com/@hmalgewatta/setting-up-an-aws-ec2-instance-with-ssh-access-using-terraform-c336c812322f
2. https://medium.com/@christyjacob4/using-vscode-remotely-on-an-ec2-instance-7822c4032cff
3. https://www.youtube.com/watch?v=yrFcA7GuB0g
## Docker Instructions

Below are instructions for setting up and using Docker.
### Docker Terraform Tool

1. Build docker file

```(bash)
docker build --rm -t tf-tool -f tf-tool.Dockerfile .
```

2. Run container in terminal

```(bash)
docker run --rm -it --mount type=bind,target=//root/code,source=/"$(pwd)" tf-tool
```

3. Exit container

```(bash)
exit
```

## Terraform Terminal Commands

These commands should be entered into the tf-tool Docker container terminal.

1. Navigate to the terraform folder

```(bash)
cd code/terraform-iac
```

2. Initialize terraform

```(bash)
terraform init
```

3. Plan terraform to spot issues before creating

```(bash)
terraform plan
```

4. Build

```(bash)
terraform apply
```

5. Destroy

```(bash)
terraform destroy
```