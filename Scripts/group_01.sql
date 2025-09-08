SELECT e.employeeId, e.firstName, e.lastName, SUM(s.salesAmount) FROM employee e
JOIN sales s on e.employeeId=s.employeeId
GROUP BY e.employeeId, e.firstName, e.lastName;