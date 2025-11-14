# Simple Incident Logger<br/>

This is a simple incident logger application with very minimal functionality.<br/>My main goal is to learn more about Docker, Jenkins and Kubernetes so the application is basically just an example to have something to deploy.<br/>I will include more useful features and will try to create a minimal but functional ticketing system once I am satisfied with the devops part.

<h2>Frontend module:</h2><br/>
A simple frontend developed with Vue.js. You can view and submit incidents. Unfortunately you cannot close them for now so you will always have a backlog but I will work on this feature soon.<br/>

<h2>Backend module:</h2><br/>
A simple API developed with fastAPI. Only the frontend can interact with it but you can expose it if you wish. It sends queries to the underlying MySQL database to get and post incidents.<br/>

<h2>MySQL database:</h2><br/>
This is the database for storing and serving the current incidents.<br/>

<h3>Database schema</h3>

```sql
id INT AUTO_INCREMENT PRIMARY KEY,
title VARCHAR(64),
description TEXT,
severity VARCHAR(6),
status VARCHAR(12),
created_at DATETIME
```
<h2>How to run with Docker compose:</h2>
Install <a href="https://docs.docker.com">Docker</a> on your current operating system by following the instructions in the documentation.</br>
Clone this repository to your system with the following command:

```bash
git clone https://github.com/tiborenyedi96/incident-logger.git
```
Change your directory to the folder where you cloned the repository (by default the contents of the repo will be in a folder named incident-logger) and use docker compose to run the project in detached mode:
```bash
cd incident-logger/
```
```bash
docker compose up -d
```
After this you will be able to reach the frontend at http://localhost:8080 in your preferred web browser.<br>
To stop the appliaction and remove the running containers you can use the following command:
```bash
docker compose down
```
To also reset the MySQL database and delete the underlying data you can use:
```bash
docker compose down -v
```

<h2>How to run with Kubernetes:</h2>
Use this command to clone the repository and get into the created folder:

```bash
git clone https://github.com/tiborenyedi96/incident-logger.git
```
```bash
cd incident-logger/
```
Create the MySQL configmap from the file db/init.sql:
```bash
kubectl create configmap mysql-init --from-file=init.sql=db/init.sql
```
Deploy all manifests:
```bash
kubectl apply -f k8s/
```
Wait until all pods are ready, you can check this with the following command:
```bash
kubectl get pods
```
After all pods are ready, find your node's IP and open the exposed port (default: http://<NODE_IP>:30001). You should get to the frontend page filled with the initial data if you open it in your preferred web browser. I am planning to use Ingress soon so this section will be refactored. You can easily find out your node's IP address with the following command:
```bash
kubectl get nodes -o wide
```
You can delete the deployments with the following command:<br/>
⚠️ This will also delete the underlying PVC so all your data in the MySQL database will be lost! ⚠️
```bash
kubectl delete -f k8s/
```
If you would like to keep the PVC to preserve the data in the MySQL database, you should use the following command:
```bash
kubectl delete deploy,svc -l application=incident-logger
```
---

<h3>🧩 Future plans</h3>
I plan to migrate this application into a fully serverless AWS architecture in a separate repository to gain hands-on experience with real-world cloud migration patterns.
The new version will utilize core AWS services such as:<br/><br/>
- AWS Lambda for backend compute<br/>
- Amazon API Gateway for the REST API layer<br/>
- Amazon Aurora Serverless v2 as the relational database<br/>
- Amazon RDS Proxy for efficient connection management<br/>
- Amazon S3 + Amazon CloudFront for hosting the frontend<br/>
- VPC networking and security groups for secure private cloud access<br/><br/>
This migration project will focus on designing a production-ready, cost-efficient, and scalable architecture based on AWS best practices.
