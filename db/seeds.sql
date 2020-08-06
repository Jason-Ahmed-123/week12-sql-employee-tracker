INSERT INTO department
  (dept_name)
VALUES
  ('Customer Service');
INSERT INTO department
  (dept_name)
VALUES
  ('Production');
INSERT INTO department
  (dept_name)
VALUES
  ('Management');


INSERT INTO roles
  (title, salary, department_id)
VALUES
  ('CSR', 65000, 1);
INSERT INTO roles
  (title, salary, department_id)
VALUES
  ('SEC Production', 95000, 2);
INSERT INTO roles
  (title, salary, department_id)
VALUES
  ('Manager', 120000, 3);
INSERT INTO roles
  (title, salary, department_id)
VALUES
  ('Shift Lead', 95000, 4);


INSERT INTO employee
  (first_name, last_name, role_id, manager_id)
VALUES
  ('Tyrone', 'Jeffries', 1, 3);
INSERT INTO employee
  (first_name, last_name, role_id, manager_id)
VALUES
  ('Tony', 'Manriques', 4, 3);
INSERT INTO employee
  (first_name, last_name, role_id, manager_id)
VALUES
  ('June', 'Reisner', 4, 3);
INSERT INTO employee
  (first_name, last_name, role_id, manager_id)
VALUES
  ('Zylphia', 'Stevens', 1, 3);
INSERT INTO employee
  (first_name, last_name, role_id, manager_id)
VALUES
  ('Steve', 'Peters', 2, 3);
INSERT INTO employee
  (first_name, last_name, role_id, manager_id)
VALUES
  ('Ellen', 'Fitzgerald', 1, 3);
INSERT INTO employee
  (first_name, last_name, role_id, manager_id)
VALUES
  ('Summer', 'Carmichael', 4, null);
