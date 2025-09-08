select * from employee;
select * from sales;

select e.employeeId, e.firstName, e.lastName, s.salesId from employee e
left join sales s on e.employeeId=s.employeeId
where e.title='Sales Person' and s.salesId IS NULL;