-- Aggregate函数：从列中取得的值，返回一个单一的值

use testDB;
-- avg()
/*
select ProductName, Price 
from Products 
where Price > (select avg(Price) as averagePrice from Products); 
*/

-- count()
/*
select count(UnitsPrice) from Products; -- null不计入
select count(*) from Products;
select count(distinct EmployeeID) from Orders; -- 指定列的不同值的数目
*/

-- first()
/*
select CustomerName from Customers 
order by CustomerID asc
limit 1; 
*/

-- last()
/*
select CustomerName from Customers
order by CustomerID desc
limit 1;
*/

-- max()
/*
select max(UnitsPrice) from Products;
*/

-- min()
/*
select min(Price) from Products;
*/

-- sum()
/*
select sum(UnitsInStock) from Products;
*/

-- group by
/*
select ShipperName, count(Orders.OrderID) 
from Orders
left join Shippers
on Orders.ShipperID = Shippers.ShipperID
group by ShipperName; 

select Shippers.ShipperName, Employee.LastName, count(Orders.OrderID) 
from ((Orders inner join Shippers on Orders.ShipperID = Shippers.ShipperID) 
	inner join Employee on Orders.EmployeeID = Employee.EmployeeID)
group by ShipperName, Employee.LastName; 
*/

-- having
/*
select Employee.LastName, count(Orders.OrderID) 
from (Orders inner join Employee on Orders.EmployeeID = Employee.EmployeeID)
group by Employee.LastName
having count(Orders.OrderID) >= 1;

select Employee.LastName, count(Orders.OrderID) 
from Orders 
inner join Employee
on Orders.EmployeeID = Employee.EmployeeID
where LastName in ('Davolio', 'Fuller')
group by LastName
having count(Orders.OrderID) >= 0; 
*/
  
-- Scalar函数：基于输入值，返回一个单一的值

-- ucase()
/*
select ucase(CustomerName) from Customers;
*/

-- lcase()
/*
select lcase(CustomerName) from Customers;
*/

-- mid()
/*
select mid(CustomerName, 1, 3) from Customers;
*/

-- len()
/*
select length(CustomerName) from Customers;
*/

-- round()
/* 10.45 ~ 10, 15.68 ~ 16
select round(UnitsPrice, 0) from Products;
*/

-- now()
/*
select now(), ProductName, Price from Products;
*/

-- format()
/*
select ProductName, Price, format(now(), 'YYYY-MM-DD') from Products;
*/
