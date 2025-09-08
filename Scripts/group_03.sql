SELECT e.employeeId, e.firstName, count(*) CARS_SOLD, e.lastName, SUM(s.salesAmount) FROM employee e
JOIN sales s on e.employeeId=s.employeeId
WHERE soldDate>=date('now', 'start of year')
GROUP BY e.employeeId, e.firstName, e.lastName
HAVING count(*)>5;