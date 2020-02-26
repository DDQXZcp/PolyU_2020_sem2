# Tutorial 1 operation in MySQL (completed)

# Tutorial 2 (completed)

Just to practice defining 1:N, M:N(separating by crossing exchange), mandatory or optional(| or O), identifying or non-identifying(real or dot line)

# Tutorial 3 flipped classroom 3 (completed)

### 1. 

SELECT * FROM Employees;

### 2.

SELECT LastName, FirstName FROM Employees;

### 3. List the country of supplier without repetition of country names. (Hints: Search the Internet with keywords “SQL no repeat”).

SELECT DISTINCT Country FROM Suppliers;

### 4. List all of the information of the suppliers from the UK.

SELECT * FROM Suppliers;

### 5. List all of the information of the suppliers from the UK or the USA.

SELECT * FROM Suppliers

WHERE Country IN('UK','USA');

### 6. List all of the information of the suppliers from the UK or the USA, order by the name of the suppliers.

SELECT * FROM Suppliers

WHERE Country IN('UK','USA')

ORDER BY SupplierName;

### 7. List all of the information of the suppliers from the UK or the USA, order by the name of the suppliers and country.

SELECT * FROM Suppliers

WHERE Country IN('UK','USA')

ORDER BY SupplierName, Country;

### 8. Insert an entry to the Customers table to produce the following result:

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country)

VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

## Part2

### 3 Select the customerid, order_date, and item values from the items_ordered table for any items in the item column that start with the letter "S".

SELECT customerid, order_date, item

FROM items_ordered

WHERE item LIKE 'S%';

### 8 Select the customerid, order_date, and item from the items_ordered table for all items unless they are 'Snow Shoes' or if they are 'Ear Muffs'. Display the rows as long as they are not either of these two items.

~~~
SELECT customerid, order_date, item

FROM items_ordered

WHERE item NOT IN('Snow Shoes','Ear Muffs');
~~~
### 9. Select the item and price of all items that start with the letters 'S', 'P', or 'F'.
There is no combination of LIKE & IN in SQL, much less in TSQL (SQL Server) or PLSQL (Oracle). Part of the reason for that is because Full Text Search (FTS) is the recommended alternative.

Both Oracle and SQL Server FTS implementations support the CONTAINS keyword, but the syntax is still slightly different:

Oracle:
~~~
WHERE CONTAINS(t.something, 'bla OR foo OR batz', 1) > 0
~~~
SQL Server:
~~~
WHERE CONTAINS(t.something, '"bla*" OR "foo*" OR "batz*"')
~~~
SELECT item, price

FROM items_ordered

WHERE item LIKE 'S%'
OR item LIKE 'P%'
OR item LIKE 'F%';
