# AWS Infrastructure Setup with Terraform

This project sets up an AWS infrastructure using Terraform. The configuration includes a Virtual Private Cloud (VPC), subnets, an internet gateway, a security group, an application load balancer (ALB), an auto-scaling group (ASG), and associated resources.

## Prerequisites

1. **Terraform**: Ensure Terraform is installed on your system. You can download it from [Terraform's official website](https://www.terraform.io/downloads).
2. **AWS CLI**: Install and configure the AWS CLI with appropriate credentials.
3. **AWS Account**: A valid AWS account with permissions to create resources like VPCs, subnets, and EC2 instances.

## Resources Created

### Networking Components
- **VPC**: A custom Virtual Private Cloud with a CIDR block of `10.0.0.0/16`.
- **Subnets**: Two public subnets in different availability zones (`us-east-1a` and `us-east-1b`).
- **Internet Gateway**: Allows internet access for resources in the VPC.
- **Route Table**: Public route table associated with the subnets.

### Compute Components
- **Launch Template**: Defines an EC2 instance with NGINX pre-installed.
- **Auto Scaling Group**: Automatically scales instances between 2 and 5 based on demand.

### Load Balancer Components
- **Application Load Balancer (ALB)**: Distributes traffic across instances.
- **Target Group**: Manages routing and health checks for EC2 instances.
- **Listener**: Listens on port 80 and forwards traffic to the target group.

### Security
- **Security Group**: Allows HTTP (port 80) and SSH (port 22) access from all IPs.

## Getting Started

### . Initialize Terraform
Run the following command to initialize Terraform and download necessary providers:
```bash
terraform init
```

### . Validate the Configuration
Check for syntax errors in the configuration:
```bash
terraform validate
```

### . Plan the Deployment
Preview the resources that will be created:
```bash
terraform plan
```

### . Apply the Configuration
Deploy the resources to AWS:
```bash
terraform apply
```
Follow the prompts and type `yes` to confirm the deployment.

![Screenshot (151)](https://github.com/user-attachments/assets/7a495137-2095-4340-8a09-7452866b4de0)

### . Access the Application
Once the deployment is complete, you can access the application using the DNS name of the ALB. To find the DNS name:
1. Navigate to the AWS Management Console.
2. Open the **Load Balancers** section under EC2.
3. Copy the DNS name of the ALB and open it in your browser.

You should see the message: **Welcome to This Webserve</h1> \nThe Content and the infrastructure is created using Terraform**.

## Clean Up
To destroy the resources and avoid unnecessary costs, run:
```bash
terraform destroy
```
Type `yes` to confirm the destruction.

## Notes
- The AMI ID in the launch template is region-specific. Update the `image_id` in the code if deploying to a different region.
- Modify the CIDR blocks and instance types as needed for your use case.


---

