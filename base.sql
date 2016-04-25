use testDB;

/*
create table Customers(
	CustomerID int primary key auto_increment, 
    CustomerName varchar(100), 
    ContactName varchar(100), 
    Address varchar(100), 
    City varchar(100), 
    PostalCode varchar(100), 
    Country varchar(100));

insert into Customers(CustomerName, ContactName, Address, City, PostalCode, Country) 
	values('Alfreds Futterkiste', 'Maria Anders', 'Obere Str. 57', 'Berlin', '12209', 'Germany'); 
    
insert into Customers(CustomerName, ContactName, Address, City, PostalCode, Country) 
	values('Ana Trujillo Emparedados y helados', 'Ana Trujillo', 'Avda. de la Constitución 2222', 'México D.F.', '05021', 'Mexico'); 
    
insert into Customers(CustomerName, ContactName, Address, City, PostalCode, Country) 
	values('Antonio Moreno Taquería', 'Antonio Moreno', 'Mataderos 2312', 'México D.F.', '05023', 'Mexico'); 
    
insert into Customers(CustomerName, ContactName, Address, City, PostalCode, Country) 
	values('Around the Horn', 'Thomas Hardy', '120 Hanover Sq.', 'London', 'WA1 1DP', 'UK'); 
    
insert into Customers(CustomerName, ContactName, Address, City, PostalCode, Country) 
	values('Berglunds snabbköp', 'Christina Berglund', 'Berguvsvägen 8', 'Luleå', 'S-958 22', 'Sweden'); 
    
select * from Customers; 

select CustomerName, City from Customers; 

select distinct City from Customers; 
    
select * from Customers where City = 'México D.F.';

select * from Customers where CustomerID = 2;

select * from Customers where City like 'México%'; 

select * from Customers where CustomerID between 1 and 3; 

select * from Customers where CustomerID in (1, 3); 

select * from Customers where Country = 'Germany' and City = 'Berlin'; 

select * from Customers where City = 'Berlin' or City = 'München';  

select * from Customers where Country = 'Germany' and (City = 'Berlin' or City = 'München'); 

select * from Customers order by Country; 

select * from Customers order by Country desc; 

select * from Customers order by Country, CustomerName; 

select * from Customers order by Country, CustomerName desc; 

insert into Customers(CustomerName, ContactName, Address, City, PostalCode, Country) 
	values('Wartian Herkku', 'Pirkko Koskitalo', 'Torikatu 38', 'Oulu', '90110', 'Finland'); 
    
update Customers 
set ContactName = 'Alfred Schmidt', City = 'Hamburg'
where CustomerName = 'Alfreds Futterkiste'; */

delete from Customers where  CustomerName = 'Wartian Herkku';

select * from Customers;