-- MySQL dump 10.13  Distrib 5.7.31, for Linux (x86_64)
--
-- Host: 127.0.0.1    Database: eurobisioa
-- ------------------------------------------------------
-- Server version	5.7.31-0ubuntu0.18.04.1

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Bozkatu`
--

DROP TABLE IF EXISTS `Bozkatu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Bozkatu` (
  `botoaEman` varchar(45) NOT NULL,
  `botoaJaso` varchar(45) NOT NULL,
  `artista` varchar(45) NOT NULL,
  `puntuak` int(11) NOT NULL,
  `noiz` date NOT NULL,
  PRIMARY KEY (`botoaEman`,`botoaJaso`,`artista`,`noiz`,`puntuak`),
  KEY `fk_Bozkatu_1_idx` (`artista`),
  KEY `fk_Bozkatu_3_idx` (`noiz`),
  KEY `fk_Bozkatu_4_idx` (`puntuak`),
  KEY `fk_Bozkatu_2_idx` (`botoaJaso`),
  CONSTRAINT `fk_Bozkatu_1` FOREIGN KEY (`botoaEman`) REFERENCES `herrialdea` (`izena`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Bozkatu_2` FOREIGN KEY (`botoaJaso`) REFERENCES `herrialdea` (`izena`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Bozkatu_3` FOREIGN KEY (`artista`) REFERENCES `artista` (`izen artistikoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Bozkatu_4` FOREIGN KEY (`puntuak`) REFERENCES `puntuak` (`puntuak`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_Bozkatu_5` FOREIGN KEY (`noiz`) REFERENCES `noiz` (`noiz`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Bozkatu`
--

LOCK TABLES `Bozkatu` WRITE;
/*!40000 ALTER TABLE `Bozkatu` DISABLE KEYS */;
/*!40000 ALTER TABLE `Bozkatu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `artista`
--

DROP TABLE IF EXISTS `artista`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `artista` (
  `izen artistikoa` varchar(45) NOT NULL,
  `kide kopurua` varchar(45) NOT NULL,
  PRIMARY KEY (`izen artistikoa`,`kide kopurua`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `artista`
--

LOCK TABLES `artista` WRITE;
/*!40000 ALTER TABLE `artista` DISABLE KEYS */;
/*!40000 ALTER TABLE `artista` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `erantzuna`
--

DROP TABLE IF EXISTS `erantzuna`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `erantzuna` (
  `erantzuna` enum('Bai','Ez','Ez daki oraindik') NOT NULL,
  PRIMARY KEY (`erantzuna`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `erantzuna`
--

LOCK TABLES `erantzuna` WRITE;
/*!40000 ALTER TABLE `erantzuna` DISABLE KEYS */;
/*!40000 ALTER TABLE `erantzuna` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `herrialdea`
--

DROP TABLE IF EXISTS `herrialdea`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `herrialdea` (
  `izena` varchar(45) NOT NULL,
  `ikurrina` varchar(45) NOT NULL,
  `TV izena` varchar(45) NOT NULL,
  PRIMARY KEY (`izena`,`TV izena`,`ikurrina`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `herrialdea`
--

LOCK TABLES `herrialdea` WRITE;
/*!40000 ALTER TABLE `herrialdea` DISABLE KEYS */;
/*!40000 ALTER TABLE `herrialdea` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `jaialdi`
--

DROP TABLE IF EXISTS `jaialdi`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `jaialdi` (
  `edizioa` varchar(45) NOT NULL,
  PRIMARY KEY (`edizioa`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `jaialdi`
--

LOCK TABLES `jaialdi` WRITE;
/*!40000 ALTER TABLE `jaialdi` DISABLE KEYS */;
/*!40000 ALTER TABLE `jaialdi` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mugak`
--

DROP TABLE IF EXISTS `mugak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `mugak` (
  `lehenegoHerrialdea` varchar(45) NOT NULL,
  `bigarrenHerrialdea` varchar(45) NOT NULL,
  PRIMARY KEY (`lehenegoHerrialdea`,`bigarrenHerrialdea`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mugak`
--

LOCK TABLES `mugak` WRITE;
/*!40000 ALTER TABLE `mugak` DISABLE KEYS */;
/*!40000 ALTER TABLE `mugak` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noiz`
--

DROP TABLE IF EXISTS `noiz`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noiz` (
  `noiz` date NOT NULL,
  PRIMARY KEY (`noiz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noiz`
--

LOCK TABLES `noiz` WRITE;
/*!40000 ALTER TABLE `noiz` DISABLE KEYS */;
/*!40000 ALTER TABLE `noiz` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `noizEra`
--

DROP TABLE IF EXISTS `noizEra`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `noizEra` (
  `noiz` date NOT NULL,
  PRIMARY KEY (`noiz`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `noizEra`
--

LOCK TABLES `noizEra` WRITE;
/*!40000 ALTER TABLE `noizEra` DISABLE KEYS */;
/*!40000 ALTER TABLE `noizEra` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `parte hartu`
--

DROP TABLE IF EXISTS `parte hartu`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `parte hartu` (
  `herrialdea` varchar(45) NOT NULL,
  `artista` varchar(45) NOT NULL,
  `jaialdi` varchar(45) NOT NULL,
  PRIMARY KEY (`herrialdea`,`artista`,`jaialdi`),
  KEY `fk_parte hartu_2_idx` (`artista`),
  KEY `fk_parte hartu_3_idx` (`jaialdi`),
  CONSTRAINT `fk_parte hartu_1` FOREIGN KEY (`herrialdea`) REFERENCES `herrialdea` (`izena`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_parte hartu_2` FOREIGN KEY (`artista`) REFERENCES `artista` (`izen artistikoa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  CONSTRAINT `fk_parte hartu_3` FOREIGN KEY (`jaialdi`) REFERENCES `jaialdi` (`edizioa`) ON DELETE NO ACTION ON UPDATE NO ACTION
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `parte hartu`
--

LOCK TABLES `parte hartu` WRITE;
/*!40000 ALTER TABLE `parte hartu` DISABLE KEYS */;
/*!40000 ALTER TABLE `parte hartu` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `puntuak`
--

DROP TABLE IF EXISTS `puntuak`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `puntuak` (
  `puntuak` int(11) NOT NULL,
  PRIMARY KEY (`puntuak`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `puntuak`
--

LOCK TABLES `puntuak` WRITE;
/*!40000 ALTER TABLE `puntuak` DISABLE KEYS */;
/*!40000 ALTER TABLE `puntuak` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-16  6:33:27
