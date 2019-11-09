CREATE DATABASE doingsdone DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
USE doingsdone;

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR(30)
);

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR,
    file CHAR,
    add_time TIMESTAMP,
    end_time TIMESTAMP,
    status INT(1) DEFAULT 0
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name CHAR,
    email VARCHAR(128) UNIQUE,
    password CHAR(64),
    data DATETIME
);

CREATE UNIQUE INDEX s_email ON users(email);
