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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ccarrera`
--

LOCK TABLES `ccarrera` WRITE;
/*!40000 ALTER TABLE `ccarrera` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnivel`
--

LOCK TABLES `cnivel` WRITE;
/*!40000 ALTER TABLE `cnivel` DISABLE KEYS */;
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
  `id_dkd` int NOT NULL AUTO_INCREMENT,
  `id_mc` int NOT NULL,
  `id_ekd` int NOT NULL,
  `cal_dkd` int DEFAULT NULL,
  `id_pa` int NOT NULL,
  PRIMARY KEY (`id_dkd`),
  KEY `id_mc` (`id_mc`),
  KEY `id_ekd` (`id_ekd`),
  KEY `id_pa` (`id_pa`),
  KEY `cal_dkd` (`cal_dkd`),
  CONSTRAINT `dkardex_ibfk_1` FOREIGN KEY (`id_mc`) REFERENCES `mmapacurricular` (`id_mc`) ON UPDATE CASCADE,
  CONSTRAINT `dkardex_ibfk_2` FOREIGN KEY (`id_ekd`) REFERENCES `ekardex` (`id_ekd`) ON UPDATE CASCADE,
  CONSTRAINT `dkardex_ibfk_3` FOREIGN KEY (`id_pa`) REFERENCES `cperiododeacreditacion` (`id_pa`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dkardex`
--

LOCK TABLES `dkardex` WRITE;
/*!40000 ALTER TABLE `dkardex` DISABLE KEYS */;
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
  `nom_mdoc` int NOT NULL,
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdocente`
--

LOCK TABLES `mdocente` WRITE;
/*!40000 ALTER TABLE `mdocente` DISABLE KEYS */;
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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `munidaddeaprendizaje`
--

LOCK TABLES `munidaddeaprendizaje` WRITE;
/*!40000 ALTER TABLE `munidaddeaprendizaje` DISABLE KEYS */;
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

-- Dump completed on 2024-04-05 18:51:51
