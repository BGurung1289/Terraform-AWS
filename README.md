# Terraform-AWS
# Please see other branches to see other versions of the Terraform scripts. 
Prerequisites:

- Install AWS IAM Authenticator

- Create Access Keys on the AWS account

- Create a key pair on the EC2 dashboard of AWS

- Configure the variable.tf file with the correct information

Instructions:

``` 
cd \base
terraform init
terraform plan -out <filename>.tfplan
terraform apply <filename>.tfplan

```


Creates:

- 1 VPC
- 2 Public Subnets
- 1 Internet gateway
- 1 route table
- 1 security group
- 2 AWS instances

-----


