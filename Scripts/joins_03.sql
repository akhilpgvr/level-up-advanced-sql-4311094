--list all common data between customer and sales table
SELECT c.firstName, c.lastName, c.email, s.salesAmount, s.soldDate FROM CUSTOMER c
JOIN SALES s ON c.customerId=s.customerId

UNION
--list all customers data if sales are gone(so salesId will be null)
SELECT c.firstName, c.lastName, c.email, s.salesAmount, s.soldDate FROM CUSTOMER c
LEFT JOIN SALES s ON c.customerId=s.customerId
WHERE s.salesId IS NULL

UNION
--list all sales data if customer data are gone(so customerId will be null)
SELECT c.firstName, c.lastName, c.email, s.salesAmount, s.soldDate FROM SALES s
LEFT JOIN CUSTOMER c ON c.customerId=s.customerId
WHERE c.customerId IS NULL;
