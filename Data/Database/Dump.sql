-- MySQL dump 10.13  Distrib 8.0.33, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: hotel_db
-- ------------------------------------------------------
-- Server version	8.0.33

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cus_address`
--

DROP TABLE IF EXISTS `cus_address`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cus_address` (
  `id` int NOT NULL,
  `cus_id` int DEFAULT NULL,
  `cus_address` varchar(100) DEFAULT NULL,
  `cus_city` varchar(50) DEFAULT NULL,
  `cus_state` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `cus_id` (`cus_id`),
  CONSTRAINT `cus_address_ibfk_1` FOREIGN KEY (`cus_id`) REFERENCES `customers` (`cus_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus_address`
--

LOCK TABLES `cus_address` WRITE;
/*!40000 ALTER TABLE `cus_address` DISABLE KEYS */;
INSERT INTO `cus_address` VALUES (1,1,'Makronia','Sagar','MP'),(2,1,'Adhartal','Jabalpur','MP'),(3,2,'Mukai Nagar','Pune','MH'),(4,3,'Andheri','Mumbai','MH');
/*!40000 ALTER TABLE `cus_address` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cus_type`
--

DROP TABLE IF EXISTS `cus_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cus_type` (
  `cus_type_id` char(2) NOT NULL,
  `cus_type_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`cus_type_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cus_type`
--

LOCK TABLES `cus_type` WRITE;
/*!40000 ALTER TABLE `cus_type` DISABLE KEYS */;
INSERT INTO `cus_type` VALUES ('P','Premium'),('R','Regular'),('V','VIP');
/*!40000 ALTER TABLE `cus_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `customers`
--

DROP TABLE IF EXISTS `customers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customers` (
  `cus_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `cus_mail` varchar(100) DEFAULT NULL,
  `cus_type_id` char(2) DEFAULT NULL,
  `cus_password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`cus_id`),
  KEY `cus_type_id` (`cus_type_id`),
  CONSTRAINT `customers_ibfk_1` FOREIGN KEY (`cus_type_id`) REFERENCES `cus_type` (`cus_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customers`
--

LOCK TABLES `customers` WRITE;
/*!40000 ALTER TABLE `customers` DISABLE KEYS */;
INSERT INTO `customers` VALUES (1,'John','Doe','johndoe@example.com','R','pass123'),(2,'Jane','Smith','janesmith@example.com','P','securepwd'),(3,'Michael','Johnson','michaeljohnson@example.com','R','mypass'),(4,'Emily','Williams','emilywilliams@example.com','P','strongpassword'),(5,'Dev','Jain','abc@123','R','qwe123'),(6,'Divanshu','Jain','asd@gmail.com','R','qwe123');
/*!40000 ALTER TABLE `customers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dept`
--

DROP TABLE IF EXISTS `dept`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dept` (
  `deptid` char(2) NOT NULL,
  `dept_name` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`deptid`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dept`
--

LOCK TABLES `dept` WRITE;
/*!40000 ALTER TABLE `dept` DISABLE KEYS */;
INSERT INTO `dept` VALUES ('C','Finance'),('K','Kitchen'),('M','Manager'),('Mt','Maintenance');
/*!40000 ALTER TABLE `dept` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `employee`
--

DROP TABLE IF EXISTS `employee`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `employee` (
  `emp_id` int NOT NULL AUTO_INCREMENT,
  `first_name` varchar(50) DEFAULT NULL,
  `last_name` varchar(50) DEFAULT NULL,
  `emp_mail` varchar(100) DEFAULT NULL,
  `emp_address` varchar(100) DEFAULT NULL,
  `emp_deptid` char(2) DEFAULT NULL,
  `emp_password` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`emp_id`),
  KEY `emp_deptid` (`emp_deptid`),
  CONSTRAINT `employee_ibfk_1` FOREIGN KEY (`emp_deptid`) REFERENCES `dept` (`deptid`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `employee`
--

LOCK TABLES `employee` WRITE;
/*!40000 ALTER TABLE `employee` DISABLE KEYS */;
INSERT INTO `employee` VALUES (1,'Robert','Johnson','robertjohnson@example.com','987 Maple Ave','K','pass456'),(2,'Jennifer','Smith','jennifersmith@example.com','654 Oak St','M','securepwd789'),(3,'Christopher','Davis','christopherdavis@example.com','321 Elm St','C','mypassword123'),(4,'Michelle','Wilson','michellewilson@example.com','456 Pine St','Mt','strongpass321');
/*!40000 ALTER TABLE `employee` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `item_type`
--

DROP TABLE IF EXISTS `item_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `item_type` (
  `id` char(2) NOT NULL,
  `item_type` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `item_type`
--

LOCK TABLES `item_type` WRITE;
/*!40000 ALTER TABLE `item_type` DISABLE KEYS */;
INSERT INTO `item_type` VALUES ('AP','Appetizer'),('BE','Beverage'),('BR','Bread'),('CU','Cuisine'),('DE','Dessert'),('MC','Main Course'),('SA','Salad');
/*!40000 ALTER TABLE `item_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menu`
--

DROP TABLE IF EXISTS `menu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `menu` (
  `item_id` int NOT NULL AUTO_INCREMENT,
  `item_name` char(50) DEFAULT NULL,
  `item_price` double DEFAULT NULL,
  `is_veg` char(3) DEFAULT NULL,
  `ingredients_used` text,
  `item_availability` int DEFAULT NULL,
  `item_type` char(2) DEFAULT NULL,
  PRIMARY KEY (`item_id`),
  KEY `item_type` (`item_type`),
  CONSTRAINT `menu_ibfk_1` FOREIGN KEY (`item_type`) REFERENCES `item_type` (`id`),
  CONSTRAINT `menu_chk_1` CHECK (((`is_veg` = _utf8mb4'Yes') or (`is_veg` = _utf8mb4'No'))),
  CONSTRAINT `menu_chk_2` CHECK (((`item_availability` = 0) or (`item_availability` = 1)))
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menu`
--

LOCK TABLES `menu` WRITE;
/*!40000 ALTER TABLE `menu` DISABLE KEYS */;
INSERT INTO `menu` VALUES (1,'Margherita Pizza',12.99,'Yes','Cheese, Tomato Sauce, Basil',1,'CU'),(2,'Paneer Tikka',10.99,'Yes','Paneer, Bell Peppers, Spices',1,'CU'),(3,'Chicken Biryani',14.99,'No','Chicken, Rice, Spices',1,'MC'),(4,'Chocolate Brownie',6.99,'Yes','Chocolate, Flour, Sugar, Nuts',1,'DE'),(5,'Veggie Pizza',11.99,'Yes','Assorted Vegetables, Cheese, Tomato Sauce',1,'CU'),(6,'Chicken Wings',9.99,'No','Chicken Wings, BBQ Sauce',1,'AP'),(7,'Garlic Naan',2.99,'Yes','Flour, Garlic, Butter',1,'BR'),(8,'Caesar Salad',7.99,'Yes','Romaine Lettuce, Croutons, Parmesan Cheese',1,'SA');
/*!40000 ALTER TABLE `menu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_ingredients_history`
--

DROP TABLE IF EXISTS `raw_ingredients_history`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_ingredients_history` (
  `ing_code` char(2) NOT NULL,
  `ing_name` varchar(15) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `is_veg` char(7) DEFAULT NULL,
  `date_added` date DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `ser_no` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`ser_no`),
  KEY `supplier_id` (`supplier_id`),
  CONSTRAINT `raw_ingredients_history_ibfk_1` FOREIGN KEY (`supplier_id`) REFERENCES `supplier` (`supplier_id`),
  CONSTRAINT `raw_ingredients_history_chk_1` CHECK ((`qty` >= 0)),
  CONSTRAINT `raw_ingredients_history_chk_2` CHECK ((`is_veg` in (_utf8mb4'veg',_utf8mb4'non-veg')))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_ingredients_history`
--

LOCK TABLES `raw_ingredients_history` WRITE;
/*!40000 ALTER TABLE `raw_ingredients_history` DISABLE KEYS */;
/*!40000 ALTER TABLE `raw_ingredients_history` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `raw_ingredients_live`
--

DROP TABLE IF EXISTS `raw_ingredients_live`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `raw_ingredients_live` (
  `ing_code` char(2) NOT NULL,
  `ing_name` varchar(50) DEFAULT NULL,
  `qty` int DEFAULT NULL,
  `supplier_id` int DEFAULT NULL,
  `is_veg` enum('veg','non-veg') DEFAULT NULL,
  PRIMARY KEY (`ing_code`),
  CONSTRAINT `raw_ingredients_live_chk_1` CHECK ((`qty` >= 0))
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `raw_ingredients_live`
--

LOCK TABLES `raw_ingredients_live` WRITE;
/*!40000 ALTER TABLE `raw_ingredients_live` DISABLE KEYS */;
INSERT INTO `raw_ingredients_live` VALUES ('01','Flour',1,1,'veg'),('02','Tomato',1,2,'veg'),('03','Cheese',1,3,'veg'),('04','Chicken',1,4,'non-veg'),('05','Lettuce',1,5,'veg'),('06','Sugar',1,6,'veg'),('07','Salt',1,7,'veg'),('08','Olive Oil',1,8,'veg'),('09','Onion',1,9,'veg'),('10','Garlic',1,10,'veg');
/*!40000 ALTER TABLE `raw_ingredients_live` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `shop`
--

DROP TABLE IF EXISTS `shop`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `shop` (
  `shop_type_code` char(2) NOT NULL,
  `shop_type` varchar(20) DEFAULT NULL,
  `shop_items` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`shop_type_code`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `shop`
--

LOCK TABLES `shop` WRITE;
/*!40000 ALTER TABLE `shop` DISABLE KEYS */;
INSERT INTO `shop` VALUES ('D','Dairy','Milk, Butter, Bread, Paneer, Buns, Curd, Butter Milk, Cheese, Mayo'),('G','Grocery Store','Sugar, Salt, Olive Oil, Flour, Rice, Honey'),('M','Meat','Chicken, Eggs, Prawns, Fish, Lobster'),('V','Vegetable','Lettuce, Onion, Garlic, Potato, Tomato, Capsicum, Carrot');
/*!40000 ALTER TABLE `shop` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `supplier`
--

DROP TABLE IF EXISTS `supplier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplier` (
  `supplier_id` int NOT NULL AUTO_INCREMENT,
  `supplier_name` varchar(20) DEFAULT NULL,
  `supplier_address` varchar(50) DEFAULT NULL,
  `supplier_shop_code` char(2) DEFAULT NULL,
  `is_available` int DEFAULT NULL,
  PRIMARY KEY (`supplier_id`),
  KEY `supplier_shop_code` (`supplier_shop_code`),
  CONSTRAINT `supplier_ibfk_1` FOREIGN KEY (`supplier_shop_code`) REFERENCES `shop` (`shop_type_code`),
  CONSTRAINT `supplier_chk_1` CHECK ((`is_available` in (0,1)))
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplier`
--

LOCK TABLES `supplier` WRITE;
/*!40000 ALTER TABLE `supplier` DISABLE KEYS */;
INSERT INTO `supplier` VALUES (1,'Vaibhav','Pune','M',1),(2,'Samyak','Aurangabad','G',1),(3,'Sandesh','Kerela','D',1),(4,'Divanshu','Sagar','V',1),(5,'Rahul','Mumbai','M',1),(6,'Sneha','Delhi','D',1),(7,'Neha','Jaipur','G',1),(8,'Karan','Chennai','G',1),(9,'Ankit','Kolkata','M',1),(10,'Preeti','Bangalore','D',1),(11,'Ravi','Hyderabad','V',1),(12,'Priya','Lucknow','V',1);
/*!40000 ALTER TABLE `supplier` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-06-14 17:20:34
