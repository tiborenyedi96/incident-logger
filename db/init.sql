CREATE DATABASE IF NOT EXISTS incident_db;
USE incident_db;

CREATE TABLE incidents(
    id INT UNSIGNED AUTO_INCREMENT PRIMARY KEY NOT NULL,
    title VARCHAR(64) NOT NULL,
    description TEXT,
    severity VARCHAR(6) NOT NULL,
    status VARCHAR(12) NOT NULL,
    created_at DATETIME NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB
  DEFAULT CHARSET=utf8mb4
  COLLATE=utf8mb4_general_ci;

INSERT INTO incidents (title, description, severity, status)
VALUES ('Database connection is very slow', 'Database connection on our production server is way too slow to handle the request spike. PLS check ASAP!', 'HIGH', 'OPEN');

INSERT INTO incidents (title, description, severity, status)
VALUES ('Create dockerfile for custom application PoC', 'Please be kind and contact us to create a dockerfile to build an image and test out an app in development! THX!', 'MEDIUM', 'IN_PROGRESS');

INSERT INTO incidents (title, description, severity, status)
VALUES ('Jenkins server is unreachable...', 'Please fix the server ASAP! This is not the first time...', 'HIGH', 'OPEN');
