-- MySQL dump 10.13  Distrib 8.0.28, for macos12.2 (x86_64)
--
-- Host: 127.0.0.1    Database: dbo
-- ------------------------------------------------------
-- Server version	8.0.28

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cv_education`
--

DROP TABLE IF EXISTS `cv_education`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cv_education` (
  `id` char(36) NOT NULL,
  `subject` varchar(100) NOT NULL,
  `school` varchar(100) DEFAULT NULL,
  `from_date` bigint DEFAULT NULL,
  `to_date` bigint DEFAULT NULL,
  `achievement` varchar(5000) DEFAULT NULL,
  `cv_id` char(36) DEFAULT NULL,
  `qualification_id` int DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `education_qualification_id_cv__fk` (`qualification_id`),
  KEY `education_cv_id_fk` (`cv_id`),
  CONSTRAINT `education_cv_id_fk` FOREIGN KEY (`cv_id`) REFERENCES `cv` (`id`),
  CONSTRAINT `education_qualification_id_cv__fk` FOREIGN KEY (`qualification_id`) REFERENCES `qualification` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cv_education`
--

LOCK TABLES `cv_education` WRITE;
/*!40000 ALTER TABLE `cv_education` DISABLE KEYS */;
INSERT INTO `cv_education` (`id`, `subject`, `school`, `from_date`, `to_date`, `achievement`, `cv_id`, `qualification_id`) VALUES ('271f9436-a7f9-11ec-a83b-f7e48e1bdaf5','SE','FPT',2018,2022,'Excellent','d45ed5e0-a7f8-11ec-a83b-f7e48e1bdaf5',1);
/*!40000 ALTER TABLE `cv_education` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-03-20 10:06:17
