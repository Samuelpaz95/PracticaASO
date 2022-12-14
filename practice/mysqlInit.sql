CREATE DATABASE IF NOT EXISTS `aso_practice`;

CREATE USER IF NOT EXISTS 'asouser' @'localhost' IDENTIFIED BY 'securepassword';

GRANT ALL PRIVILEGES ON aso_practice.* TO 'asouser' @'localhost';

FLUSH PRIVILEGES;

USE aso_practice;

CREATE TABLE IF NOT EXISTS todolist (
  id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
  title VARCHAR (100) NOT NULL,
  description TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
)