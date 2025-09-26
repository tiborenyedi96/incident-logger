# Simple incident logger with docker

#MySQL database scheme description:

Database: incident_db
Table: incidents
Charset: utf8mb4
Collation: utf8mb4_general_ci
Engine: InnoDB

id: int
title: varchar(64)
description: text
severity: varchar(6)
status: varchar(12)
created_at: datetime
