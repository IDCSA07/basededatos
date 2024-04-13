-- MySQL dump 10.13  Distrib 8.0.36, for Win64 (x86_64)
--
-- Host: localhost    Database: kardex_alumnos
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
-- Table structure for table `calificaciones3`
--

DROP TABLE IF EXISTS `calificaciones3`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones3` (
  `idcalificaciones3` int NOT NULL,
  `Nombre del profesor que te imparte la materia` varchar(45) DEFAULT NULL,
  `Materia` varchar(45) DEFAULT NULL,
  `calificacion1` int DEFAULT NULL,
  `calificacion2` int DEFAULT NULL,
  `calificacion3` int DEFAULT NULL,
  `calificacion4` int DEFAULT NULL,
  `calificacion5` int DEFAULT NULL,
  `calificacion6` int DEFAULT NULL,
  `calificacion7` int DEFAULT NULL,
  `calificacion8` int DEFAULT NULL,
  `Nombre_del_estudiante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcalificaciones3`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones3`
--

LOCK TABLES `calificaciones3` WRITE;
/*!40000 ALTER TABLE `calificaciones3` DISABLE KEYS */;
INSERT INTO `calificaciones3` VALUES (1,'Medina Garcia Daniel ','7',8,9,4,5,6,8,7,9,'Ivon Montes Perez'),(2,'Martinez Calixto Yunuen ','2',1,2,3,5,8,9,5,6,NULL),(3,'Jaime Minor Gomez','3',9,8,9,7,9,9,6,5,NULL),(4,'Medina Garcia Daniel ','5',8,5,5,4,9,9,8,9,NULL),(5,'Jaime Minor Gomez','6',7,5,8,8,9,9,9,8,NULL),(6,'Martinez Calixto Yunuen ','8',9,5,5,9,9,9,7,7,NULL),(7,'Jaime Minor Gomez','9',8,5,6,8,9,9,5,8,NULL),(8,'Medina Garcia Daniel ','7',5,10,10,10,10,9,6,9,NULL),(9,'Martinez Calixto Yunuen ','8',5,6,8,9,7,8,9,5,NULL),(10,'Jaime Minor Gomez','9',5,6,9,8,7,8,9,8,NULL);
/*!40000 ALTER TABLE `calificaciones3` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificaciones4`
--

DROP TABLE IF EXISTS `calificaciones4`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones4` (
  `idcalificaciones4` int NOT NULL,
  `Nombre_del profesor_que imparte la materia` varchar(45) DEFAULT NULL,
  `Materia` varchar(45) DEFAULT NULL,
  `Calificacion_1` int DEFAULT NULL,
  `Calificacion_2` int DEFAULT NULL,
  `Calificacion_3` int DEFAULT NULL,
  `Calificacion_4` int DEFAULT NULL,
  `Calificacion_5` int DEFAULT NULL,
  `Calificacion_6` int DEFAULT NULL,
  `Calificacion_7` int DEFAULT NULL,
  `Calificacion_8` int DEFAULT NULL,
  `Nombre_del_estudiante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcalificaciones4`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones4`
--

LOCK TABLES `calificaciones4` WRITE;
/*!40000 ALTER TABLE `calificaciones4` DISABLE KEYS */;
INSERT INTO `calificaciones4` VALUES (1,'Jaime Minor Gomez','1',5,5,8,7,8,7,4,7,'Fernanda Perez Rodriguez'),(2,'Martinez Calixto Yunuen ','7',8,4,8,7,7,9,9,5,NULL),(3,'Medina Garcia Daniel ','9',8,8,8,9,8,8,8,8,NULL),(4,'Martinez Calixto Yunuen ','8',8,7,9,8,9,7,5,8,NULL),(5,'Jaime Minor Gomez','7',9,9,7,7,9,8,8,9,NULL),(6,'Medina Garcia Daniel ','8',7,8,4,8,8,9,7,8,NULL),(7,'Martinez Calixto Yunuen ','9',8,7,5,9,7,8,8,7,NULL),(8,'Jaime Minor Gomez','8',9,9,8,8,8,6,9,5,NULL),(9,'Medina Garcia Daniel ','5',8,8,9,8,9,5,8,9,NULL),(10,'Martinez Calixto Yunuen ','8',9,7,5,9,9,8,7,8,NULL);
/*!40000 ALTER TABLE `calificaciones4` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificaciones5`
--

DROP TABLE IF EXISTS `calificaciones5`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones5` (
  `idcalificaciones5` int NOT NULL,
  `Nombre_del_docente_que imparte_la_materia` varchar(45) DEFAULT NULL,
  `Materia` varchar(45) DEFAULT NULL,
  `Calificacion1` int DEFAULT NULL,
  `Calificacion2` int DEFAULT NULL,
  `Calificacion3` int DEFAULT NULL,
  `Calificacion4` int DEFAULT NULL,
  `Calificacion5` int DEFAULT NULL,
  `calificacion6` int DEFAULT NULL,
  `Calificacion7` int DEFAULT NULL,
  `Calificacion8` int DEFAULT NULL,
  `Nombre_del_estudiante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcalificaciones5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones5`
--

LOCK TABLES `calificaciones5` WRITE;
/*!40000 ALTER TABLE `calificaciones5` DISABLE KEYS */;
INSERT INTO `calificaciones5` VALUES (1,'Medina Garcia Daniel','Quimica II',2,7,4,9,8,9,7,7,'David Rodriguez Serrato'),(2,'Jaime Minor Gomez','Fisica II',5,8,4,9,8,8,7,9,NULL),(3,'Medina Garcia Daniel','Ingles IV',8,9,4,9,6,9,7,8,NULL),(4,'Martinez Calixto Yunuen ','Dibujo Tecnico II',7,8,4,9,5,8,7,7,NULL),(5,'Jaime Minor Gomez','Calculo Diferencial',8,7,5,9,6,9,7,9,NULL),(6,'Martinez Calixto Yunuen ','Programacion Intermedia',9,8,5,9,6,8,7,8,NULL),(7,'Medina Garcia Daniel','FCyE',8,9,5,8,6,9,7,7,NULL),(8,'Martinez Calixto Yunuen ','Programacion con Nuevas Tecnologias',7,8,5,8,6,8,7,9,NULL),(9,'Jaime Minor Gomez','Base de Datos',8,7,5,8,6,9,7,8,NULL),(10,'Medina Garcia Daniel','Laboratorio de Desarrollo de Software II',9,5,8,9,8,8,7,8,NULL);
/*!40000 ALTER TABLE `calificaciones5` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificaciones6`
--

DROP TABLE IF EXISTS `calificaciones6`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones6` (
  `idcalificaciones5` int NOT NULL,
  `Nombre_del_docente_que imparte_la_materia` varchar(45) DEFAULT NULL,
  `Materia` varchar(45) DEFAULT NULL,
  `Calificacion1` int DEFAULT NULL,
  `Calificacion2` int DEFAULT NULL,
  `Calificacion3` int DEFAULT NULL,
  `Calificacion4` int DEFAULT NULL,
  `Calificacion5` int DEFAULT NULL,
  `Calificacion6` int DEFAULT NULL,
  `Calificacion7` int DEFAULT NULL,
  `Calificacion8` int DEFAULT NULL,
  `Nombre_del_estudiante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcalificaciones5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones6`
--

LOCK TABLES `calificaciones6` WRITE;
/*!40000 ALTER TABLE `calificaciones6` DISABLE KEYS */;
INSERT INTO `calificaciones6` VALUES (1,'Martinez Calixto Yunuen ','Quimica II',8,9,8,7,8,9,5,4,'Jorgue Perez Rodriguez'),(2,'Martinez Calixto Yunuen ','Dibujo Tecnico II',8,6,9,8,7,6,8,7,NULL),(3,'Jaime Minor Gomez','Fisica II',7,8,9,5,6,5,6,9,NULL),(4,'Medina Garcia Daniel','Calculo Diferencial',8,6,2,10,2,9,4,8,NULL),(5,'Jaime Minor Gomez','Ingles IV',7,8,10,9,3,8,8,7,NULL),(6,'Martinez Calixto Yunuen ','FCyE',8,9,5,8,4,5,9,7,NULL),(7,'Medina Garcia Daniel','Programacion Intermedia ',7,8,8,5,6,5,8,7,NULL),(8,'Martinez Calixto Yunuen ','Programacion con Nuevas Tecnologias',8,7,5,6,8,8,9,7,NULL),(9,'Medina Garcia Daniel','Base de Datos',7,5,6,5,7,7,8,7,NULL),(10,'Jaime Minor Gomez','Laboratorio de Desarrollo de Software',8,8,8,8,8,8,8,8,NULL);
/*!40000 ALTER TABLE `calificaciones6` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificaciones7`
--

DROP TABLE IF EXISTS `calificaciones7`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones7` (
  `idcalificaciones5` int NOT NULL,
  `Nombre_del_docente_que imparte_la_materia` varchar(45) DEFAULT NULL,
  `Materia` varchar(45) DEFAULT NULL,
  `Calificacion1` int DEFAULT NULL,
  `Calificacion2` int DEFAULT NULL,
  `Calificacion3` int DEFAULT NULL,
  `Calificacion4` int DEFAULT NULL,
  `Calificacion5` int DEFAULT NULL,
  `Calificacion6` int DEFAULT NULL,
  `Calificacion7` int DEFAULT NULL,
  `Calificacion8` int DEFAULT NULL,
  `Nombre_del_estudiante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcalificaciones5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones7`
--

LOCK TABLES `calificaciones7` WRITE;
/*!40000 ALTER TABLE `calificaciones7` DISABLE KEYS */;
INSERT INTO `calificaciones7` VALUES (1,'Medina Garcia Daniel','Quimica II',7,7,7,9,5,6,7,5,'Ignacio Sanchez Mendoza'),(2,'Jaime Minor Gomez','Fisica II',5,6,3,9,6,2,4,5,NULL),(3,'Martinez Calixto Yunuen ','Dibujo Tecnico II',8,9,2,9,8,0,4,5,NULL),(4,'Medina Garcia Daniel','Calculo Diferencial',9,8,5,9,9,1,5,5,NULL),(5,'Martinez Calixto Yunuen ','Ingles IV',7,7,0,9,7,1,5,5,NULL),(6,'Martinez Calixto Yunuen ','FCyE',8,8,1,9,8,1,4,5,NULL),(7,'Jaime Minor Gomez','Programacion Intermedia ',9,5,7,9,9,1,7,5,NULL),(8,'Jaime Minor Gomez','Programacion con Nuevas Tecnologias ',7,2,8,9,8,1,8,5,NULL),(9,'Medina Garcia Daniel','Base de Datos',8,3,5,9,7,1,5,8,NULL),(10,'Martinez Calixto Yunuen ','Laboratorio de Desarrollo de Software',8,8,8,8,8,8,8,8,NULL);
/*!40000 ALTER TABLE `calificaciones7` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificaciones8`
--

DROP TABLE IF EXISTS `calificaciones8`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones8` (
  `idcalificaciones5` int NOT NULL,
  `Nombre_del_docente_que imparte_la_materia` varchar(45) DEFAULT NULL,
  `Materia` varchar(45) DEFAULT NULL,
  `Calificacion1` int DEFAULT NULL,
  `Calificacion2` int DEFAULT NULL,
  `Calificacion3` int DEFAULT NULL,
  `Calificacion4` int DEFAULT NULL,
  `Calificacion6` int DEFAULT NULL,
  `Calificacion7` int DEFAULT NULL,
  `Calificacion8` int DEFAULT NULL,
  `Nombre_del_estudiante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idcalificaciones5`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones8`
--

LOCK TABLES `calificaciones8` WRITE;
/*!40000 ALTER TABLE `calificaciones8` DISABLE KEYS */;
INSERT INTO `calificaciones8` VALUES (1,'Medina Garcia Daniel','Quimica II',7,7,7,7,7,7,7,'Maria Concepcion Nieto '),(2,'Jaime Minor Gomez','Fisica II',2,2,8,9,8,8,8,NULL),(3,'Martinez Calixto Yunuen ','Dibujo Tecnico II',5,5,8,9,8,5,9,NULL),(4,'Jaime Minor Gomez','Ingles IV',7,8,9,8,6,9,0,NULL),(5,'Martinez Calixto Yunuen ','Calculo Diferencial',8,5,8,5,2,4,10,NULL),(6,'Jaime Minor Gomez','FCyE',9,6,9,7,8,5,8,NULL),(7,'Medina Garcia Daniel','Base de Datos ',7,6,8,8,8,4,9,NULL),(8,'Martinez Calixto Yunuen ','Programacion con Nuevas Tecnologias ',8,6,9,9,8,5,8,NULL),(9,'Jaime Minor Gomez','Programacion Intermedia ',5,9,9,9,9,4,9,NULL),(10,'Jaime Minor Gomez','Laboratorio de Desarrollo de Software II',8,9,8,9,8,7,8,NULL);
/*!40000 ALTER TABLE `calificaciones8` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificaciones_estudiantes`
--

DROP TABLE IF EXISTS `calificaciones_estudiantes`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones_estudiantes` (
  `idCalificaciones` int NOT NULL,
  `Nombre completo_del_profesor_que_imparte_la_materia` varchar(45) DEFAULT NULL,
  `Materia` varchar(45) DEFAULT NULL,
  `Calificacion_1` int DEFAULT NULL,
  `Calificacion_2` int DEFAULT NULL,
  `Calificacion_3` int DEFAULT NULL,
  `Calificacion_4` int DEFAULT NULL,
  `Calificacion_5` int DEFAULT NULL,
  `Calificacion_6` int DEFAULT NULL,
  `Calificacion_7` int DEFAULT NULL,
  `Calificacion_8` int DEFAULT NULL,
  `Nombre_del_estudiante` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idCalificaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones_estudiantes`
--

LOCK TABLES `calificaciones_estudiantes` WRITE;
/*!40000 ALTER TABLE `calificaciones_estudiantes` DISABLE KEYS */;
INSERT INTO `calificaciones_estudiantes` VALUES (1,'Martinez Calixto Yunuen ','Quimica II',7,2,2,8,9,8,8,5,'Carlos De la Cruz Sannchez'),(2,'Jaime Minor Gomez','Base de Datos',8,3,5,9,8,9,9,8,''),(3,'Medina Garcia Daniel ','Programacion con Nuevas Tecnologias ',9,5,8,7,7,7,7,9,''),(4,'Medina Garcia Daniel ','Programacion Intermedia ',8,8,7,8,8,8,8,8,''),(5,'Jaime Minor Gomez','Laboratorio de Desarrollo de Software II',9,9,8,9,9,9,8,7,''),(6,'Martinez Calixto Yunuen ','Calculo Diferencial',5,8,9,7,8,7,8,8,''),(7,'Medina Garcia Daniel ','Fisica II',2,6,7,8,7,8,8,9,''),(8,'Martinez Calixto Yunuen ','Dibujo Tecnico II',5,8,8,9,8,7,8,8,''),(9,'Jaime Minor Gomez','Ingles IV',7,5,9,8,9,8,8,9,''),(10,'Medina Garcia Daniel ','FCyE',8,6,8,7,5,9,8,8,'');
/*!40000 ALTER TABLE `calificaciones_estudiantes` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `calificaciones_estudiantes_2`
--

DROP TABLE IF EXISTS `calificaciones_estudiantes_2`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `calificaciones_estudiantes_2` (
  `idCalificaciones` int NOT NULL,
  `Nombre completo_del_profesor_que_imparte_la_materia` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Materia` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  `Calificacion_1` int DEFAULT NULL,
  `Calificacion_2` int DEFAULT NULL,
  `Calificacion_3` int DEFAULT NULL,
  `Calificacion_4` int DEFAULT NULL,
  `Calificacion_5` int DEFAULT NULL,
  `Calificacion_6` int DEFAULT NULL,
  `Calificacion_7` int DEFAULT NULL,
  `Calificacion_8` int DEFAULT NULL,
  `Nombre_del_estudiante` varchar(45) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci DEFAULT NULL,
  PRIMARY KEY (`idCalificaciones`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_cs_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `calificaciones_estudiantes_2`
--

LOCK TABLES `calificaciones_estudiantes_2` WRITE;
/*!40000 ALTER TABLE `calificaciones_estudiantes_2` DISABLE KEYS */;
INSERT INTO `calificaciones_estudiantes_2` VALUES (1,'Medina Garcia Daniel ','Quimica II',3,6,9,8,5,7,8,9,'Raquel Sanchez Nieto'),(2,'Jaime Minor Gomez','Base de Datos',5,6,9,8,7,4,5,8,NULL),(3,'Martinez Calixto Yunuen ','Programacion Intermedia',5,9,8,7,8,7,8,8,NULL),(4,'Jaime Minor Gomez',' Programacion con Nuevas Tecnologias  ',6,8,7,9,4,5,6,8,NULL),(5,'Martinez Calixto Yunuen ','Laboratorio de Desarrollo de Software',6,9,8,7,8,5,7,9,NULL),(6,'Medina Garcia Daniel ','Fisica II',9,6,8,9,7,5,6,8,NULL),(7,'Martinez Calixto Yunuen ','Calculo Diferencial',8,9,8,5,6,8,7,9,NULL),(8,'Jaime Minor Gomez','Dibujo Tecnico II',7,8,8,9,7,8,9,7,NULL),(9,'Medina Garcia Daniel ','Ingles IV',9,4,5,6,8,7,9,8,NULL),(10,'Martinez Calixto Yunuen ','FCyE',8,7,8,9,8,7,8,9,NULL);
/*!40000 ALTER TABLE `calificaciones_estudiantes_2` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `estudiante`
--

DROP TABLE IF EXISTS `estudiante`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `estudiante` (
  `idestudiante` int NOT NULL,
  `Nombre` varchar(45) DEFAULT NULL,
  `Apellido_Paterno` varchar(45) DEFAULT NULL,
  `Apellido_Materno` varchar(45) DEFAULT NULL,
  `Carrera_o_especialidad` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`idestudiante`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `estudiante`
--

LOCK TABLES `estudiante` WRITE;
/*!40000 ALTER TABLE `estudiante` DISABLE KEYS */;
INSERT INTO `estudiante` VALUES (1,'Carlos','De la Cruz ','Sanchez ','Programacion'),(2,'Raquel','Sanchez','Nieto','Programacion'),(3,'Ivon','Montes ','Perez ','Progrmacion'),(4,'Fernanda ','Perez','Rodriguez ','Programacion'),(5,'David','Rodriguez ','Serrato','Programacion'),(6,'Jorgue ','Perez','Rodriguez','Programacion'),(7,'Ignacio','Sanchez ','Mendoza','Programacion'),(8,'Maria','Concepcion','Nieto','Programacion');
/*!40000 ALTER TABLE `estudiante` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-06  0:56:52
