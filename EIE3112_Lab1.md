# Lab1

## Setup:
~~~
SET GLOBAL local_infile = 'ON';

SHOW VARIABLES LIKE "local_infile"; 
SHOW VARIABLES LIKE "secure_file_priv";

Set FOREIGN_KEY_CHECKS = 0;
Load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Customer.txt"
into table `customer` Fields Terminated by ',' Enclosed
by '"'
Lines terminated by '\r\n' starting by '';

Set FOREIGN_KEY_CHECKS = 0;
Load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Employee.txt"
into table `employee` Fields Terminated by ',' Enclosed
by '"'
Lines terminated by '\r\n' starting by '';

Set FOREIGN_KEY_CHECKS = 0;
Load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Order.txt"
into table `order` Fields Terminated by ',' Enclosed
by '"'
Lines terminated by '\r\n' starting by '';

Set FOREIGN_KEY_CHECKS = 0;
Load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/Product.txt"
into table `product` Fields Terminated by ',' Enclosed
by '"'
Lines terminated by '\r\n' starting by '';


Set FOREIGN_KEY_CHECKS = 0;
Load data infile "C:/ProgramData/MySQL/MySQL Server 8.0/Uploads/ProductInOrder.txt"
into table `productinorder` Fields Terminated by ',' Enclosed
by '"'
Lines terminated by '\r\n' starting by '';
~~~
