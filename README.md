# Simple incident logger<br/>

<p>This is a simple incident logger application with very minimal functionality. My main goal is to learn more about docker, jenkin and kubernetes so the application is basically just an example to have something to deploy. I will include more useful features and will try to create a minimal but functional ticketing system once I am satisfied with the devops part.</p>

MySQL database scheme description:<br/>

Database: incident_db<br/>
Table: incidents<br/>
Charset: utf8mb4<br/>
Collation: utf8mb4_general_ci<br/>
Engine: InnoDB<br/>
<br/>
id: int<br/>
title: varchar(64)<br/>
description: text<br/>
severity: varchar(6)<br/>
status: varchar(12)<br/>
created_at: datetime<br/>
