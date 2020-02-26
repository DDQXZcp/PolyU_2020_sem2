# Tutorial 1 operation in MySQL (completed)

# Tutorial 2 (completed)

Just to practice defining 1:N, M:N(separating by crossing exchange), mandatory or optional(| or O), identifying or non-identifying(real or dot line)

# Tutorial 3 flipped classroom 3 (completed)

1. 

SELECT * FROM Employees;

2.

SELECT LastName, FirstName FROM Employees;

3. List the country of supplier without repetition of country names. (Hints: Search the Internet with keywords “SQL no repeat”).

SELECT DISTINCT Country FROM Suppliers;

4. List all of the information of the suppliers from the UK.

SELECT * FROM Suppliers;

5. List all of the information of the suppliers from the UK or the USA.

SELECT * FROM Suppliers

WHERE Country IN('UK','USA');

6. List all of the information of the suppliers from the UK or the USA, order by the name of the suppliers.

SELECT * FROM Suppliers

WHERE Country IN('UK','USA')

ORDER BY SupplierName;

7. List all of the information of the suppliers from the UK or the USA, order by the name of the suppliers and country.

SELECT * FROM Suppliers

WHERE Country IN('UK','USA')

ORDER BY SupplierName, Country;

8. Insert an entry to the Customers table to produce the following result:

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)

VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');
