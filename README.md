# DevOpsTask
This DevOps Task is checkout the code and then build that Code. Dockerize it and store Docker Images in ACR and then finaaly deploy to AKS.

Pre-requisites:

1. Linux Machine (In my case Ubuntu)
2. Install Git (To communicate with VCS - Git, and configure with ssh keys)
3. Install Java (17 )
4. Install Jenkins (For CI/CD pipeline)
5. Install Maven (To Build Source Code)
6. Install Docker (To Dockerize it with Images)
7. Install Terraform (To get communicate with Cloud - Azure)
8. Create ACR - Azure Container Registry (To store Docker Image)
9. Create AKS - Azure Kubernetes Cluster (To Deploy Images)
10. Create Script file to automate CI CD (From Checkout code to AKS Deployment)
