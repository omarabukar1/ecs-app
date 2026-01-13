# 🚀 ECS Application Deployment on AWS

This repository contains a production-style deployment of a containerised Node.js application on AWS using ECS (Fargate).  
The project demonstrates Infrastructure as Code, CI/CD automation, and scalable cloud architecture following DevOps best practices.

---

## 🧱 Architecture Overview

The application is deployed on **AWS ECS (Fargate)** behind an **Application Load Balancer**.  
All infrastructure is provisioned using **Terraform**, and deployments are automated using **GitHub Actions**.

High-level flow:
- Application traffic → Application Load Balancer
- Load Balancer → ECS Service (Fargate)
- CI/CD pipeline builds and deploys containers automatically

---

## 🌍 Live Application

The application is deployed and accessible at:

🔗 https://tm.omarsapp.com

---

## 🛠️ Tech Stack

- **Cloud:** AWS (ECS, ALB, VPC, IAM, S3, CloudWatch)
- **Infrastructure as Code:** Terraform
- **CI/CD:** GitHub Actions
- **Containers:** Docker
- **Application:** Node.js
- **OS & Tooling:** Linux, Bash
- **Version Control:** Git

---

## ⚙️ Key Features

- Containerised Node.js application using **Docker**
- End-to-end infrastructure provisioning with **Terraform**
- Automated CI/CD pipeline using **GitHub Actions**
- ECS Fargate service with **rolling deployments**
- Application Load Balancer for traffic routing
- Secure secrets and configuration management
- Centralised logging and monitoring with **CloudWatch**

---

## 🔁 CI/CD Workflow

1. Code is pushed to the repository
2. GitHub Actions pipeline is triggered
3. Docker image is built and pushed
4. Terraform plans and applies infrastructure changes
5. ECS service is updated with minimal downtime

---
## Running the application: 

### Prerequisites
- AWS account
- Terraform
- Docker
- GitHub repository
- Domain managed via Route 53 and/or Cloudflare

### 1. App
- Cloned existing Threat Composer application repository.

- Local set up:
```bash
yarn install
yarn build
yarn global add serve
serve -s build

#yarn start
http://localhost:3000/workspaces/default/dashboard

## or
yarn global add serve
serve -s build
```

### 2. Containerise 
- Created a multi-stage Dockerfile inside the app.

- Built the image locally using:
```bash
docker built -t <image name> ./app
```

- Ran the container locally, mapping the container's port 80 to port 8080 on the host:
``` bash
docker run -p 8080:80 <image name>
```
- Verified container is running using curl:
``` bash
cult http://localhost:8080
```
- Image is ready to be pushed to ECR.


### 3. Image Registry - ECR
- Created an AWS ECR repository.

- Confirmed AWS credentials were configued:
``` bash
aws sts get-caller-identity
```
- Authenticated Docker to AWS ECR:
``` bash
aws ecr get-login-password --region <YOUR-REGION> \
| docker login --username AWS --password-stdin \
<YOUR AWS-ID>.dkr.ecr.<YOUR-REGION>.amazonaws.com
```

- Tagged image locally:
``` bash
docker tag <IMAGE-NAME:latest> \
<YOU-AWS-ID>.dkr.ecr.<YOUR-REGION>.amazonaws.com/<IMAGE-NAME>
```

- Pushed the image to ECR Repository:
``` bash
docker push \
<AWS-ID>.dkr.ecr.<YOUR-REGION>.amazonaws.com/<IMAGE-NAME>
```
### 4. Manual AWS Setup
- The main parts of the infrastructure were first created manually using the AWS console in order to understand how the services fit together.

- Created:
  - ECS Cluster (fargate).
  - Task definitions using the ECR Image.
  - Application Load Balancer.
  - Security Groups.
  - DNS Records.
  - ACM Certificate for HTTPS.

Once the application was reachable via HTTPS, all manual resources were deleted.

### 5. Terraform
I created the the setup using modular Terraform.

- Iniitialised Terraform in the directory:
```bash
terraform init
```

- Iteretively planned and applied infrastructure while building modules:
``` bash
terraform plan
terraform apply
```

- Verified infrastructure using the ALB DNS with HTTPS endpoint:
```bash
curl <ALB DNS>
curl https://<DOMAIN>
curl https://<DOMAIN>/health
```

- Destroyed infrastructure at the end:
``` bash
terraform destroy
```

### CICD 


---

## 🎯 Project Goals

This project was built to:

- Simulate real-world DevOps workflows
- Apply Infrastructure as Code principles
- Gain hands-on experience with AWS ECS and CI/CD
- Demonstrate production-style cloud deployments

---

## 🧠 What I Learned

Through building and deploying this project, I gained practical experience in:

- Designing and deploying containerised applications using **AWS ECS (Fargate)**
- Provisioning and managing cloud infrastructure using **Terraform**
- Building automated **CI/CD pipelines** with GitHub Actions
- Implementing rolling deployments to minimise downtime
- Working with AWS networking concepts such as **VPCs, ALBs, and security groups**
- Managing application configuration, secrets, and permissions securely
- Debugging deployment issues across infrastructure, CI pipelines, and runtime services
- Thinking about reliability, scalability, and automation in a production-style environment

---

## 👤 Author

**Omar Abukar**  
DevOps Engineer  
🔗 LinkedIn: https://www.linkedin.com/in/omar-abukar-8a9746209/
