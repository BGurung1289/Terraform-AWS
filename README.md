# Terraform-AWS

Prerequisites:
Install AWS IAM Authenticator
Create Access Keys on the AWS account
Create a key pair on the EC2 dashboard of AWS

Instructions:
```
cd into the base folder
terraform init
terraform plan -out <filename>.tfplan
terraform apply <filename>tfplan
```

Creates:

- 1 VPC
- 2 Public Subnets
- 1 Internet gateway
- 1 route table
- 1 security group
- 1 Bastion
- 1 EFS (Elastic File System)
- 2 EFS Mount targets
