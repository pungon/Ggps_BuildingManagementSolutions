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
-- Table structure for table `servicerequests`
--

DROP TABLE IF EXISTS `servicerequests`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servicerequests` (
  `IdServiceRequests` int NOT NULL AUTO_INCREMENT,
  `CustomerID` varchar(15) DEFAULT NULL,
  `ServiceType` varchar(15) DEFAULT NULL,
  `Description` text,
  `FloorNumber` int DEFAULT NULL,
  `RoomNumber` varchar(45) NOT NULL,
  `RequestDate` timestamp NULL DEFAULT NULL,
  `Status` varchar(15) DEFAULT NULL,
  `AssignedTechnicianID` int DEFAULT NULL,
  `DueDate` varchar(15) DEFAULT NULL,
  `CompletionDate` varchar(15) DEFAULT NULL,
  `RepairReport` text,
  `WorkStartDate` date DEFAULT NULL,
  `WorkEndDate` date DEFAULT NULL,
  `AssignedEquipmentId` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`IdServiceRequests`),
  KEY `fk_assigned_equipment_servicerequests` (`AssignedEquipmentId`) /*!80000 INVISIBLE */,
  KEY `fk_assigned_technicianst_servicerequests` (`AssignedTechnicianID`),
  KEY `fk_assigned_rooms_servicerequests` (`RoomNumber`),
  CONSTRAINT `fk_assigned_equipment_servicerequests` FOREIGN KEY (`AssignedEquipmentId`) REFERENCES `equipment` (`EquipmentId`) ON DELETE RESTRICT ON UPDATE RESTRICT,
  CONSTRAINT `fk_assigned_rooms_servicerequests` FOREIGN KEY (`RoomNumber`) REFERENCES `rooms` (`RoomNumber`),
  CONSTRAINT `fk_assigned_technicianst_servicerequests` FOREIGN KEY (`AssignedTechnicianID`) REFERENCES `technicianworkers` (`TechnicianID`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servicerequests`
--

LOCK TABLES `servicerequests` WRITE;
/*!40000 ALTER TABLE `servicerequests` DISABLE KEYS */;
/*!40000 ALTER TABLE `servicerequests` ENABLE KEYS */;
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
