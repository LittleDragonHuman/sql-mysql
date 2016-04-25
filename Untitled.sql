-- use testDB;

/*
alter table Products
change column CatgoryID CategoryID int;


insert into Products(ProductName, SupplierID, CategoryID, Unit, Price) 
values('Chais', 1, 1, '10 boxes x 20 bags', 18);

insert into Products(ProductName, SupplierID, CategoryID, Unit, Price) 
values('Chang', 1, 1, '24 - 12 oz bottles', 19);

insert into Products(ProductName, SupplierID, CategoryID, Unit, Price) 
values('Aniseed Syrup', 1, 2, '12 - 550 ml bottles', 10);

insert into Products(ProductName, SupplierID, CategoryID, Unit, Price) 
values('Chef Anton\'s Cajun Seasoning', 1, 2, '48 - 6 oz jars', 22);

insert into Products(ProductName, SupplierID, CategoryID, Unit, Price) 
values('Chef Anton\'s Gumbo Mix', 1, 2, '36 boxes', 21.35);    

*/

-- select * from Products;

-- create table Orders(OrderID int primary key auto_increment, CustomerID int, EmployeeID int, OrderDate datetime, ShipperID int);

-- alter table Orders
-- modify column OrderDate varchar(100);

-- insert into Orders(CustomerID, EmployeeID, OrderDate, ShipperID) 
-- values(90, 5, '7/4/1996', 3);
-- 
-- insert into Orders(CustomerID, EmployeeID, OrderDate, ShipperID) 
-- values(81, 6, '7/5/1996', 1);
-- 
-- insert into Orders(CustomerID, EmployeeID, OrderDate, ShipperID) 
-- values(34, 4, '7/8/1996', 2);
-- 
-- insert into Orders(CustomerID, EmployeeID, OrderDate, ShipperID) 
-- values(84, 3, '7/9/1996', 1);
-- 
-- insert into Orders(CustomerID, EmployeeID, OrderDate, ShipperID) 
-- values(76, 4, '7/10/1996', 2); 

/*
insert into Orders(CustomerID, EmployeeID, OrderDate, ShipperID) 
values(2, 4, '9/18/1996', 2); 

select * from Orders

drop table employee 

create table Employee(
	EmployeeID int primary key auto_increment,
    LastName varchar(100),
    FirstName varchar(100),
    BirthDate varchar(100),
    Photo varchar(100),
    Notes varchar(100)
); 

insert into Employee(LastName, FirstName, BirthDate, Photo, Notes)
values('Davolio', 'Nancy', '12/8/1968', 'EmpID1.pic', 'Education includes a BA in psycholo...');

insert into Employee(LastName, FirstName, BirthDate, Photo, Notes)
values('Fuller', 'Andrew', '2/19/1952', 'EmpID2.pic', 'Andrew received his BTS commercial and....');

insert into Employee(LastName, FirstName, BirthDate, Photo, Notes)
values('Leverling', 'Janet', '8/30/1963', 'EmpID3.pic', 'Janet has a BS degree in chemistry....'); 

create table Suppliers(
	SupplierID int primary key auto_increment,
    SupplierName varchar(100),
    ContactName varchar(100),
    Address varchar(100),
    City varchar(100),
    PostalCode varchar(100),
    Country varchar(100)
); 

insert into Suppliers(SupplierName, ContactName, Address, City, PostalCode, Country)
values('Exotic Liquid', 'Charlotte Cooper', '49 Gilbert St.', 'Londona', 'EC1 4SD', 'UK');

insert into Suppliers(SupplierName, ContactName, Address, City, PostalCode, Country)
values('New Orleans Cajun Delights', 'Shelley Burke', 'P.O. Box 78934', 'New Orleans', '70117', 'USA');

insert into Suppliers(SupplierName, ContactName, Address, City, PostalCode, Country)
values('LeverlingGrandma Kelly \'s Homestead', 'Regina Murphy', '707 Oxford Rd.', 'Ann Arbor', '48104', 'USA');

drop table Persons;    

use my_db;

create table Persons
(
	P_Id int primary key auto_increment,
    LastName varchar(100),
    FirstName varchar(100),
    Address varchar(100),
    City varchar(100)
);

insert into Persons(LastName, FirstName, Address, City) 
values('Hansen', 'Ola', 'Timoteivn 10', 'Sandnes');

insert into Persons(LastName, FirstName, Address,  City) 
values('Svendson', 'Tove', 'Borgvn 23', 'Sandnes');

insert into Persons(LastName, FirstName, Address, City) 
values('Pettersen', 'Kari', 'Storgt 20', 'Stavanger');

select * from Persons; */

-- create database test;

use testDB;
/*
create table Shippers(
ShipperID int primary key auto_increment,
ShipperName varchar(50),
Phone varchar(50)
);

insert into Shippers(ShipperName, Phone) values('Speedy Express','(503) 555-9831');
insert into Shippers(ShipperName, Phone) values('United Package','(503) 555-3199');
insert into Shippers(ShipperName, Phone) values('Federal Shipping','(503) 555-9931');
*/
update Orders
set EmployeeID = 1
where OrderID = 5;

