DROP DATABASE IF EXISTS recruitment_web;
CREATE DATABASE recruitment_web;
USE recruitment_web;

DROP TABLE IF EXISTS `user`;
CREATE TABLE `user`(
	id			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    username	NVARCHAR(50) NOT NULL UNIQUE KEY, 
	`password`	NVARCHAR(800) NOT NULL,
    email		NVARCHAR(200) NOT NULL UNIQUE KEY,
    firstName	NVARCHAR(50) NOT NULL,
    lastName	NVARCHAR(50) NOT NULL,
    `role`		ENUM('Admin', 'Recruiter','Candidate'),
    `status`	TINYINT DEFAULT 0
);

DROP TABLE IF EXISTS recruiter;
CREATE TABLE recruiter(
	id			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title		NVARCHAR(200) NOT NULL,
	`description` NVARCHAR(800) NOT NULL,
    skills		NVARCHAR(100) NOT NULL UNIQUE KEY,
    salary		INT NOT NULL,
    `position`	NVARCHAR(50) NOT NULL UNIQUE KEY,
    address		NVARCHAR(200) NOT NULL,
    created_date DATETIME,
    updated_date DATETIME
);

DROP TABLE IF EXISTS news_recruiter;
CREATE TABLE news_recruiter(
	id			TINYINT UNSIGNED AUTO_INCREMENT PRIMARY KEY,
    title		NVARCHAR(500) NOT NULL,
    `description`	NVARCHAR(2000) NOT NULL,
    imgURL			NVARCHAR(800) NOT NULL
);