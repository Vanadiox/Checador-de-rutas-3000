-- MariaDB dump 10.19  Distrib 10.5.19-MariaDB, for debian-linux-gnueabihf (armv7l)
--
-- Host: localhost    Database: CHECADOR3000
-- ------------------------------------------------------
-- Server version	10.5.19-MariaDB-0+deb11u2

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `checador`
--

DROP TABLE IF EXISTS `checador`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `checador` (
  `id_checador` int(11) NOT NULL AUTO_INCREMENT,
  `id_ruta` int(11) DEFAULT NULL,
  `placas` varchar(20) NOT NULL,
  `numero_de_ruta` int(11) NOT NULL,
  `ubicacion_actual` varchar(100) NOT NULL,
  `tiempo_estimado` time DEFAULT NULL,
  `proxima_parada` varchar(100) DEFAULT NULL,
  `fecha_checada` date DEFAULT NULL,
  `hora_checada` time DEFAULT NULL,
  PRIMARY KEY (`id_checador`),
  KEY `id_ruta` (`id_ruta`),
  CONSTRAINT `checador_ibfk_1` FOREIGN KEY (`id_ruta`) REFERENCES `inf_ruta` (`id_ruta`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `checador`
--

LOCK TABLES `checador` WRITE;
/*!40000 ALTER TABLE `checador` DISABLE KEYS */;
INSERT INTO `checador` VALUES (8,1,'python',1,'Av. Universidad 120','00:00:11','Buena vista 20','2023-08-10','17:10:57'),(9,1,'python',1,'Av. Universidad 120','00:00:20','Buena vista 20','2023-08-10','17:23:30'),(10,1,'placa',1,'Av. Universidad 120','00:00:15','Buena vista 20','2023-08-10','17:25:14'),(11,1,'placa',1,'Av. Universidad 120','00:00:17','Buena vista 20','2023-08-10','17:26:29'),(12,1,'python',1,'Av. Universidad 120','00:00:14','Buena vista 20','2023-08-10','17:28:28'),(13,1,'python',1,'Av. Universidad 120','00:00:15','Buena vista 20','2023-08-10','17:30:07'),(14,1,'python',1,'Av. Universidad 120','00:00:20','Buena vista 20','2023-08-10','17:30:11'),(15,1,'JAZSDJ78',1,'Av. Universidad 120','00:00:16','Buena vista 20','2023-08-10','17:31:12'),(16,1,'JAZSDJ78',1,'Av. Universidad 120','00:00:14','Buena vista 20','2023-08-10','17:34:51'),(17,1,'JAZSDJ78',1,'Av. Universidad 120','00:00:17','Buena vista 20','2023-08-10','19:27:09'),(18,1,'JAZSDJ78',1,'Av. Universidad 120','00:00:19','Buena vista 20','2023-08-10','19:55:12'),(19,1,'JAZSDJ78',1,'Av. Universidad 120','00:00:08','Buena vista 20','2023-08-10','20:12:10');
/*!40000 ALTER TABLE `checador` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inf_ruta`
--

DROP TABLE IF EXISTS `inf_ruta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `inf_ruta` (
  `id_ruta` int(11) NOT NULL AUTO_INCREMENT,
  `placas` varchar(20) NOT NULL,
  `numero_de_ruta` int(11) NOT NULL,
  `tipo_de_ruta` varchar(50) NOT NULL,
  PRIMARY KEY (`id_ruta`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inf_ruta`
--

LOCK TABLES `inf_ruta` WRITE;
/*!40000 ALTER TABLE `inf_ruta` DISABLE KEYS */;
INSERT INTO `inf_ruta` VALUES (1,'JAZSDJ78',1,'Temixco'),(2,'HADW75F',1,'Guacamayas'),(3,'REWQD78',13,'Wallmart'),(4,'TILIN78',13,'Luna');
/*!40000 ALTER TABLE `inf_ruta` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2023-08-10 21:40:01
