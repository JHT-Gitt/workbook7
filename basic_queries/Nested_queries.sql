
select *
from dbo.Products
select *
from dbo.Shippers
select *
from dbo.Orders
select *
from dbo.[Order Details]
select * from dbo.Employees

--1
select p.ProductName, p.UnitPrice
from dbo.Products P
where p.UnitPrice = 
(select max(np.UnitPrice)
from dbo.Products NP)
--2
select o.OrderID, o.ShipName, o.ShipAddress
from dbo.Orders O
where o.ShipVia in (
    select ShipperID
    from dbo.Shippers
    where CompanyName like 'Federal Shipping'
)
--3
select OrderID, ProductID [Product ID of Sasquatch Ale]
from dbo.[Order Details]
where ProductID in (
    select ProductID
    from dbo.Products P
    where ProductName like 'Sasquatch Ale'
)
--4
select EmployeeID, FirstName, LastName
from dbo.Employees
where EmployeeID in(
    select EmployeeID
    from dbo.Orders
     where OrderID = 10266
)
--5
select CustomerID [ID], CompanyName [Company], ContactName [Name]
from dbo.Customers
where CustomerID in(
    select CustomerID
    from dbo.Orders 
    where OrderID = 10266
)
