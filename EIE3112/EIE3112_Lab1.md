# Lab1

## CreateDB.sql
~~~
DROP DATABASE IF EXISTS Lab1;
CREATE DATABASE IF NOT EXISTS Lab1;
USE Lab1;

-- MySQL Workbench Forward Engineering

SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0;
SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0;
SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='ONLY_FULL_GROUP_BY,STRICT_TRANS_TABLES,NO_ZERO_IN_DATE,NO_ZERO_DATE,ERROR_FOR_DIVISION_BY_ZERO,NO_ENGINE_SUBSTITUTION';

-- -----------------------------------------------------
-- Schema mydb
-- -----------------------------------------------------
-- -----------------------------------------------------
-- Schema Homework1
-- -----------------------------------------------------

-- -----------------------------------------------------
-- Table `Customer`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Customer` (
  `CustNo` CHAR(8) NOT NULL,
  `FirstName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NULL,
  `Street` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `PhoneNo` VARCHAR(45) NULL,
  `CustBal` VARCHAR(45) NULL,
  PRIMARY KEY (`CustNo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Employee`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Employee` (
  `EmpNo` CHAR(8) NOT NULL,
  `FirstName` VARCHAR(45) NULL,
  `LastName` VARCHAR(45) NULL,
  `PhoneNo` VARCHAR(45) NULL,
  `Email` VARCHAR(45) NULL,
  PRIMARY KEY (`EmpNo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Order`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Order` (
  `OrderNo` CHAR(8) NOT NULL,
  `OrderDate` VARCHAR(45) NULL,
  `Customer_CustNo` CHAR(8) NOT NULL,
  `Employee_EmpNo` CHAR(8) NULL,
  `CustName` VARCHAR(45) NULL,
  `Street` VARCHAR(45) NULL,
  `City` VARCHAR(45) NULL,
  `State` VARCHAR(45) NULL,
  `PhoneNo` VARCHAR(45) NULL,
  PRIMARY KEY (`OrderNo`),
  INDEX `fk_Order_Customer_idx` (`Customer_CustNo` ASC) VISIBLE,
  INDEX `fk_Order_Employee1_idx` (`Employee_EmpNo` ASC) VISIBLE,
  CONSTRAINT `fk_Order_Customer`
    FOREIGN KEY (`Customer_CustNo`)
    REFERENCES `Customer` (`CustNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_Order_Employee1`
    FOREIGN KEY (`Employee_EmpNo`)
    REFERENCES `Employee` (`EmpNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `Product`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `Product` (
  `ProdNo` CHAR(8) NOT NULL,
  `ProdName` VARCHAR(45) NULL,
  `Mfg` VARCHAR(45) NULL,
  `Stock` INT NULL,
  `Price` VARCHAR(45) NULL,
  PRIMARY KEY (`ProdNo`))
ENGINE = InnoDB;


-- -----------------------------------------------------
-- Table `ProductInOrder`
-- -----------------------------------------------------
CREATE TABLE IF NOT EXISTS `ProductInOrder` (
  `Order_OrderNo` CHAR(8) NOT NULL,
  `Product_ProdNo` CHAR(8) NOT NULL,
  `Qty` INT NULL,
  INDEX `fk_ProductInOrder_Order1_idx` (`Order_OrderNo` ASC) VISIBLE,
  INDEX `fk_ProductInOrder_Product1_idx` (`Product_ProdNo` ASC) VISIBLE,
  PRIMARY KEY (`Order_OrderNo`, `Product_ProdNo`),
  CONSTRAINT `fk_ProductInOrder_Order1`
    FOREIGN KEY (`Order_OrderNo`)
    REFERENCES `Order` (`OrderNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION,
  CONSTRAINT `fk_ProductInOrder_Product1`
    FOREIGN KEY (`Product_ProdNo`)
    REFERENCES `Product` (`ProdNo`)
    ON DELETE NO ACTION
    ON UPDATE NO ACTION)
ENGINE = InnoDB;


SET SQL_MODE=@OLD_SQL_MODE;
SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS;
SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS;
~~~

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
