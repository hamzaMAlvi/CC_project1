# CC_project1

This repo contains the files submitted for the completion of project given in course CS-579 Cloud Computing, which was offered in Spring 2020 at FAST-NU.

### Description given for project

Create an AWS infrastructure for an application that can Autoscale and have a Load-balancer. For this, complete the following tasks:

1. Create two public subnets in different availability zones
2. Create two private subnets in different availability zones
3. Create a security group, which should allow inbound traffic for port 22 and port 80 from 0.0.0.0/0
4. Create a launch template for EC2 instance with the given userdata, and assign created security group.
5. Create an autoscaling group using the created launch template and private subnets.
6. Create a target group and attach this target group to the autoscaling group.
7. Create application load balancer and select existing target group for load balancer.

You have to automate these tasks using terraform.
