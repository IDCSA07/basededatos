CREATE database kardex_datos;
Use kardex_datos;
-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: kardex_datos
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
-- Table structure for table `cespecialidad`
--

DROP TABLE IF EXISTS `cespecialidad`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `cespecialidad` (
  `id_car` int NOT NULL AUTO_INCREMENT,
  `des_car` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id_car`),
  KEY `des_car` (`des_car`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cespecialidad`
--

LOCK TABLES `cespecialidad` WRITE;
/*!40000 ALTER TABLE `cespecialidad` DISABLE KEYS */;
INSERT INTO `cespecialidad` VALUES (1,'Programación');
/*!40000 ALTER TABLE `cespecialidad` ENABLE KEYS */;
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cnivel`
--

LOCK TABLES `cnivel` WRITE;
/*!40000 ALTER TABLE `cnivel` DISABLE KEYS */;
INSERT INTO `cnivel` VALUES (1,'Cuarto');
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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cperiododeacreditacion`
--

LOCK TABLES `cperiododeacreditacion` WRITE;
/*!40000 ALTER TABLE `cperiododeacreditacion` DISABLE KEYS */;
INSERT INTO `cperiododeacreditacion` VALUES (1,'Ord');
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
  `num_doc` int NOT NULL,
  PRIMARY KEY (`id_dkd`),
  KEY `id_mc` (`id_mc`),
  KEY `id_ekd` (`id_ekd`),
  KEY `id_pa` (`id_pa`),
  KEY `cal_dkd` (`cal_dkd`),
  KEY `num_doc` (`num_doc`),
  CONSTRAINT `dkardex_ibfk_1` FOREIGN KEY (`id_mc`) REFERENCES `mmapacurricular` (`id_mc`) ON UPDATE CASCADE,
  CONSTRAINT `dkardex_ibfk_2` FOREIGN KEY (`id_ekd`) REFERENCES `ekardex` (`id_ekd`) ON UPDATE CASCADE,
  CONSTRAINT `dkardex_ibfk_3` FOREIGN KEY (`id_pa`) REFERENCES `cperiododeacreditacion` (`id_pa`) ON UPDATE CASCADE,
  CONSTRAINT `dkardex_ibfk_4` FOREIGN KEY (`num_doc`) REFERENCES `mdocente` (`num_doc`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=65 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `dkardex`
--

LOCK TABLES `dkardex` WRITE;
/*!40000 ALTER TABLE `dkardex` DISABLE KEYS */;
INSERT INTO `dkardex` VALUES (1,1,1,10,1,2002091234),(2,2,1,5,1,1994095146),(3,3,1,7,1,1994095146),(4,4,1,6,1,2015094651),(5,5,1,1,1,2015094651),(6,6,1,8,1,2002091234),(7,7,1,8,1,2002091234),(8,8,1,9,1,2015094651),(9,1,2,6,1,2002091234),(10,2,2,5,1,1994095146),(11,3,2,0,1,1994095146),(12,4,2,2,1,2015094651),(13,5,2,7,1,2015094651),(14,6,2,6,1,2002091234),(15,9,2,4,1,2002091234),(16,10,2,4,1,2015094651),(17,1,3,10,1,2002091234),(18,2,3,6,1,1994095146),(19,3,3,7,1,1994095146),(20,4,3,8,1,2015094651),(21,6,3,8,1,2015094651),(22,7,3,9,1,2002091234),(23,8,3,10,1,2002091234),(24,10,3,10,1,2015094651),(25,1,4,10,1,2002091234),(26,2,4,6,1,1994095146),(27,3,4,7,1,1994095146),(28,4,4,8,1,2015094651),(29,5,4,8,1,2015094651),(30,7,4,9,1,2002091234),(31,8,4,10,1,2002091234),(32,9,4,10,1,2015094651),(33,1,5,10,1,2002091234),(34,2,5,5,1,1994095146),(35,3,5,7,1,1994095146),(36,4,5,6,1,2015094651),(37,5,5,1,1,2015094651),(38,6,5,8,1,2002091234),(39,7,5,8,1,2002091234),(40,8,5,9,1,2015094651),(41,1,6,6,1,2002091234),(42,2,6,5,1,1994095146),(43,3,6,0,1,1994095146),(44,4,6,2,1,2015094651),(45,5,6,7,1,2015094651),(46,6,6,6,1,2002091234),(47,9,6,4,1,2002091234),(48,10,6,4,1,2015094651),(49,1,7,10,1,2002091234),(50,2,7,6,1,1994095146),(51,3,7,7,1,1994095146),(52,4,7,8,1,2015094651),(53,6,7,8,1,2015094651),(54,7,7,9,1,2002091234),(55,8,7,10,1,2002091234),(56,10,7,10,1,2015094651),(57,1,8,10,1,2002091234),(58,2,8,6,1,1994095146),(59,3,8,7,1,1994095146),(60,4,8,8,1,2015094651),(61,5,8,8,1,2015094651),(62,7,8,9,1,2002091234),(63,8,8,10,1,2002091234),(64,9,8,10,1,2015094651);
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
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ekardex`
--

LOCK TABLES `ekardex` WRITE;
/*!40000 ALTER TABLE `ekardex` DISABLE KEYS */;
INSERT INTO `ekardex` VALUES (4,2023090012),(12,2023090012),(1,2023090546),(9,2023090546),(3,2023091405),(11,2023091405),(6,2023091501),(14,2023091501),(2,2023094561),(10,2023094561),(8,2023094646),(16,2023094646),(5,2023094654),(13,2023094654),(7,2023097514),(15,2023097514);
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
INSERT INTO `malumno` VALUES (2023090012,'Jaime','Liu','Tortosa','2007-03-26'),(2023090546,'Fernando','Muñoz','Hernandez','2007-09-12'),(2023091405,'Pablo','Villaverde','Marco','2007-01-01'),(2023091501,'Leticia','Villa','Cortes','2007-10-02'),(2023094561,'Valeria','Perez','Lopez','2007-11-23'),(2023094646,'Eva','Mendez','Palomo','2007-05-21'),(2023094654,'Esteban','Alarcon','Quito','2007-02-10'),(2023097514,'Daniela','Hernandez','Peña','2007-01-12');
/*!40000 ALTER TABLE `malumno` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mdocente`
--

DROP TABLE IF EXISTS `mdocente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mdocente` (
  `num_doc` int NOT NULL,
  `nom_doc` varchar(20) NOT NULL,
  `appat_doc` varchar(20) NOT NULL,
  `apmat_doc` varchar(20) NOT NULL,
  `cedula_doc` varchar(20) NOT NULL,
  `fecha_doc` date NOT NULL,
  `sueldoxhr_doc` double NOT NULL,
  PRIMARY KEY (`num_doc`),
  KEY `nom_doc` (`nom_doc`),
  KEY `appat_doc` (`appat_doc`),
  KEY `apmat_doc` (`apmat_doc`),
  KEY `cedula_doc` (`cedula_doc`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mdocente`
--

LOCK TABLES `mdocente` WRITE;
/*!40000 ALTER TABLE `mdocente` DISABLE KEYS */;
INSERT INTO `mdocente` VALUES (1994095146,'Maria','Alvarez','Madrigal','5132460','1994-12-25',800),(2002091234,'Francisco','Martinez','Rodriguez','1234651','2002-11-12',600),(2015094651,'Pedro','Perez','Gutierrez','6015465','2015-04-20',700);
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
  CONSTRAINT `mmapacurricular_ibfk_2` FOREIGN KEY (`id_car`) REFERENCES `cespecialidad` (`id_car`) ON UPDATE CASCADE,
  CONSTRAINT `mmapacurricular_ibfk_3` FOREIGN KEY (`id_niv`) REFERENCES `cnivel` (`id_niv`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mmapacurricular`
--

LOCK TABLES `mmapacurricular` WRITE;
/*!40000 ALTER TABLE `mmapacurricular` DISABLE KEYS */;
INSERT INTO `mmapacurricular` VALUES (1,1,1,1),(2,2,1,1),(3,3,1,1),(4,4,1,1),(5,5,1,1),(6,6,1,1),(7,7,1,1),(8,8,1,1),(9,9,1,1),(10,10,1,1);
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
  `cre_ua` float NOT NULL,
  PRIMARY KEY (`cla_ua`),
  KEY `nom_ua` (`nom_ua`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `munidaddeaprendizaje`
--

LOCK TABLES `munidaddeaprendizaje` WRITE;
/*!40000 ALTER TABLE `munidaddeaprendizaje` DISABLE KEYS */;
INSERT INTO `munidaddeaprendizaje` VALUES (1,'Calculo Diferencial',250),(2,'Fisica II',250),(3,'Quimica II',250),(4,'Ingles IV',250),(5,'Dibujo Tecnico II',250),(6,'Base de Datos',250),(7,'Laboratorio de Desarrollo de Software II',250),(8,'Programacion con Nuevas Tecnologias',250),(9,'Programacion Intermedia',250),(10,'Comunicacion cientifica',10);
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

-- Dump completed on 2024-04-03  0:26:12
