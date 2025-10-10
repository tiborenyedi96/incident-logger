# Simple incident logger<br/>

This is a simple incident logger application with very minimal functionality.<br/>My main goal is to learn more about Docker, Jenkins and Kubernetes so the application is basically just an example to have something to deploy.<br/>I will include more useful features and will try to create a minimal but functional ticketing system once I am satisfied with the devops part.

<h2>Frontend module:</h2><br/>
A simple frontend developed with Vue.js. You can view and submit incidents. Unfortunately you cannot close them for now so you will always have a backlog but I will work.<br/>

<h2>Backend module:</h2><br/>
A simple API developed with fastAPI. Only the frontend can interact with it but you can expose it if you wish. It sends queries to the underlying mysql database to get and post incidents.<br/>

<h2>MySQL database:</h2><br/>
This is the database for storing and serving the current incidents.<br/>

<h3>Database scheme:</h3>
id: int<br/>
title: varchar(64)<br/>
description: text<br/>
severity: varchar(6)<br/>
status: varchar(12)<br/>
created_at: datetime<br/>

<h2>How to run with Docker compose:</h2>
Install <a href="https://docs.docker.com">Docker</a> on your current operating system by following the instructions in the documentation.</br>
Clone this repository to your system with the following command:

```bash
git clone https://github.com/tiborenyedi96/incident-logger.git
```
Change your directory to the folder where you cloned the repository (by default the contents of the repo will be in a folder named incident-logger) and use docker compose to run the project in detached mode.
```bash
cd incident-logger/
```
```bash
docker compose up -d
```
After this you will be able to reach the frontend at http://localhost:8080 in your preferred web browser.<br>
To stop the appliaction you can use the following command:
```bash
docker compose down
```
To also reset the mysql database and delete the underlying data you can use:
```bash
docker compose down -v
```

<h2>How to run with Kubernetes:</h2>
Use this command to clone the repository:

```bash
git clone https://github.com/tiborenyedi96/incident-logger.git
```
