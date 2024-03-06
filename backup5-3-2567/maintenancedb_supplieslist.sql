-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: maintenancedb
-- ------------------------------------------------------
-- Server version	8.0.36

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
-- Table structure for table `supplieslist`
--

DROP TABLE IF EXISTS `supplieslist`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `supplieslist` (
  `ItemID` int NOT NULL AUTO_INCREMENT,
  `ItemName` varchar(255) NOT NULL,
  `Description` text,
  `Quantity` int NOT NULL,
  `UnitPrice` decimal(10,2) NOT NULL,
  `CreatedDate` timestamp NULL DEFAULT CURRENT_TIMESTAMP,
  `LotNumber` varchar(50) DEFAULT NULL,
  `UnitType` varchar(50) DEFAULT NULL,
  `StockQuantity` int DEFAULT NULL,
  PRIMARY KEY (`ItemID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci COMMENT='ItemID: เป็นรหัสหรือไอดีของรายการวัสดุ โดยมีการกำหนดให้เพิ่มขึ้นโดยอัตโนมัติ (AUTO_INCREMENT) และเป็น Primary Key\\nItemName: เก็บชื่อของรายการวัสดุ\\nDescription: เก็บคำอธิบายเกี่ยวกับรายการวัสดุ (สามารถเป็นข้อความยาวได้)\\nQuantity: เก็บจำนวนของรายการวัสดุที่มีอยู่\\nUnitPrice: เก็บราคาต่อหน่วยของรายการวัสดุ\\nCreatedDate: เก็บวันที่และเวลาที่เพิ่มข้อมูลรายการวัสดุลงในฐานข้อมูล (เราใช้ TIMESTAMP และกำหนดให้ค่าเริ่มต้นเป็นปัจจุบันโดยใช้ CURRENT_TIMESTAMP)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `supplieslist`
--

LOCK TABLES `supplieslist` WRITE;
/*!40000 ALTER TABLE `supplieslist` DISABLE KEYS */;
/*!40000 ALTER TABLE `supplieslist` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-03-06  9:52:27
