-- MySQL dump 10.13  Distrib 5.1.46, for slackware-linux-gnu (x86_64)
--
-- Host: localhost    Database: arena
-- ------------------------------------------------------
-- Server version	5.1.46

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
-- Table structure for table `ADS`
--

DROP TABLE IF EXISTS `ADS`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ADS` (
  `ID` bigint(20) NOT NULL,
  `NOME` varchar(255) DEFAULT NULL,
  `MEMB_ID` bigint(20) NOT NULL,
  `COMP_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_ADS_MEMB_ID` (`MEMB_ID`),
  KEY `FK_ADS_COMP_ID` (`COMP_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ADS`
--

LOCK TABLES `ADS` WRITE;
/*!40000 ALTER TABLE `ADS` DISABLE KEYS */;
/*!40000 ALTER TABLE `ADS` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `COMPETITION`
--

DROP TABLE IF EXISTS `COMPETITION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `COMPETITION` (
  `ID` bigint(20) NOT NULL,
  `DT_CADASTRO` date DEFAULT NULL,
  `ATIVA` tinyint(1) DEFAULT '0',
  `NOME` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NOME` (`NOME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `COMPETITION`
--

LOCK TABLES `COMPETITION` WRITE;
/*!40000 ALTER TABLE `COMPETITION` DISABLE KEYS */;
INSERT INTO `COMPETITION` VALUES (10,'2011-01-17',1,'puj 2008'),(11,'2011-01-17',1,'puj 2009'),(12,'2011-01-17',1,'puj 2010'),(13,'2011-01-17',1,'pug 2011');
/*!40000 ALTER TABLE `COMPETITION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `HOMEWORK`
--

DROP TABLE IF EXISTS `HOMEWORK`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `HOMEWORK` (
  `ID` bigint(20) NOT NULL,
  `ZIP` longblob,
  `TITULO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `HOMEWORK`
--

LOCK TABLES `HOMEWORK` WRITE;
/*!40000 ALTER TABLE `HOMEWORK` DISABLE KEYS */;
/*!40000 ALTER TABLE `HOMEWORK` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `MEMBER`
--

DROP TABLE IF EXISTS `MEMBER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `MEMBER` (
  `ID` bigint(20) NOT NULL,
  `ATIVO` tinyint(1) DEFAULT '0',
  `USER_ID` bigint(20) NOT NULL,
  `SUBS_ID` bigint(20) NOT NULL,
  `ROLE_ID` bigint(20) NOT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_MEMBER_SUBS_ID` (`SUBS_ID`),
  KEY `FK_MEMBER_ROLE_ID` (`ROLE_ID`),
  KEY `FK_MEMBER_USER_ID` (`USER_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `MEMBER`
--

LOCK TABLES `MEMBER` WRITE;
/*!40000 ALTER TABLE `MEMBER` DISABLE KEYS */;
INSERT INTO `MEMBER` VALUES (56,0,6,55,1),(101,0,7,51,1),(154,0,8,51,1),(155,0,8,54,1),(157,0,8,156,1);
/*!40000 ALTER TABLE `MEMBER` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `ROLE`
--

DROP TABLE IF EXISTS `ROLE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `ROLE` (
  `ID` bigint(20) NOT NULL,
  `TITULO` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `ROLE`
--

LOCK TABLES `ROLE` WRITE;
/*!40000 ALTER TABLE `ROLE` DISABLE KEYS */;
INSERT INTO `ROLE` VALUES (1,'Estudante'),(3,'Profissional de mercado'),(2,'Professor'),(5,'Patrocinador'),(4,'Instituição');
/*!40000 ALTER TABLE `ROLE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SEQUENCE`
--

DROP TABLE IF EXISTS `SEQUENCE`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SEQUENCE` (
  `SEQ_NAME` varchar(50) NOT NULL,
  `SEQ_COUNT` decimal(38,0) DEFAULT NULL,
  PRIMARY KEY (`SEQ_NAME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SEQUENCE`
--

LOCK TABLES `SEQUENCE` WRITE;
/*!40000 ALTER TABLE `SEQUENCE` DISABLE KEYS */;
INSERT INTO `SEQUENCE` VALUES ('SEQ_GEN','200');
/*!40000 ALTER TABLE `SEQUENCE` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `SUBSCRIPTION`
--

DROP TABLE IF EXISTS `SUBSCRIPTION`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SUBSCRIPTION` (
  `ID` bigint(20) NOT NULL,
  `ATIVO` tinyint(1) DEFAULT '0',
  `NOME` varchar(255) DEFAULT NULL,
  `HOME_ID` bigint(20) DEFAULT NULL,
  `COMP_ID` bigint(20) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  KEY `FK_SUBSCRIPTION_COMP_ID` (`COMP_ID`),
  KEY `FK_SUBSCRIPTION_HOME_ID` (`HOME_ID`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SUBSCRIPTION`
--

LOCK TABLES `SUBSCRIPTION` WRITE;
/*!40000 ALTER TABLE `SUBSCRIPTION` DISABLE KEYS */;
INSERT INTO `SUBSCRIPTION` VALUES (51,0,'equipe rocket',NULL,13),(52,0,'equipe rocket',NULL,10),(53,0,'equipe rocket',NULL,11),(54,0,'equipe rocket',NULL,12),(156,0,'força red ribbon',NULL,10);
/*!40000 ALTER TABLE `SUBSCRIPTION` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `USER`
--

DROP TABLE IF EXISTS `USER`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `USER` (
  `ID` bigint(20) NOT NULL,
  `DT_CADASTRO` date DEFAULT NULL,
  `EMAIL` varchar(255) DEFAULT NULL,
  `ATIVO` tinyint(1) DEFAULT '0',
  `NOME` varchar(255) DEFAULT NULL,
  `SENHA` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`ID`),
  UNIQUE KEY `NOME` (`NOME`)
) ENGINE=MyISAM DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `USER`
--

LOCK TABLES `USER` WRITE;
/*!40000 ALTER TABLE `USER` DISABLE KEYS */;
INSERT INTO `USER` VALUES (6,'2011-01-17','a',0,'a','a'),(7,'2011-01-17','z',0,'z','z'),(8,'2011-01-17','q',0,'q','q'),(9,'2011-01-17','a',0,'soneca','a');
/*!40000 ALTER TABLE `USER` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2011-01-17 22:57:03
