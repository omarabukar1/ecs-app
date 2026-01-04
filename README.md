# Threat Composer on AWS ECS

This repository contains the deployment of the **Threat Composer** application on **AWS ECS (Fargate)** using **Terraform**.

The project focuses on deploying a real-world application with secure networking, containerisation, and infrastructure-as-code, while also providing clear architectural documentation for both users and developers.

---

## Live Application

The application is publicly available at:

**https://tm.omarsapp.com**

- HTTP traffic is redirected to HTTPS
- TLS certificates are managed using AWS Certificate Manager (ACM)

---

## Architecture Overview

This project uses the following AWS services:

- Amazon VPC
- Application Load Balancer (ALB)
- Amazon ECS (Fargate)
- Amazon ECR
- AWS Certificate Manager (ACM)
- Terraform

### Traffic Flow

1. A user accesses the application via the public domain
2. DNS routes traffic to the Application Load Balancer
3. HTTP (port 80) is redirected to HTTPS (port 443)
4. HTTPS traffic is forwarded to ECS
5. ECS runs the Threat Composer container







---

## User Perspective

From a user’s point of view:

- The application is accessed via a secure HTTPS URL
- Users interact with the Threat Composer UI
- Threat models can be created, edited, and visualised directly in the browser

---

## Developer & DevOps Perspective

From a developer or DevOps perspective:

- The application runs as a Docker container
- Images are stored in Amazon ECR
- ECS Fargate handles container execution
- Terraform manages all infrastructure resources
- The ALB handles traffic routing and TLS termination

---

## Repository Structure

```text
ecs-app/
├── README.md
├── .gitignore
├── app/
│   ├── infra/
│   │   ├── modules/
│   │   └── main.tf
│   ├── threat-composer/
│   │   ├── Dockerfile
│   │   └── src/
│   └── ...
# trigger ci
