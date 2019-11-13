CREATE DATABASE doingsdone DEFAULT CHARACTER SET utf8 DEFAULT COLLATE utf8_general_ci;
USE doingsdone;

CREATE TABLE projects (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_user INT NOT NULL,
    name VARCHAR(30)
);

CREATE TABLE tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_project INT NOT NULL,
    name VARCHAR(255),
    file VARCHAR(255),
    add_time TIMESTAMP,
    end_time TIMESTAMP,
    status INT DEFAULT 0
);

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(80),
    email VARCHAR(128) UNIQUE,
    password VARCHAR(64),
    data DATETIME
);

CREATE UNIQUE INDEX s_email ON users(email);
