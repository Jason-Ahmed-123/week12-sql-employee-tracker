// Needs to be in JavaScript:

const connection = require ("./connection")

class DB {
  constructor (connection) {
    this.connection = connection;
  }
findAllEmployees () {
  return this.connection.promise ().query (
    "SELECT employee.id, employee.first_name, employee.last_name, roles.title, department.dept_name AS department, roles.salary, CONCAT (manager.first_name, '', manager.last_name) AS manager FROM employee LEFT JOIN roles on employee.roleID = roles.id LEFT JOIN department on roles.dept_name = dept_name LEFT JOIN employee manager on manager.id = employee.manager_id;"
  )
}

createEmployee (employee) {
  return this.connection.promise ().query (
    "INSERT INTO employee SET ?", employee
  );
}

}

module.exports = new DB (connection);

// For creating functionality, use the below:

// -- show ALL employees with department
// -- INNER JOIN will only return all matching values from both tables
// SELECT first_name, last_name, department
// FROM employee
//   INNER JOIN employee ON department = dept_name;

// -- show ALL employees, even if we don't know the department
// -- LEFT JOIN returns all of the values from the left table, and the matching ones from the right table
// SELECT firstName, lastName, department
// FROM 
//   LEFT JOIN employee ON ;

// -- show ALL employees, even if we don't know the role
// -- RIGHT JOIN returns all of the values from the right table, and the matching ones from the left table
// SELECT firstName, lastName, roles
// FROM roles
//   RIGHT JOIN employee ON ;