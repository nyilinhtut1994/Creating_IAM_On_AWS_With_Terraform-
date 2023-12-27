# AWS IAM User Setup with Terraform

## Overview

This Terraform configuration sets up an IAM user on AWS, attaches a custom policy to it, and adds the user to a specified IAM group.

## Usage

### 1. Clone the Repository:

```bash
git clone https://github.com/nyilinhtut1994/Creating_IAM_On_AWS_With_Terraform-.git
```
### 2. Navigate to the Project Directory:

```bash
cd terraform-iam-user

```
### 3. Update AWS Credentials:
Ensure your AWS credentials are correctly configured in your `~/.aws/config` and `~/.aws/credentials` files.

### 4. Review and Modify Variables (Optional):
Open `variables.tf` and `main.tf`to review or customize IAM user details, policy, and group.

### 5. terraform init
```bash
terraform init
```
### 6. terraform plan
```bash
terraform plan
```

### 7. terraform apply
```bash
terraform apply
```

### 8. Inputs/Outputs:
After applying, Terraform will display details like the IAM user created, policy attached, and group membership.

## Configuration Files
    * main.tf: Defines AWS IAM user, IAM user policy, and IAM user group membership.
    * variables.tf: Input variables for IAM user details, policy, and group.
    * version.tf: Specifies the required Terraform version and AWS provider version. 

## Variables

You can change the variables.tf file depend on your requirments.

    * username1: IAM username (default: "test").
    * group: IAM group name (default: "IT-department").
    * policy-name: Name of the IAM user policy (default: "S3_get_put").
    * policy: IAM user policy document with S3 permissions.

## Outputs
Displays information about the IAM user, IAM user policy, and IAM user group membership.

Feel free to customize the default values in variables.tf according to your specific requirements. After making changes, run terraform init and terraform apply to apply the Terraform configuration.

```bash

Copy and paste this Markdown content into the README editor on README.so. Adjust the URLs, paths, or any other details as needed for your specific project and hosting environment.
