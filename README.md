# Simple incident logger<br/>

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
