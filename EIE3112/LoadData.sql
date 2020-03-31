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

USE lab1;
SELECT * FROM customer;

USE lab1;
SELECT * FROM employee;

USE lab1;
SELECT * FROM `order`;

USE lab1;
SELECT * FROM product;

USE lab1;
SELECT * FROM productinorder;

USE lab1;
INSERT INTO `Customer`
VALUES ("C1234567","Zhiheng","TANG","Yuk Choi Rd","Hong Kong","HK","12345_6789","$100");
SELECT * FROM `customer` WHERE LastName = 'TANG';

USE lab1;
INSERT INTO `order`
VALUES ("O1234567","5/25/2013","C1234567","E1329594","Zhiheng TANG","Yuk Choi Rd.","Hong Kong","HK","12345-6789");
INSERT INTO `order`
VALUES ("O1111111","10/1/2007","C1234567","E8544399","Zhiheng TANG","Yuk Choi Rd.","Hong Kong","HK","12345-6789");
SELECT * FROM `order` WHERE Customer_CustNo = 'C1234567';

USE lab1;
INSERT INTO `order`
VALUES ("O1234567","5/25/2013","C1234567","E1329594","Zhiheng TANG","Yuk Choi Rd.","Hong Kong","HK","12345-6789");
INSERT INTO `order`
VALUES ("O1111111","10/1/2007","C1234567","E8544399","Zhiheng TANG","Yuk Choi Rd.","Hong Kong","HK","12345-6789");
SELECT * FROM `order` WHERE Customer_CustNo = 'C1234567';

