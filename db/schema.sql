DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;
USE employee_tracker;


CREATE TABLE department(
  id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
);


CREATE TABLE roles(
  id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(30),
  salary DECIMAL,
);


CREATE TABLE employee(
  id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
);