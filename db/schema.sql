DROP DATABASE IF EXISTS employee_tracker;
CREATE DATABASE employee_tracker;
USE employee_tracker;


CREATE TABLE department(
  id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  dept_name VARCHAR(30) NOT NULL,
);


CREATE TABLE roles(
  id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  title VARCHAR(30) NOT NULL,
  salary DECIMAL,
  department_id INTEGER,
);


CREATE TABLE employee(
  id INTEGER PRIMARY KEY AUTO_INCREMENT NOT NULL,
  first_name VARCHAR(30),
  last_name VARCHAR(30),
  role_id INTEGER,
  manager_id INTEGER,
  FOREIGN KEY (role_id) REFERENCES role(id),
  FOREIGN KEY (manager_id) REFERENCES employee(id),
);