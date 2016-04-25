-- like + 通配符
/*use testDB;

select * from Customers limit 3;

select * from Customers where Country like '%land%'; 
select * from Customers where Country not like '%land%'; 
select * from Customers where City like 'Ber%'; 

select * from Customers where City like '_erlin';  
select * from Customers where City like 'L_n_on'; 
select * from Customers where City like '[bsp]%';  
select * from Customers where City like '[a-c]%'; 
select * from Customers where City like '[BM]%'; */

-- in
/*
select * from Customers where City in ('Berlin', 'London');   */

-- between
/*
select * from Products where Price between 10 and 20; 
select * from Products where Price not between 10 and 20; 
select * from Products where (Price between 10 and 20) and (CategoryID not in (1,2,3));  
select * from Products where ProductName between 'C' and 'M';  
select * from Products where ProductName not between 'C' and 'M';  
select * from Orders where OrderDate between '07/04/1996' and '07/09/1996';  */

-- 别名
/*
select CustomerName as customer, ContactName as 'contact person' from Customers;  */

-- 连接
-- inner join  = join  (table1 & table2)
/*
select Orders.OrderID, Customers.CustomerName, Orders.OrderDate
from Orders
inner join Customers
where Orders.CustomerID = Customers.CustomerID;  */

-- left join (table1，table2中无匹配时返回null)
/*
select Customers.CustomerName, Orders.OrderID
from Customers
left join Orders
on Customers.CustomerID = Orders.CustomerID
order by Customers.CustomerName;   */

-- right join (table2，table1中无匹配时返回null)
/*
select Orders.OrderID, Employee.firstname
from Orders
right join Employee
on Orders.EmployeeID = Employee.EmployeeID; */

-- union（合并多个select的结果集）
/*
select City from Customers
union
select City from Suppliers
order by City;

select City from Customers
union all
select City from Suppliers
order by City; 

select City, Country from Customers
where Country in ('USA', 'Mexico')
union all
select City, Country from Suppliers
where Country in ('USA', 'Mexico')
order by City;  */

-- select into / insert into
-- mysql 不支持 select * into Customers1 from Customers; 改用如下
/*
create table Customers1(select * from Customers);
create table Customers2(select CustomerName, ContactName from Customers);
create table Customers3(select Customers.CustomerName, Orders.OrderID from Customers left join Orders on Customers.CustomerID = Orders.CustomerID);

insert into Customers (CustomerName, Country)
select SupplierName, Country from Suppliers;  */

-- 约束
/*
create database my_db;  
use my_db;

create table Persons
(
	PersonID int primary key,
    LastName varchar(255) not null,
    FirstName varchar(255),
    Address varchar(255),
    City varchar(255) default 'CN',
   -- unique(PersonID) -- constraint uc_PersonID unique (PersonID, LastName)
   -- check (PersonID > 0)
);
 
alter table Persons
add unique (PersonID); 

alter table Persons
drop index PersonID; 

alter table Persons
alter City drop default; */

-- 索引
/*
use my_db;

create index PIndex
on Persons (LastName); 

create index NameIndex
on Persons (LastName, FirstName);  */

-- 撤销索引
/*
use my_db;

alter table Persons
drop index PIndex; */

-- 删除表
/*
use testDB;
drop table Customers1; */

-- 删除数据库
/*
drop database test; */

-- 删除表内数据
/*
use testDB;

truncate table Customers2;  */

-- 添加列
/*
alter table PersonsDateOfBirth
add DateOfBirth date; */

-- 更改列属性
/*
alter table Persons
modify Column DateOfBirth year; */

-- 删除列
/*
alter table Persons
drop column DateOfBirth; */

-- 视图
-- use my_db;
/* 创建
create view view1 as
select P_Id, LastName, FirstName 
from Persons
where City like 'Sand%'; 

select * from view1; */

/* 更新
create or replace view view1 as
select LastName 
from Persons
where FirstName = 'Ola';

select * from view1;  */

/* 删除
drop view view1; */


-- 日期
/*
date: YYYY-MM-DD
datetime: YYYY-MM-DD HH:MM:SS
timestamp: YYYY-MM-DD HH:MM:SS
year: YYYY 或 YY

now() - 当前日期和时间
curdate() - 当前日期
curtime() - 当前时间
date() - 提取日期或 日期/时间表达式的日期部分
extract() - 日期/时间的单独部分
date_add() - 向日期添加指定的时间间隔
date_sub() - 从日期减去指定的时间间隔
datediff() - 两个日期之间的天数
date_format() - 用不同的格式显示日期/时间
*/

/*
use testDB;

alter table Orders
drop column OrderDate;

alter table Orders
add OrderDate date; 

update Orders
set OrderDate = curdate(); */

-- NULL/IS NOT NULL
/*
use my_db;

alter table Persons
add AddressTest varchar(100); 

update Persons
set AddressTest = 'Borgvn 123'
where P_Id = 2; 

select LastName, FirstName, AddressTest from Persons
where AddressTest is null;

select LastName, FirstName, AddressTest from Persons
where AddressTest is not null;   */

-- isNULL()、IFNULL()、COALESCE()
/*
use testDB;

alter table Products
add UnitsInStock int;

alter table Products
add UnitsOnOrder int;

alter table Products
add UnitsPrice float;

alter table Products
add UnitsPrice float;

update Products
set UnitsInStock = 16, UnitsOnOrder = 15, UnitsPrice = 10.45 
where ProductID = 1;

update Products
set UnitsInStock = 9, UnitsOnOrder = 20, UnitsPrice = 15.67 
where ProductID = 3;    

select ProductName, ifnull(UnitsPrice, 0.0) *(ifnull(UnitsInStock, 0) + ifnull(UnitsOnOrder, 0)) as totalPrice 
from Products;

select ProductName, coalesce(UnitsPrice, 0.0) *(coalesce(UnitsInStock, 0) + coalesce(UnitsOnOrder, 0)) as totalPrice 
from Products; */




