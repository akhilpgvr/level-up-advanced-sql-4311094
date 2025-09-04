SELECT e.firstName AS EMP_FNAME, e.lastName AS EMP_LNAME, m.firstName AS MANAGER_FNAME, m.lastName AS MANAGER_LNAME FROM employee e
JOIN employee m ON m.employeeId=e.managerId;