# 🚀 ECS Application Deployment on AWS

This repository contains a production-style deployment of a containerised Node.js application on AWS using ECS (Fargate).  
The project demonstrates Infrastructure as Code, CI/CD automation, and scalable cloud architecture following DevOps best practices.

---
## 🌍 Live Application

The application is deployed and accessible at:

🔗 https://tm.omarsapp.com

---

## 🧱 Architecture Overview

The application is deployed on **AWS ECS (Fargate)** behind an **Application Load Balancer**.  
All infrastructure is provisioned using **Terraform**, and deployments are automated using **GitHub Actions**.

High-level flow:
- Application traffic → Application Load Balancer
- Load Balancer → ECS Service (Fargate)
- CI/CD pipeline builds and deploys containers automatically

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

## 📦 Repository Structure (High Level)

```text
.
├── app/                   # Node.js application source
├── terraform/             # Infrastructure as Code
│   ├── modules/           # Reusable Terraform modules
│   └── environments/      # Environment-specific configuration
├── .github/workflows/     # CI/CD pipelines
├── Dockerfile
└── README.md

---

 🎯 Project Goals

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
