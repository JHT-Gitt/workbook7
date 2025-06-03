Q1. Table name is Products 

Q2. SELECT ProductID, ProductName, UnitPrice
FROM Products; 

Q3. SELECT ProductID, ProductName, UnitPrice
FROM Products
ORDER BY UnitPrice ASC;

Q4. SELECT *
FROM Products
WHERE UnitPrice <= 7.50; 

  Products under $7.50 or less
  1. Geitost
  2. Guarana Fantastica
  3. Konbu
  4. Filo Mix
  5. Tourtiere

Q5. SELECT * FROM Products
WHERE UnitsInStock >=100
ORDER BY UnitPrice DESC;

  Products quantity at least 100
    1. Sirop d'erable        2. Grandma's Boysenberry Spread
    3. Pate chinois          4. Gustaf's Knackerbord
    5. Inlagd Sill           6. Boston Crab Meat
    7. Rod Kaviar            8. Sasquatch Ale
    9. Rhonbrau klosterbier  10. Geitost
    
Q6. SELECT * FROM Products
WHERE UnitsInStock >=100
ORDER BY UnitPrice DESC, ProductName ASC;
    
     Products quantity at least 100
    1. Sirop d'erable        2. Grandma's Boysenberry Spread
    3. Pate chinois          4. Gustaf's Knackerbord
    5. Inlagd Sill           6. Boston Crab Meat
    7. Rod Kaviar            8. Sasquatch Ale
    9. Rhonbrau klosterbier  10. Geitost
    //Since no products have the same price, still the same order
    
Q7. SELECT * FROM PRODUCTS
WHERE UnitsInStock <= 0 AND UnitsOnOrder >= 1
ORDER BY ProductName ASC;

  1. Gogonzola Telino

Q8. Table name is Categories

Q9. SELECT * FROM Categories;

  - The category ID of seafood is 8

Q10. SELECT * FROM Products P
JOIN Categories C
ON C.CategoryID = P.CategoryID
WHERE P.CategoryID = 8;

Q11. SELECT FirstName, LastName FROM Employees;

    1. Nancy Davolio        6. Michael Suyama
    2. Andrew Fuller        7. Rober King
    3. Janet Leverling      8. Laura Callahan
    4. Margaret Peacock     9. Anne Dodsworth
    5. Steven Buchanan
    
Q12. SELECT * FROM Employees
WHERE Title LIKE '%manager%';

- Steven Buchanan

Q13. SELECT DISTINCT Title FROM Employees;

  1. Inside Sales Coordinator
  2. Sales Manager
  3. Sales Representative
  4. Vice President, Sales

Q14. SELECT FirstName, LastName, Salary FROM Employees
WHERE Salary BETWEEN 2000 AND 2500;

  1. Nancy Davolio        5. Michael Suyama
  2. Janet Leverling      6. Rober King
  3. Margaret Peacock     7. Anne Dodsworth
  4. Steven Buchanan

Q15. SELECT * FROM Suppliers;

Q16. SELECT * FROM Products P
JOIN Suppliers S
ON S.SupplierID = P.SupplierID
WHERE P.SupplierID = 4;
