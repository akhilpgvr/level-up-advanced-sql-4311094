SELECT e.employeeId, e.firstName, e.lastName, MIN(s.salesAmount) MIN_SALE, MAX(s.salesAmount) MAX_SALE FROM sales s
INNER JOIN employee e ON s.employeeId = e.employeeId
WHERE s.soldDate >= DATE('now', 'start of year')
GROUP BY e.employeeId, e.firstName, e.lastName;