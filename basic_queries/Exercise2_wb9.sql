select * from dbo.Suppliers
select * from dbo.Products

select e.FirstName, e.LastName, sum(e.Salary) Salary
from dbo.Employees E
group by e.FirstName, e.LastName

select top(1) p.ProductName, min(p.UnitPrice) [most Cheapest Item]
from dbo.Products P
group by p.ProductName
order by min(p.UnitPrice)

select avg(p.UnitPrice) [Average Price]
from dbo.Products P

select top(1) p.ProductName, max(p.UnitPrice) [Most Expensive Item]
from dbo.Products P
group by p.ProductName
order by max(p.UnitPrice) DESC

select s.SupplierID, count(p.SupplierID) [Items supply]
from dbo.Suppliers S 
join dbo.Products P 
on s.SupplierID = p.SupplierID
group by s.SupplierID

select p.CategoryID, avg(p.UnitPrice) [Avg Price]
from dbo.Products P
group by p.CategoryID

select s.SupplierID, count(p.SupplierID) [Items supply]
from dbo.Suppliers S 
join dbo.Products P 
on s.SupplierID = p.SupplierID
group by s.SupplierID
having count(p.SupplierID) >=5

select p.ProductID, p.ProductName, p.UnitPrice * p.UnitsInStock [Inventory Value]
from dbo.Products P
order by [Inventory Value] DESC, p.ProductName



