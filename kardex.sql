-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: kardex
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
-- Table structure for table `ccarrera`
--

DROP TABLE IF EXISTS `ccarrera`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ccarrera` (
  `id_car` int NOT NULL AUTO_INCREMENT,
  `des_car` varchar(50) NOT NULL,
  PRIMARY KEY (`id_car`),
  KEY `des_car` (`des_car`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccarrera`
--

LOCK TABLES `ccarrera` WRITE;
/*!40000 ALTER TABLE `ccarrera` DISABLE KEYS */;
INSERT INTO `ccarrera` VALUES (1,'Tecnico en Programacion');
/*!40000 ALTER TABLE `ccarrera` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cnivel`
--

DROP TABLE IF EXISTS `cnivel`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cnivel` (
  `id_niv` int NOT NULL AUTO_INCREMENT,
  `des_niv` varchar(20) NOT NULL,
  PRIMARY KEY (`id_niv`),
  KEY `des_niv` (`des_niv`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnivel`
--

LOCK TABLES `cnivel` WRITE;
/*!40000 ALTER TABLE `cnivel` DISABLE KEYS */;
INSERT INTO `cnivel` VALUES (1,'1 semestre'),(2,'2 semestre'),(3,'3 semestre'),(4,'4 semestre '),(5,'5 semestre'),(6,'6 semestre');
/*!40000 ALTER TABLE `cnivel` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cperiododeacreditacion`
--

DROP TABLE IF EXISTS `cperiododeacreditacion`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cperiododeacreditacion` (
  `id_pa` int NOT NULL AUTO_INCREMENT,
  `des_pa` varchar(30) NOT NULL,
  PRIMARY KEY (`id_pa`),
  KEY `des_pa` (`des_pa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cperiododeacreditacion`
--

LOCK TABLES `cperiododeacreditacion` WRITE;
/*!40000 ALTER TABLE `cperiododeacreditacion` DISABLE KEYS */;
/*!40000 ALTER TABLE `cperiododeacreditacion` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `dkardex`
--

DROP TABLE IF EXISTS `dkardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `dkardex` (
  `id_dkd` int NOT NULL,
  `id_mc` int NOT NULL,
  `id_ekd` int NOT NULL,
  `cal_dkd` int NOT NULL,
  `id_pa` int NOT NULL,
  PRIMARY KEY (`id_dkd`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dkardex`
--

LOCK TABLES `dkardex` WRITE;
/*!40000 ALTER TABLE `dkardex` DISABLE KEYS */;
INSERT INTO `dkardex` VALUES (1,1,1,3,4),(2,1,1,3,4),(3,1,1,4,4),(4,1,1,4,4),(5,1,1,3,4),(6,1,1,3,4),(7,1,1,4,4),(8,1,1,3,4),(9,1,1,4,4),(10,1,1,3,4),(11,1,1,4,4),(12,1,1,3,4),(13,1,1,4,4),(14,1,1,3,4),(15,1,1,4,4),(16,1,1,3,4),(17,1,1,4,4),(18,1,1,3,4),(19,1,1,5,4),(20,1,1,6,4),(21,1,1,7,4),(22,1,1,8,4),(23,1,1,9,4),(24,1,1,2,4),(25,1,1,3,4),(26,1,1,4,4),(27,1,1,5,4),(28,1,1,4,4),(29,1,1,6,4),(30,1,1,7,4),(31,1,1,8,4),(32,1,1,9,4),(33,1,1,3,4),(34,1,1,4,4),(35,1,1,5,4),(36,1,1,6,4),(37,1,1,7,4),(38,1,1,8,4),(39,1,1,9,4),(40,1,1,2,4),(41,1,1,4,4),(42,1,1,3,4),(43,1,1,5,4),(44,1,1,6,4),(45,1,1,7,4),(46,1,1,8,4),(47,1,1,9,4),(48,1,1,5,4),(49,1,1,6,4),(50,1,1,7,4),(51,1,1,4,4),(52,1,1,5,4),(53,1,1,6,4),(54,1,1,7,4),(55,1,1,8,4),(56,1,1,9,4),(57,1,1,3,44),(58,1,1,4,4),(59,1,1,5,4),(60,1,1,6,4),(61,1,11,7,4),(62,1,1,8,4),(63,1,1,9,4),(64,1,1,2,4);
/*!40000 ALTER TABLE `dkardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ekardex`
--

DROP TABLE IF EXISTS `ekardex`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `ekardex` (
  `id_ekd` int NOT NULL AUTO_INCREMENT,
  `bol_alu` int NOT NULL,
  PRIMARY KEY (`id_ekd`),
  KEY `bol_alu` (`bol_alu`),
  CONSTRAINT `ekardex_ibfk_1` FOREIGN KEY (`bol_alu`) REFERENCES `malumno` (`bol_alu`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekardex`
--

LOCK TABLES `ekardex` WRITE;
/*!40000 ALTER TABLE `ekardex` DISABLE KEYS */;
/*!40000 ALTER TABLE `ekardex` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `malumno`
--

DROP TABLE IF EXISTS `malumno`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `malumno` (
  `bol_alu` int NOT NULL,
  `nom_alu` varchar(20) NOT NULL,
  `appat_alu` varchar(20) NOT NULL,
  `apmat_alu` varchar(20) NOT NULL,
  `fecha_alu` date NOT NULL,
  PRIMARY KEY (`bol_alu`),
  KEY `nom_alu` (`nom_alu`),
  KEY `appat_alu` (`appat_alu`),
  KEY `apmat_alu` (`apmat_alu`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `malumno`
--

LOCK TABLES `malumno` WRITE;
/*!40000 ALTER TABLE `malumno` DISABLE KEYS */;
INSERT INTO `malumno` VALUES (2023090123,'Fernanda','Ramirez','Gonzales','2020-07-23'),(2023090125,'Cesar','Sanchez','Sanchez','2020-08-23'),(2023090134,'Daniela','Piña','Jimenez','2025-04-23'),(2023090156,'Daniel','Fernandez','Rodriguez','2023-11-23'),(2023090176,'Juan','Medina','Martinez','2023-08-23'),(2023090198,'Julio','De la Cruz','Barona','2021-05-23'),(2023090285,'Carlos','Rodriguez','Medina','2021-09-23'),(2023090345,'Raquel','Yañez','Perez','2021-07-23');
/*!40000 ALTER TABLE `malumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdocente`
--

DROP TABLE IF EXISTS `mdocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdocente` (
  `id_mdoc` int NOT NULL AUTO_INCREMENT,
  `num_mdoc` int NOT NULL,
  `nom_mdoc` varchar(45) NOT NULL,
  `appat_mdoc` varchar(20) NOT NULL,
  `apmat_mdoc` varchar(20) NOT NULL,
  `ncedula_mdoc` int NOT NULL,
  PRIMARY KEY (`id_mdoc`),
  KEY `num_mdoc` (`num_mdoc`),
  KEY `nom_mdoc` (`nom_mdoc`),
  KEY `appat_mdoc` (`appat_mdoc`),
  KEY `apmat_mdoc` (`apmat_mdoc`),
  KEY `apmat_mdoc_2` (`apmat_mdoc`),
  KEY `ncedula_mdoc` (`ncedula_mdoc`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdocente`
--

LOCK TABLES `mdocente` WRITE;
/*!40000 ALTER TABLE `mdocente` DISABLE KEYS */;
INSERT INTO `mdocente` VALUES (1,324849,'Ignacio','Fernandez','Hernandez',247),(2,420940,'Daniel','Rodriguez','Montaño',377),(3,838490,'Jaime ','Sanchez','Hernandez',324);
/*!40000 ALTER TABLE `mdocente` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mmapacurricular`
--

DROP TABLE IF EXISTS `mmapacurricular`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mmapacurricular` (
  `id_mc` int NOT NULL AUTO_INCREMENT,
  `cla_ua` int NOT NULL,
  `id_car` int NOT NULL,
  `id_niv` int NOT NULL,
  PRIMARY KEY (`id_mc`),
  KEY `cla_ua` (`cla_ua`),
  KEY `id_car` (`id_car`),
  KEY `id_niv` (`id_niv`),
  CONSTRAINT `mmapacurricular_ibfk_1` FOREIGN KEY (`cla_ua`) REFERENCES `munidaddeaprendizaje` (`cla_ua`) ON UPDATE CASCADE,
  CONSTRAINT `mmapacurricular_ibfk_2` FOREIGN KEY (`id_car`) REFERENCES `ccarrera` (`id_car`) ON UPDATE CASCADE,
  CONSTRAINT `mmapacurricular_ibfk_3` FOREIGN KEY (`id_niv`) REFERENCES `cnivel` (`id_niv`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mmapacurricular`
--

LOCK TABLES `mmapacurricular` WRITE;
/*!40000 ALTER TABLE `mmapacurricular` DISABLE KEYS */;
/*!40000 ALTER TABLE `mmapacurricular` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `munidaddeaprendizaje`
--

DROP TABLE IF EXISTS `munidaddeaprendizaje`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `munidaddeaprendizaje` (
  `cla_ua` int NOT NULL AUTO_INCREMENT,
  `nom_ua` varchar(100) NOT NULL,
  PRIMARY KEY (`cla_ua`),
  KEY `nom_ua` (`nom_ua`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `munidaddeaprendizaje`
--

LOCK TABLES `munidaddeaprendizaje` WRITE;
/*!40000 ALTER TABLE `munidaddeaprendizaje` DISABLE KEYS */;
INSERT INTO `munidaddeaprendizaje` VALUES (6,'Algoritmia'),(7,'Base de datos'),(4,'Fisica I'),(2,'Geometria Analitica'),(8,'Ingles III'),(9,'Ingles IV'),(1,'Laboratorio de Desarrollo de Software'),(3,'Programacion Basica'),(10,'Programacion Intermedia'),(5,'Quimica I');
/*!40000 ALTER TABLE `munidaddeaprendizaje` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-09 20:09:28
