SELECT EmployeeLastName FROM mydb.Employee;
SELECT DISTINCT EmployeeLastName FROM mydb.Employee;
SELECT * FROM mydb.Employee WHERE EmployeeLastName LIKE 'James';
SELECT count(*) FROM mydb.Employee WHERE EmployeeJobTitle LIKE 'Manager'; 
SELECT * FROM mydb.Employee WHERE EmployeeLastName IN('Smith', 'Jones');
SELECT EmployeeFirstName, EmployeeLastName FROM mydb.Employee ORDER BY EmployeeLastName;
SELECT EmployeeFirstName, EmployeeLastName, EmployeeJobTitle FROM mydb.Employee ORDER BY EmployeeJobTitle, EmployeeLastName;
SELECT AVG(EmployeeSalary) FROM mydb.Employee; 