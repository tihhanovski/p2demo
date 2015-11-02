-- MySQL dump 10.16  Distrib 10.1.6-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: p2demo
-- ------------------------------------------------------
-- Server version	10.1.6-MariaDB-1~wheezy-log

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
-- Table structure for table `SqlUpdateLog`
--

DROP TABLE IF EXISTS `SqlUpdateLog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `SqlUpdateLog` (
  `ID` int(11) NOT NULL AUTO_INCREMENT,
  `file` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `command` text COLLATE utf8_unicode_ci,
  `result` text COLLATE utf8_unicode_ci,
  PRIMARY KEY (`ID`)
) ENGINE=MyISAM AUTO_INCREMENT=43 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='@system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SqlUpdateLog`
--

LOCK TABLES `SqlUpdateLog` WRITE;
/*!40000 ALTER TABLE `SqlUpdateLog` DISABLE KEYS */;
INSERT INTO `SqlUpdateLog` VALUES (1,'framework:2011-11-05-001-user-system.sql','insert into webuser(ID, uid, pwd, state)values(1, \'system\', \'xxx\', 1), (2, \'admin\', password(\'admin\'), 2)','DB Error: already exists: insert into webuser(ID, uid, pwd, state)values(1, \'system\', \'xxx\', 1), (2, \'admin\', password(\'admin\'), 2) [nativecode=1062 ** Duplicate entry \'1\' for key \'PRIMARY\']'),(2,'framework:2011-11-05-001-user-system.sql','insert into role(ID, name, state)values(1, \'system\', 2), (2, \'admin\', 2)','ok'),(3,'framework:2011-11-05-001-user-system.sql','insert into userrole(userID, roleID)values(1, 1), (2, 2)','ok'),(4,'framework:2011-11-05-001-user-system.sql','insert into objectright(roleID, registryID, s, u, d) select 2 as roleID, id as registryID, 1, 1, 1 from robject','ok'),(5,'framework:2011-11-10-001-userproperty.sql','alter table userproperty add unique index(userId, name)','ok'),(6,'framework:2011-11-15-001-objectproperty.sql','alter table objectproperty add unique index(robject, name)','ok'),(7,'framework:2011-12-02-01-userstats.sql','alter table userstats add index(userId)','ok'),(8,'framework:2011-12-02-01-userstats.sql','alter table userstats add index(name)','ok'),(9,'framework:2011-12-02-01-userstats.sql','alter table userstats add index(dt)','ok'),(10,'framework:2014-09-18-language.sql','insert into language(id, code, name)\nselect id, code, name from languages','DB Error: no such table: insert into language(id, code, name)\nselect id, code, name from languages [nativecode=1146 ** Table \'newapp.languages\' doesn\'t exist]'),(11,'framework:2014-09-18-language.sql','drop table languages','DB Error: no such table: drop table languages [nativecode=1051 ** Unknown table \'newapp.languages\']'),(12,'framework:2014-09-refactoring.sql','ALTER TABLE email CHANGE ID id INT NOT NULL AUTO_INCREMENT','ok'),(13,'framework:2014-09-refactoring.sql','ALTER TABLE email CHANGE mdCreatorID mdCreatorId INT NULL DEFAULT NULL','ok'),(14,'framework:2014-09-refactoring.sql','ALTER TABLE email CHANGE mdUpdaterID mdUpdaterId INT NULL DEFAULT NULL','ok'),(15,'framework:2014-09-refactoring.sql','ALTER TABLE `webuser` CHANGE `ID` `id` INT NOT NULL  AUTO_INCREMENT','ok'),(16,'framework:2014-09-refactoring.sql','ALTER TABLE `userstats` CHANGE `ID` `id` INT NOT NULL  AUTO_INCREMENT','ok'),(17,'framework:2014-09-refactoring.sql','/* 0:56:04  Fobos */ ALTER TABLE `tipsystem` CHANGE `ID` `id` INT(11)  NOT NULL  AUTO_INCREMENT','ok'),(18,'framework:2014-09-refactoring.sql','/* 0:56:24  Fobos */ ALTER TABLE `tipsystem` CHANGE `mdCreatorID` `mdCreatorId` INT(11)  NULL  DEFAULT NULL','ok'),(19,'framework:2014-09-refactoring.sql','/* 0:56:26  Fobos */ ALTER TABLE `tipsystem` CHANGE `mdUpdaterID` `mdUpdaterId` INT(11)  NULL  DEFAULT NULL','ok'),(20,'framework:2014-09-refactoring.sql','/* 0:57:03  Fobos */ ALTER TABLE `tipshown` CHANGE `ID` `id` INT(11)  NOT NULL  AUTO_INCREMENT','ok'),(21,'framework:2014-09-refactoring.sql','/* 0:57:05  Fobos */ ALTER TABLE `tipshown` CHANGE `tipID` `tipId` INT(11)  NOT NULL  DEFAULT \'0\'','ok'),(22,'framework:2014-09-refactoring.sql','/* 0:57:07  Fobos */ ALTER TABLE `tipshown` CHANGE `userID` `userId` INT(11)  NOT NULL  DEFAULT \'0\'','ok'),(23,'framework:2014-09-refactoring.sql','/* 0:58:05  Fobos */ ALTER TABLE `softwareissue` CHANGE `mdCreatorID` `mdCreatorId` INT(11)  NULL  DEFAULT NULL','DB Error: no such field: /* 0:58:05  Fobos */ ALTER TABLE `softwareissue` CHANGE `mdCreatorID` `mdCreatorId` INT(11)  NULL  DEFAULT NULL [nativecode=1054 ** Unknown column \'mdCreatorID\' in \'softwareissue\']'),(24,'framework:2014-09-refactoring.sql','/* 0:58:07  Fobos */ ALTER TABLE `softwareissue` CHANGE `mdUpdaterID` `mdUpdaterId` INT(11)  NULL  DEFAULT NULL','ok'),(25,'framework:2014-09-refactoring.sql','/* 0:58:33  Fobos */ ALTER TABLE `role` CHANGE `ID` `id` INT(11)  NOT NULL  AUTO_INCREMENT','ok'),(26,'framework:2014-09-refactoring.sql','/* 0:58:52  Fobos */ ALTER TABLE `robject` CHANGE `ID` `id` INT(11)  NOT NULL  AUTO_INCREMENT','ok'),(27,'framework:2014-09-refactoring.sql','/* 0:58:54  Fobos */ ALTER TABLE `robject` CHANGE `typeID` `typeId` INT(11)  NOT NULL  DEFAULT \'1\'','ok'),(28,'framework:2014-09-refactoring.sql','/* 0:59:12  Fobos */ ALTER TABLE `rmodule` CHANGE `ID` `id` INT(11)  NOT NULL  DEFAULT \'0\'','ok'),(29,'framework:2014-09-refactoring.sql','/* 0:59:36  Fobos */ ALTER TABLE `objlog` CHANGE `ID` `id` INT(11)  NOT NULL  AUTO_INCREMENT','ok'),(30,'framework:2014-09-refactoring.sql','/* 1:04:29  Fobos */ ALTER TABLE `menupart` CHANGE `ID` `id` INT(11)  NOT NULL  DEFAULT \'0\'','ok'),(31,'framework:2014-09-refactoring.sql','/* 1:05:20  Fobos */ ALTER TABLE `message` CHANGE `ID` `id` INT(11)  NOT NULL  AUTO_INCREMENT','ok'),(32,'framework:2014-09-refactoring.sql','/* 1:05:23  Fobos */ ALTER TABLE `message` CHANGE `replyToID` `replyToId` INT(11)  NULL  DEFAULT NULL','ok'),(33,'framework:2014-09-refactoring.sql','/* 1:06:51  Fobos */ ALTER TABLE `objectlink` CHANGE `mdCreatorID` `mdCreatorId` INT(11)  NULL  DEFAULT NULL','ok'),(34,'framework:2014-09-refactoring.sql','/* 1:06:52  Fobos */ ALTER TABLE `objectlink` CHANGE `mdUpdaterID` `mdUpdaterId` INT(11)  NULL  DEFAULT NULL','ok'),(35,'framework:2014-09-refactoring.sql','/* 1:10:10  Fobos */ ALTER TABLE `state` CHANGE `ID` `id` INT(11)  NOT NULL  DEFAULT \'0\'','ok'),(36,'framework:2014-09-refactoring.sql','ALTER TABLE userrole CHANGE userID userId INT NULL DEFAULT NULL','ok'),(37,'framework:2014-09-refactoring.sql','ALTER TABLE userrole CHANGE roleID roleId INT NULL DEFAULT NULL','ok'),(38,'framework:2014-09-refactoring.sql','ALTER TABLE objectright CHANGE roleID roleId INT NOT NULL','ok'),(39,'framework:2014-09-refactoring.sql','ALTER TABLE objectright CHANGE registryID registryId INT NOT NULL','ok'),(40,'framework:2014-11-objlog-optimization.sql','delete from objlog where robject like \'userproperty%\'','ok'),(41,'framework:2014-11-objlog-optimization.sql','delete from objlog where robject like \'tipsystem%\'','ok'),(42,'framework:2014-11-objlog-optimization.sql','delete from objlog where robject like \'userstats%\'','ok');
/*!40000 ALTER TABLE `SqlUpdateLog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `article`
--

DROP TABLE IF EXISTS `article`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `article` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `unitId` int(11) DEFAULT NULL,
  `code` varchar(50) NOT NULL,
  `name` varchar(100) NOT NULL,
  `memo` text NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `typeId` int(11) NOT NULL DEFAULT '0',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `idxArticleCode` (`code`),
  KEY `idxArticleUnitId` (`unitId`),
  KEY `idxArticleName` (`name`),
  KEY `idxArticleType` (`typeId`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Articles';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `article`
--

LOCK TABLES `article` WRITE;
/*!40000 ALTER TABLE `article` DISABLE KEYS */;
INSERT INTO `article` VALUES (1,1,'X','Kaup X','a',0,0,'2015-11-02 10:32:43','2015-11-02 10:35:12',2,2);
/*!40000 ALTER TABLE `article` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `articletype`
--

DROP TABLE IF EXISTS `articletype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `articletype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `articletype`
--

LOCK TABLES `articletype` WRITE;
/*!40000 ALTER TABLE `articletype` DISABLE KEYS */;
INSERT INTO `articletype` VALUES (0,'component'),(1,'expenses'),(2,'salary'),(3,'salary taxes');
/*!40000 ALTER TABLE `articletype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `company`
--

DROP TABLE IF EXISTS `company`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `company` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL,
  `customer` tinyint(4) NOT NULL DEFAULT '1',
  `supplier` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `vatCode` varchar(50) NOT NULL DEFAULT '',
  `regCode` varchar(50) NOT NULL DEFAULT '',
  `addrStreet1` varchar(50) NOT NULL DEFAULT '',
  `addrStreet2` varchar(50) NOT NULL DEFAULT '',
  `addrCity` varchar(50) NOT NULL DEFAULT '',
  `addrIndex` varchar(50) NOT NULL DEFAULT '',
  `addrCountry` varchar(50) NOT NULL DEFAULT '',
  `addr` varchar(255) NOT NULL DEFAULT '',
  `deliveryTerms` varchar(100) NOT NULL DEFAULT '',
  `paymentTerms` varchar(100) NOT NULL DEFAULT '',
  `contact` varchar(50) NOT NULL DEFAULT '',
  `phone` varchar(50) NOT NULL DEFAULT '',
  `email` varchar(50) NOT NULL DEFAULT '',
  `fax` varchar(50) NOT NULL DEFAULT '',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='companies registry';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `company`
--

LOCK TABLES `company` WRITE;
/*!40000 ALTER TABLE `company` DISABLE KEYS */;
INSERT INTO `company` VALUES (1,'--','Default',1,0,'',0,'','','','','','','','','','','','','','','2015-11-02 10:13:50','2015-11-02 10:13:50',1,1);
/*!40000 ALTER TABLE `company` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `cronlog`
--

DROP TABLE IF EXISTS `cronlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `cronlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `memo` text NOT NULL,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cronlog`
--

LOCK TABLES `cronlog` WRITE;
/*!40000 ALTER TABLE `cronlog` DISABLE KEYS */;
/*!40000 ALTER TABLE `cronlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `crontask`
--

DROP TABLE IF EXISTS `crontask`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `crontask` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `started` datetime DEFAULT NULL,
  `finished` datetime DEFAULT NULL,
  `log` longtext NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `crontask`
--

LOCK TABLES `crontask` WRITE;
/*!40000 ALTER TABLE `crontask` DISABLE KEYS */;
/*!40000 ALTER TABLE `crontask` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `email`
--

DROP TABLE IF EXISTS `email`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `email` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `recipient` varchar(100) NOT NULL DEFAULT '',
  `sender` varchar(100) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  `sent` datetime DEFAULT NULL,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  `subject` varchar(200) NOT NULL DEFAULT '',
  `bcc` varchar(200) NOT NULL DEFAULT '',
  `signature` longtext NOT NULL,
  `attachment` longtext NOT NULL,
  `result` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `email`
--

LOCK TABLES `email` WRITE;
/*!40000 ALTER TABLE `email` DISABLE KEYS */;
/*!40000 ALTER TABLE `email` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `language`
--

DROP TABLE IF EXISTS `language`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `language` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` char(2) NOT NULL DEFAULT '',
  `name` varchar(100) NOT NULL DEFAULT '',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `language`
--

LOCK TABLES `language` WRITE;
/*!40000 ALTER TABLE `language` DISABLE KEYS */;
/*!40000 ALTER TABLE `language` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `menupart`
--

DROP TABLE IF EXISTS `menupart`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `menupart` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `menupart`
--

LOCK TABLES `menupart` WRITE;
/*!40000 ALTER TABLE `menupart` DISABLE KEYS */;
INSERT INTO `menupart` VALUES (1,'document'),(2,'report'),(3,'registry'),(4,'settings');
/*!40000 ALTER TABLE `menupart` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `message`
--

DROP TABLE IF EXISTS `message`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `message` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `senderId` int(11) NOT NULL DEFAULT '0',
  `recieverId` int(11) NOT NULL DEFAULT '0',
  `caption` varchar(200) DEFAULT NULL,
  `body` text,
  `sent` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `recieved` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `replyToId` int(11) DEFAULT NULL,
  `robject` varchar(50) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='@system\nSõnumid kasutajate vahel (seotud dokumentidega jms)';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `message`
--

LOCK TABLES `message` WRITE;
/*!40000 ALTER TABLE `message` DISABLE KEYS */;
/*!40000 ALTER TABLE `message` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `nrsequence`
--

DROP TABLE IF EXISTS `nrsequence`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `nrsequence` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  `prefix` varchar(10) NOT NULL DEFAULT '',
  `suffix` varchar(10) NOT NULL DEFAULT '',
  `startNr` int(11) NOT NULL DEFAULT '1',
  `startDt` date DEFAULT NULL,
  `finishDt` date DEFAULT NULL,
  `memo` text NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `nrsequence`
--

LOCK TABLES `nrsequence` WRITE;
/*!40000 ALTER TABLE `nrsequence` DISABLE KEYS */;
INSERT INTO `nrsequence` VALUES (1,'Ladu','L/','',1,NULL,NULL,'',0,'2015-11-02 10:28:49','2015-11-02 10:28:49',2,2);
/*!40000 ALTER TABLE `nrsequence` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectlink`
--

DROP TABLE IF EXISTS `objectlink`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objectlink` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `robject1` varchar(100) NOT NULL,
  `robject2` varchar(100) NOT NULL,
  `id1` int(11) NOT NULL,
  `id2` int(11) NOT NULL,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectlink`
--

LOCK TABLES `objectlink` WRITE;
/*!40000 ALTER TABLE `objectlink` DISABLE KEYS */;
/*!40000 ALTER TABLE `objectlink` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectproperty`
--

DROP TABLE IF EXISTS `objectproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objectproperty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `robject` varchar(50) NOT NULL,
  `name` varchar(50) NOT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `robject` (`robject`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectproperty`
--

LOCK TABLES `objectproperty` WRITE;
/*!40000 ALTER TABLE `objectproperty` DISABLE KEYS */;
INSERT INTO `objectproperty` VALUES (1,'nrsequence1','Enumwhincome','1'),(2,'nrsequence1','Enumwhinitial','1'),(3,'nrsequence1','Enumwhintra','1'),(4,'nrsequence1','Enumwhinventory','1'),(5,'nrsequence1','Enumwhoutcome','1'),(6,'nrsequence1','Enumwhproduction','1'),(7,'nrsequence1','Enumwhwriteoff','1');
/*!40000 ALTER TABLE `objectproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objectright`
--

DROP TABLE IF EXISTS `objectright`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objectright` (
  `roleId` int(11) NOT NULL,
  `registryId` int(11) NOT NULL,
  `s` tinyint(4) NOT NULL DEFAULT '0',
  `u` tinyint(4) NOT NULL DEFAULT '0',
  `d` tinyint(4) NOT NULL DEFAULT '0',
  `l` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`roleId`,`registryId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objectright`
--

LOCK TABLES `objectright` WRITE;
/*!40000 ALTER TABLE `objectright` DISABLE KEYS */;
INSERT INTO `objectright` VALUES (2,1,1,1,1,0),(2,2,1,1,1,0),(2,3,1,1,1,0),(2,4,1,1,1,0),(2,14,1,1,1,0),(2,17,1,1,1,0),(2,19,1,1,1,0),(2,20,1,1,1,0),(2,21,1,1,1,0),(2,23,1,1,1,0),(2,24,0,0,0,0),(2,28,1,1,1,0),(2,34,1,1,1,0),(2,1002,1,1,1,0),(2,1003,1,1,1,0),(2,1004,0,0,0,0),(2,1005,1,1,1,0),(2,1006,1,1,1,0),(2,10001,1,1,1,0),(2,10002,1,1,1,0),(2,10003,1,1,1,1),(2,10004,1,1,1,0),(2,10005,1,1,1,0),(2,10006,1,1,1,0),(2,10007,1,1,1,0),(2,10008,1,1,1,0),(2,10009,1,1,1,1),(2,10010,1,1,1,1),(2,10101,1,1,1,1),(2,10102,1,1,1,0),(2,20001,0,0,0,0);
/*!40000 ALTER TABLE `objectright` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `objlog`
--

DROP TABLE IF EXISTS `objlog`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `objlog` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` datetime NOT NULL,
  `robject` varchar(50) NOT NULL,
  `val` longtext NOT NULL,
  `acn` tinyint(4) NOT NULL,
  `acntype` tinyint(4) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`),
  KEY `robject` (`robject`),
  KEY `dt` (`dt`)
) ENGINE=InnoDB AUTO_INCREMENT=44 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `objlog`
--

LOCK TABLES `objlog` WRITE;
/*!40000 ALTER TABLE `objlog` DISABLE KEYS */;
INSERT INTO `objlog` VALUES (1,'2015-11-02 10:13:50','robject4','O:11:\"DBO_Robject\":16:{s:7:\"__table\";s:7:\"robject\";s:2:\"id\";s:1:\"4\";s:4:\"name\";s:7:\"article\";s:5:\"state\";s:1:\"2\";s:6:\"typeId\";s:1:\"1\";s:6:\"module\";i:2;s:10:\"menupartId\";i:3;s:3:\"pos\";s:1:\"0\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:1;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',1,0,1),(2,'2015-11-02 10:13:51','company1','O:11:\"DBO_Company\":34:{s:7:\"__table\";s:7:\"company\";s:2:\"id\";i:1;s:4:\"code\";s:2:\"--\";s:4:\"name\";s:7:\"Default\";s:8:\"customer\";N;s:8:\"supplier\";N;s:4:\"memo\";N;s:6:\"closed\";N;s:7:\"vatCode\";N;s:7:\"regCode\";N;s:11:\"addrStreet1\";N;s:11:\"addrStreet2\";N;s:8:\"addrCity\";N;s:9:\"addrIndex\";N;s:11:\"addrCountry\";N;s:4:\"addr\";N;s:13:\"deliveryTerms\";N;s:12:\"paymentTerms\";N;s:7:\"contact\";N;s:5:\"phone\";N;s:5:\"email\";N;s:3:\"fax\";N;s:9:\"mdCreated\";s:19:\"2015-11-02 10:13:50\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:13:50\";s:11:\"mdCreatorId\";s:1:\"1\";s:11:\"mdUpdaterId\";s:1:\"1\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(3,'2015-11-02 10:13:51','sequencedobjectwhincome','O:19:\"DBO_Sequencedobject\":10:{s:7:\"__table\";s:15:\"sequencedobject\";s:4:\"name\";s:8:\"whincome\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(4,'2015-11-02 10:13:51','sequencedobjectwhinitial','O:19:\"DBO_Sequencedobject\":10:{s:7:\"__table\";s:15:\"sequencedobject\";s:4:\"name\";s:9:\"whinitial\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(5,'2015-11-02 10:13:51','sequencedobjectwhintra','O:19:\"DBO_Sequencedobject\":10:{s:7:\"__table\";s:15:\"sequencedobject\";s:4:\"name\";s:7:\"whintra\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(6,'2015-11-02 10:13:51','sequencedobjectwhinventory','O:19:\"DBO_Sequencedobject\":10:{s:7:\"__table\";s:15:\"sequencedobject\";s:4:\"name\";s:11:\"whinventory\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(7,'2015-11-02 10:13:51','sequencedobjectwhoutcome','O:19:\"DBO_Sequencedobject\":10:{s:7:\"__table\";s:15:\"sequencedobject\";s:4:\"name\";s:9:\"whoutcome\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(8,'2015-11-02 10:13:51','sequencedobjectwhproduction','O:19:\"DBO_Sequencedobject\":10:{s:7:\"__table\";s:15:\"sequencedobject\";s:4:\"name\";s:12:\"whproduction\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(9,'2015-11-02 10:13:51','sequencedobjectwhwriteoff','O:19:\"DBO_Sequencedobject\":10:{s:7:\"__table\";s:15:\"sequencedobject\";s:4:\"name\";s:10:\"whwriteoff\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(10,'2015-11-02 10:13:51','robject10002','O:11:\"DBO_Robject\":16:{s:7:\"__table\";s:7:\"robject\";s:2:\"id\";s:5:\"10002\";s:4:\"name\";s:10:\"nrsequence\";s:5:\"state\";s:1:\"2\";s:6:\"typeId\";s:1:\"1\";s:6:\"module\";i:1;s:10:\"menupartId\";s:1:\"3\";s:3:\"pos\";s:1:\"0\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:1;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',1,0,1),(11,'2015-11-02 10:13:51','sequencedobjectsalesinvoice','O:19:\"DBO_Sequencedobject\":10:{s:7:\"__table\";s:15:\"sequencedobject\";s:4:\"name\";s:12:\"salesinvoice\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(12,'2015-11-02 10:13:51','robject10103','O:11:\"DBO_Robject\":16:{s:7:\"__table\";s:7:\"robject\";s:2:\"id\";i:10103;s:4:\"name\";s:12:\"salesinvoice\";s:5:\"state\";i:2;s:6:\"typeId\";i:1;s:6:\"module\";i:2;s:10:\"menupartId\";i:1;s:3:\"pos\";N;s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(13,'2015-11-02 10:13:52','robject10104','O:11:\"DBO_Robject\":16:{s:7:\"__table\";s:7:\"robject\";s:2:\"id\";i:10104;s:4:\"name\";s:10:\"translated\";s:5:\"state\";i:2;s:6:\"typeId\";i:1;s:6:\"module\";i:1;s:10:\"menupartId\";i:3;s:3:\"pos\";N;s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(14,'2015-11-02 10:13:52','robject10105','O:11:\"DBO_Robject\":16:{s:7:\"__table\";s:7:\"robject\";s:2:\"id\";i:10105;s:4:\"name\";s:3:\"vat\";s:5:\"state\";i:2;s:6:\"typeId\";i:1;s:6:\"module\";i:1;s:10:\"menupartId\";i:3;s:3:\"pos\";N;s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(15,'2015-11-02 10:13:52','robject10106','O:11:\"DBO_Robject\":16:{s:7:\"__table\";s:7:\"robject\";s:2:\"id\";i:10106;s:4:\"name\";s:22:\"whArticleHistoryReport\";s:5:\"state\";i:2;s:6:\"typeId\";i:2;s:6:\"module\";i:7;s:10:\"menupartId\";i:2;s:3:\"pos\";N;s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(16,'2015-11-02 10:13:52','robject10107','O:11:\"DBO_Robject\":16:{s:7:\"__table\";s:7:\"robject\";s:2:\"id\";i:10107;s:4:\"name\";s:7:\"whSetup\";s:5:\"state\";i:2;s:6:\"typeId\";i:3;s:6:\"module\";i:7;s:10:\"menupartId\";i:4;s:3:\"pos\";N;s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(17,'2015-11-02 10:13:54','robject10108','O:11:\"DBO_Robject\":16:{s:7:\"__table\";s:7:\"robject\";s:2:\"id\";i:10108;s:4:\"name\";s:11:\"whinventory\";s:5:\"state\";i:2;s:6:\"typeId\";i:1;s:6:\"module\";i:7;s:10:\"menupartId\";i:1;s:3:\"pos\";N;s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(18,'2015-11-02 10:13:54','robject10109','O:11:\"DBO_Robject\":16:{s:7:\"__table\";s:7:\"robject\";s:2:\"id\";i:10109;s:4:\"name\";s:9:\"whmvbatch\";s:5:\"state\";i:2;s:6:\"typeId\";i:1;s:6:\"module\";i:7;s:10:\"menupartId\";i:1;s:3:\"pos\";N;s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,1),(19,'2015-11-02 10:14:39','useragent2','O:13:\"DBO_Useragent\":17:{s:7:\"__table\";s:9:\"useragent\";s:2:\"id\";i:2;s:4:\"name\";N;s:7:\"rawdata\";s:120:\"Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36\";s:4:\"memo\";N;s:9:\"mdCreated\";s:19:\"2015-11-02 10:14:39\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:14:39\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',0,0,2),(20,'2015-11-02 10:15:52','tipshown1','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:1;s:5:\"tipId\";i:1;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:15:52\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(21,'2015-11-02 10:15:54','tipshown2','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:2;s:5:\"tipId\";i:3;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:15:54\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(22,'2015-11-02 10:15:54','tipshown3','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:3;s:5:\"tipId\";i:4;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:15:54\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(23,'2015-11-02 10:15:55','tipshown4','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:4;s:5:\"tipId\";i:5;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:15:55\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(24,'2015-11-02 10:15:55','tipshown5','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:5;s:5:\"tipId\";i:6;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:15:55\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(25,'2015-11-02 10:15:56','tipshown6','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:6;s:5:\"tipId\";i:8;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:15:56\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(26,'2015-11-02 10:15:57','tipshown7','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:7;s:5:\"tipId\";i:9;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:15:57\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(27,'2015-11-02 10:16:00','tipshown8','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:8;s:5:\"tipId\";i:11;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:16:00\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(28,'2015-11-02 10:16:01','tipshown9','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:9;s:5:\"tipId\";i:12;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:16:01\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(29,'2015-11-02 10:16:02','tipshown10','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:10;s:5:\"tipId\";i:13;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:16:02\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(30,'2015-11-02 10:16:02','tipshown11','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:11;s:5:\"tipId\";i:14;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:16:02\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(31,'2015-11-02 10:16:02','tipshown12','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:12;s:5:\"tipId\";i:15;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:16:02\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(32,'2015-11-02 10:16:24','role2','O:8:\"DBO_Role\":144:{s:7:\"__table\";s:4:\"role\";s:2:\"id\";s:1:\"2\";s:4:\"name\";s:5:\"admin\";s:4:\"memo\";s:0:\"\";s:5:\"state\";s:1:\"2\";s:9:\"mdCreated\";N;s:9:\"mdUpdated\";s:19:\"2015-11-02 10:16:24\";s:11:\"mdCreatorId\";N;s:11:\"mdUpdaterId\";s:1:\"2\";s:16:\"\0*\0captionFields\";a:1:{i:0;s:4:\"name\";}s:18:\"\0*\0availableRights\";a:4:{i:0;s:1:\"s\";i:1;s:1:\"u\";i:2;s:1:\"d\";i:3;s:1:\"l\";}s:13:\"\0*\0validators\";a:1:{s:4:\"name\";a:2:{i:0;s:9:\"not empty\";i:1;s:6:\"unique\";}}s:10:\"\0*\0formats\";a:2:{s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:8:\"fullpath\";s:5:\"role2\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:16:{s:9:\"obj10003s\";b:1;s:9:\"obj10003u\";b:1;s:9:\"obj10003d\";b:1;s:9:\"obj10003l\";b:1;s:9:\"obj10009s\";b:1;s:9:\"obj10009u\";b:1;s:9:\"obj10009d\";b:1;s:9:\"obj10009l\";b:1;s:9:\"obj10010s\";b:1;s:9:\"obj10010u\";b:1;s:9:\"obj10010d\";b:1;s:9:\"obj10010l\";b:1;s:9:\"obj10101s\";b:1;s:9:\"obj10101u\";b:1;s:9:\"obj10101d\";b:1;s:9:\"obj10101l\";b:1;}s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:1;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:5:\"obj1s\";s:1:\"1\";s:5:\"obj1u\";s:1:\"1\";s:5:\"obj1d\";s:1:\"1\";s:5:\"obj1l\";s:1:\"0\";s:5:\"obj2s\";s:1:\"1\";s:5:\"obj2u\";s:1:\"1\";s:5:\"obj2d\";s:1:\"1\";s:5:\"obj2l\";s:1:\"0\";s:5:\"obj3s\";s:1:\"1\";s:5:\"obj3u\";s:1:\"1\";s:5:\"obj3d\";s:1:\"1\";s:5:\"obj3l\";s:1:\"0\";s:5:\"obj4s\";s:1:\"1\";s:5:\"obj4u\";s:1:\"1\";s:5:\"obj4d\";s:1:\"1\";s:5:\"obj4l\";s:1:\"0\";s:6:\"obj14s\";s:1:\"1\";s:6:\"obj14u\";s:1:\"1\";s:6:\"obj14d\";s:1:\"1\";s:6:\"obj14l\";s:1:\"0\";s:6:\"obj17s\";s:1:\"1\";s:6:\"obj17u\";s:1:\"1\";s:6:\"obj17d\";s:1:\"1\";s:6:\"obj17l\";s:1:\"0\";s:6:\"obj19s\";s:1:\"1\";s:6:\"obj19u\";s:1:\"1\";s:6:\"obj19d\";s:1:\"1\";s:6:\"obj19l\";s:1:\"0\";s:6:\"obj20s\";s:1:\"1\";s:6:\"obj20u\";s:1:\"1\";s:6:\"obj20d\";s:1:\"1\";s:6:\"obj20l\";s:1:\"0\";s:6:\"obj21s\";s:1:\"1\";s:6:\"obj21u\";s:1:\"1\";s:6:\"obj21d\";s:1:\"1\";s:6:\"obj21l\";s:1:\"0\";s:6:\"obj23s\";s:1:\"1\";s:6:\"obj23u\";s:1:\"1\";s:6:\"obj23d\";s:1:\"1\";s:6:\"obj23l\";s:1:\"0\";s:6:\"obj24s\";N;s:6:\"obj24u\";N;s:6:\"obj24d\";N;s:6:\"obj24l\";N;s:6:\"obj28s\";s:1:\"1\";s:6:\"obj28u\";s:1:\"1\";s:6:\"obj28d\";s:1:\"1\";s:6:\"obj28l\";s:1:\"0\";s:6:\"obj34s\";s:1:\"1\";s:6:\"obj34u\";s:1:\"1\";s:6:\"obj34d\";s:1:\"1\";s:6:\"obj34l\";s:1:\"0\";s:8:\"obj1002s\";s:1:\"1\";s:8:\"obj1002u\";s:1:\"1\";s:8:\"obj1002d\";s:1:\"1\";s:8:\"obj1002l\";s:1:\"0\";s:8:\"obj1003s\";s:1:\"1\";s:8:\"obj1003u\";s:1:\"1\";s:8:\"obj1003d\";s:1:\"1\";s:8:\"obj1003l\";s:1:\"0\";s:8:\"obj1004s\";N;s:8:\"obj1004u\";N;s:8:\"obj1004d\";N;s:8:\"obj1004l\";N;s:8:\"obj1005s\";s:1:\"1\";s:8:\"obj1005u\";s:1:\"1\";s:8:\"obj1005d\";s:1:\"1\";s:8:\"obj1005l\";s:1:\"0\";s:8:\"obj1006s\";s:1:\"1\";s:8:\"obj1006u\";s:1:\"1\";s:8:\"obj1006d\";s:1:\"1\";s:8:\"obj1006l\";s:1:\"0\";s:9:\"obj10001s\";s:1:\"1\";s:9:\"obj10001u\";s:1:\"1\";s:9:\"obj10001d\";s:1:\"1\";s:9:\"obj10001l\";s:1:\"0\";s:9:\"obj10002s\";s:1:\"1\";s:9:\"obj10002u\";s:1:\"1\";s:9:\"obj10002d\";s:1:\"1\";s:9:\"obj10002l\";s:1:\"0\";s:9:\"obj10003s\";i:1;s:9:\"obj10003u\";i:1;s:9:\"obj10003d\";i:1;s:9:\"obj10003l\";i:1;s:9:\"obj10004s\";s:1:\"1\";s:9:\"obj10004u\";s:1:\"1\";s:9:\"obj10004d\";s:1:\"1\";s:9:\"obj10004l\";s:1:\"0\";s:9:\"obj10005s\";s:1:\"1\";s:9:\"obj10005u\";s:1:\"1\";s:9:\"obj10005d\";s:1:\"1\";s:9:\"obj10005l\";s:1:\"0\";s:9:\"obj10006s\";s:1:\"1\";s:9:\"obj10006u\";s:1:\"1\";s:9:\"obj10006d\";s:1:\"1\";s:9:\"obj10006l\";s:1:\"0\";s:9:\"obj10007s\";s:1:\"1\";s:9:\"obj10007u\";s:1:\"1\";s:9:\"obj10007d\";s:1:\"1\";s:9:\"obj10007l\";s:1:\"0\";s:9:\"obj10008s\";s:1:\"1\";s:9:\"obj10008u\";s:1:\"1\";s:9:\"obj10008d\";s:1:\"1\";s:9:\"obj10008l\";s:1:\"0\";s:9:\"obj10009s\";i:1;s:9:\"obj10009u\";i:1;s:9:\"obj10009d\";i:1;s:9:\"obj10009l\";i:1;s:9:\"obj10010s\";i:1;s:9:\"obj10010u\";i:1;s:9:\"obj10010d\";i:1;s:9:\"obj10010l\";i:1;s:9:\"obj10101s\";i:1;s:9:\"obj10101u\";i:1;s:9:\"obj10101d\";i:1;s:9:\"obj10101l\";i:1;s:9:\"obj10102s\";s:1:\"1\";s:9:\"obj10102u\";s:1:\"1\";s:9:\"obj10102d\";s:1:\"1\";s:9:\"obj10102l\";s:1:\"0\";s:9:\"obj20001s\";N;s:9:\"obj20001u\";N;s:9:\"obj20001d\";N;s:9:\"obj20001l\";N;}',1,0,2),(33,'2015-11-02 10:28:49','nrsequence1','O:14:\"DBO_Nrsequence\":31:{s:7:\"__table\";s:10:\"nrsequence\";s:2:\"id\";i:1;s:4:\"name\";s:4:\"Ladu\";s:6:\"prefix\";s:2:\"L/\";s:6:\"suffix\";s:0:\"\";s:7:\"startNr\";s:1:\"1\";s:7:\"startDt\";N;s:8:\"finishDt\";N;s:4:\"memo\";s:0:\"\";s:6:\"closed\";N;s:9:\"mdCreated\";s:19:\"2015-11-02 10:28:49\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:28:49\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:16:\"\0*\0captionFields\";a:1:{i:0;s:4:\"name\";}s:13:\"\0*\0validators\";a:1:{s:4:\"name\";a:2:{i:0;s:9:\"not empty\";i:1;s:6:\"unique\";}}s:10:\"\0*\0formats\";a:2:{s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:8:\"fullpath\";s:10:\"nrsequence\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:10:{s:4:\"name\";b:1;s:6:\"prefix\";b:1;s:7:\"startNr\";b:1;s:15:\"dynEnumwhincome\";b:1;s:16:\"dynEnumwhinitial\";b:1;s:14:\"dynEnumwhintra\";b:1;s:18:\"dynEnumwhinventory\";b:1;s:16:\"dynEnumwhoutcome\";b:1;s:19:\"dynEnumwhproduction\";b:1;s:17:\"dynEnumwhwriteoff\";b:1;}s:20:\"\0*\0dynamicProperties\";b:1;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:15:\"dynEnumwhincome\";s:1:\"1\";s:16:\"dynEnumwhinitial\";s:1:\"1\";s:14:\"dynEnumwhintra\";s:1:\"1\";s:18:\"dynEnumwhinventory\";s:1:\"1\";s:16:\"dynEnumwhoutcome\";s:1:\"1\";s:19:\"dynEnumwhproduction\";s:1:\"1\";s:17:\"dynEnumwhwriteoff\";s:1:\"1\";}',0,0,2),(34,'2015-11-02 10:29:21','warehouse2','O:13:\"DBO_Warehouse\":20:{s:7:\"__table\";s:9:\"warehouse\";s:2:\"id\";i:2;s:4:\"code\";s:1:\"P\";s:4:\"name\";s:7:\"Pealadu\";s:4:\"memo\";s:0:\"\";s:6:\"closed\";N;s:9:\"mdCreated\";s:19:\"2015-11-02 10:29:21\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:29:21\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:16:\"\0*\0captionFields\";a:2:{i:0;s:4:\"code\";i:1;s:4:\"name\";}s:13:\"\0*\0validators\";a:2:{s:4:\"code\";a:2:{i:0;s:9:\"not empty\";i:1;s:6:\"unique\";}s:4:\"name\";a:1:{i:0;s:9:\"not empty\";}}s:10:\"\0*\0formats\";a:2:{s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:8:\"fullpath\";s:9:\"warehouse\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:2:{s:4:\"code\";b:1;s:4:\"name\";b:1;}s:20:\"\0*\0dynamicProperties\";b:1;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(35,'2015-11-02 10:32:25','tipshown13','O:12:\"DBO_Tipshown\":14:{s:7:\"__table\";s:8:\"tipshown\";s:2:\"id\";i:13;s:5:\"tipId\";i:2;s:6:\"userId\";s:1:\"2\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:32:25\";s:8:\"fullpath\";N;s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:0:{}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(36,'2015-11-02 10:32:43','article1','O:11:\"DBO_Article\":21:{s:7:\"__table\";s:7:\"article\";s:2:\"id\";i:1;s:6:\"unitId\";s:0:\"\";s:4:\"code\";s:1:\"X\";s:4:\"name\";s:6:\"Kaup X\";s:4:\"memo\";s:1:\"a\";s:6:\"closed\";N;s:6:\"typeId\";s:1:\"0\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:32:43\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:32:43\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:8:\"fullpath\";s:7:\"article\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:4:{s:4:\"code\";b:1;s:4:\"name\";b:1;s:6:\"typeId\";b:1;s:4:\"memo\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;}',0,0,2),(37,'2015-11-02 10:33:18','whmvbatch1','O:13:\"DBO_Whmvbatch\":34:{s:7:\"__table\";s:9:\"whmvbatch\";s:2:\"id\";i:1;s:6:\"typeId\";s:1:\"1\";s:2:\"dt\";s:19:\"2015-11-02 10:32:54\";s:8:\"nrprefix\";s:2:\"L/\";s:8:\"nrsuffix\";s:0:\"\";s:2:\"nr\";s:1:\"1\";s:12:\"nrsequenceId\";s:1:\"1\";s:6:\"fullNr\";s:3:\"L/1\";s:7:\"whSrcId\";i:1;s:7:\"whDstId\";s:1:\"2\";s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:6:\"locked\";N;s:4:\"memo\";N;s:9:\"totalCost\";i:100;s:10:\"totalPrice\";i:0;s:9:\"mdCreated\";s:19:\"2015-11-02 10:33:18\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:33:18\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:13:\"whinventoryId\";N;s:10:\"\0*\0formats\";a:5:{s:2:\"dt\";s:4:\"date\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:2:{s:7:\"whSrcId\";s:12:\"class method\";s:7:\"whDstId\";s:12:\"class method\";}s:8:\"fullpath\";s:9:\"whinitial\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:6:{s:7:\"whDstId\";b:1;s:9:\"totalCost\";b:1;s:12:\"nrsequenceId\";b:1;s:8:\"nrprefix\";b:1;s:2:\"nr\";b:1;s:6:\"fullNr\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:4:\"rows\";a:1:{i:0;O:8:\"DBO_Whmv\":47:{s:7:\"__table\";s:4:\"whmv\";s:2:\"id\";N;s:6:\"typeId\";s:1:\"1\";s:7:\"batchId\";N;s:2:\"dt\";N;s:9:\"articleId\";N;s:10:\"modifierId\";N;s:7:\"whSrcId\";i:1;s:7:\"whDstId\";s:1:\"2\";s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:8:\"quantity\";i:10;s:4:\"cost\";i:10;s:5:\"price\";N;s:8:\"discount\";N;s:4:\"memo\";s:0:\"\";s:9:\"mdCreated\";N;s:9:\"mdUpdated\";N;s:11:\"mdCreatorId\";N;s:11:\"mdUpdaterId\";N;s:3:\"iqp\";N;s:3:\"oqp\";N;s:8:\"modifier\";N;s:10:\"totalPrice\";i:0;s:9:\"totalCost\";i:100;s:10:\"\0*\0formats\";a:9:{s:2:\"dt\";s:4:\"date\";s:8:\"quantity\";s:6:\"float6\";s:4:\"cost\";s:6:\"float6\";s:5:\"price\";s:6:\"float6\";s:8:\"discount\";s:6:\"float2\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:7:{s:9:\"articleId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:8:\"quantity\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:4:\"cost\";s:12:\"class method\";s:5:\"price\";s:12:\"class method\";s:8:\"discount\";s:12:\"class method\";s:7:\"whDstId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:7:\"whSrcId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}}s:8:\"fullpath\";s:16:\"whinitial_rows-0\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:3:{s:8:\"quantity\";b:1;s:4:\"cost\";b:1;s:9:\"totalCost\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:23:\"dynamicPropertiesLoaded\";b:0;s:14:\"\0*\0closedField\";N;s:14:\"\0*\0closedValue\";i:1;s:17:\"\0*\0notClosedValue\";i:0;s:22:\"_DB_DataObject_version\";s:6:\"1.11.3\";s:1:\"N\";i:0;s:13:\"_database_dsn\";s:0:\"\";s:17:\"_database_dsn_md5\";s:32:\"d2eddc3c9144466b723a3f42011be8a8\";s:9:\"_database\";s:6:\"p2demo\";s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:13:\"_resultFields\";b:0;s:12:\"_link_loaded\";b:0;s:5:\"_join\";s:0:\"\";s:10:\"_lastError\";b:0;}}}',0,0,2),(38,'2015-11-02 10:35:12','article1','O:11:\"DBO_Article\":20:{s:7:\"__table\";s:7:\"article\";s:2:\"id\";s:1:\"1\";s:6:\"unitId\";s:1:\"1\";s:4:\"code\";s:1:\"X\";s:4:\"name\";s:6:\"Kaup X\";s:4:\"memo\";s:1:\"a\";s:6:\"closed\";s:1:\"0\";s:6:\"typeId\";s:1:\"0\";s:9:\"mdCreated\";s:19:\"2015-11-02 10:32:43\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:35:12\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:8:\"fullpath\";s:8:\"article1\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:1:{s:6:\"unitId\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:1;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}}',1,0,2),(39,'2015-11-02 10:38:48','whmvbatch1','O:13:\"DBO_Whmvbatch\":33:{s:7:\"__table\";s:9:\"whmvbatch\";s:2:\"id\";s:1:\"1\";s:6:\"typeId\";s:1:\"1\";s:2:\"dt\";s:10:\"2015-11-01\";s:8:\"nrprefix\";s:2:\"L/\";s:8:\"nrsuffix\";s:0:\"\";s:2:\"nr\";s:1:\"1\";s:12:\"nrsequenceId\";s:1:\"1\";s:6:\"fullNr\";s:3:\"L/1\";s:7:\"whSrcId\";s:1:\"1\";s:7:\"whDstId\";s:1:\"2\";s:12:\"companySrcId\";s:1:\"1\";s:12:\"companyDstId\";s:1:\"1\";s:6:\"locked\";s:1:\"0\";s:4:\"memo\";s:0:\"\";s:9:\"totalCost\";i:100;s:10:\"totalPrice\";i:0;s:9:\"mdCreated\";s:19:\"2015-11-02 10:33:18\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:38:48\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:13:\"whinventoryId\";N;s:10:\"\0*\0formats\";a:5:{s:2:\"dt\";s:4:\"date\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:2:{s:7:\"whSrcId\";s:12:\"class method\";s:7:\"whDstId\";s:12:\"class method\";}s:8:\"fullpath\";s:10:\"whinitial1\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:3:{s:9:\"totalCost\";b:1;s:7:\"whDstId\";b:1;s:2:\"dt\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:1;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:4:\"rows\";a:1:{i:0;O:8:\"DBO_Whmv\":49:{s:7:\"__table\";s:4:\"whmv\";s:2:\"id\";N;s:6:\"typeId\";s:1:\"1\";s:7:\"batchId\";N;s:2:\"dt\";N;s:9:\"articleId\";s:1:\"1\";s:10:\"modifierId\";N;s:7:\"whSrcId\";s:1:\"1\";s:7:\"whDstId\";s:1:\"2\";s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:8:\"quantity\";i:10;s:4:\"cost\";i:10;s:5:\"price\";N;s:8:\"discount\";N;s:4:\"memo\";s:0:\"\";s:9:\"mdCreated\";N;s:9:\"mdUpdated\";N;s:11:\"mdCreatorId\";N;s:11:\"mdUpdaterId\";N;s:3:\"iqp\";N;s:3:\"oqp\";N;s:8:\"modifier\";N;s:10:\"totalPrice\";i:0;s:9:\"totalCost\";i:100;s:10:\"\0*\0formats\";a:9:{s:2:\"dt\";s:4:\"date\";s:8:\"quantity\";s:6:\"float6\";s:4:\"cost\";s:6:\"float6\";s:5:\"price\";s:6:\"float6\";s:8:\"discount\";s:6:\"float2\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:7:{s:9:\"articleId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:8:\"quantity\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:4:\"cost\";s:12:\"class method\";s:5:\"price\";s:12:\"class method\";s:8:\"discount\";s:12:\"class method\";s:7:\"whDstId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:7:\"whSrcId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}}s:8:\"fullpath\";s:17:\"whinitial1_rows-0\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:6:{s:9:\"articleId\";b:1;s:11:\"articleLink\";b:1;s:8:\"unitName\";b:1;s:8:\"quantity\";b:1;s:4:\"cost\";b:1;s:9:\"totalCost\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:23:\"dynamicPropertiesLoaded\";b:0;s:14:\"\0*\0closedField\";N;s:14:\"\0*\0closedValue\";i:1;s:17:\"\0*\0notClosedValue\";i:0;s:22:\"_DB_DataObject_version\";s:6:\"1.11.3\";s:1:\"N\";i:0;s:13:\"_database_dsn\";s:0:\"\";s:17:\"_database_dsn_md5\";s:32:\"d2eddc3c9144466b723a3f42011be8a8\";s:9:\"_database\";s:6:\"p2demo\";s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:13:\"_resultFields\";b:0;s:12:\"_link_loaded\";b:0;s:5:\"_join\";s:0:\"\";s:10:\"_lastError\";b:0;s:11:\"articleLink\";s:77:\"<a href=\"/p2demo/dev/?action=open&registry=article&id=1\" target=\"_blank\"></a>\";s:8:\"unitName\";s:2:\"tk\";}}}',1,0,2),(40,'2015-11-02 10:39:10','whmvbatch2','O:13:\"DBO_Whmvbatch\":34:{s:7:\"__table\";s:9:\"whmvbatch\";s:2:\"id\";i:2;s:6:\"typeId\";s:1:\"1\";s:2:\"dt\";s:19:\"2015-11-02 10:38:53\";s:8:\"nrprefix\";s:2:\"L/\";s:8:\"nrsuffix\";s:0:\"\";s:2:\"nr\";s:1:\"2\";s:12:\"nrsequenceId\";s:1:\"1\";s:6:\"fullNr\";s:3:\"L/2\";s:7:\"whSrcId\";i:1;s:7:\"whDstId\";s:1:\"2\";s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:6:\"locked\";N;s:4:\"memo\";N;s:9:\"totalCost\";i:110;s:10:\"totalPrice\";i:0;s:9:\"mdCreated\";s:19:\"2015-11-02 10:39:10\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:39:10\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:13:\"whinventoryId\";N;s:10:\"\0*\0formats\";a:5:{s:2:\"dt\";s:4:\"date\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:2:{s:7:\"whSrcId\";s:12:\"class method\";s:7:\"whDstId\";s:12:\"class method\";}s:8:\"fullpath\";s:9:\"whinitial\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:6:{s:7:\"whDstId\";b:1;s:9:\"totalCost\";b:1;s:12:\"nrsequenceId\";b:1;s:8:\"nrprefix\";b:1;s:2:\"nr\";b:1;s:6:\"fullNr\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:4:\"rows\";a:1:{i:0;O:8:\"DBO_Whmv\":49:{s:7:\"__table\";s:4:\"whmv\";s:2:\"id\";N;s:6:\"typeId\";s:1:\"1\";s:7:\"batchId\";N;s:2:\"dt\";N;s:9:\"articleId\";s:1:\"1\";s:10:\"modifierId\";N;s:7:\"whSrcId\";i:1;s:7:\"whDstId\";s:1:\"2\";s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:8:\"quantity\";i:10;s:4:\"cost\";i:11;s:5:\"price\";N;s:8:\"discount\";N;s:4:\"memo\";s:0:\"\";s:9:\"mdCreated\";N;s:9:\"mdUpdated\";N;s:11:\"mdCreatorId\";N;s:11:\"mdUpdaterId\";N;s:3:\"iqp\";N;s:3:\"oqp\";N;s:8:\"modifier\";N;s:10:\"totalPrice\";i:0;s:9:\"totalCost\";i:110;s:10:\"\0*\0formats\";a:9:{s:2:\"dt\";s:4:\"date\";s:8:\"quantity\";s:6:\"float6\";s:4:\"cost\";s:6:\"float6\";s:5:\"price\";s:6:\"float6\";s:8:\"discount\";s:6:\"float2\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:7:{s:9:\"articleId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:8:\"quantity\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:4:\"cost\";s:12:\"class method\";s:5:\"price\";s:12:\"class method\";s:8:\"discount\";s:12:\"class method\";s:7:\"whDstId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:7:\"whSrcId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}}s:8:\"fullpath\";s:16:\"whinitial_rows-0\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:6:{s:9:\"articleId\";b:1;s:11:\"articleLink\";b:1;s:8:\"unitName\";b:1;s:8:\"quantity\";b:1;s:4:\"cost\";b:1;s:9:\"totalCost\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:23:\"dynamicPropertiesLoaded\";b:0;s:14:\"\0*\0closedField\";N;s:14:\"\0*\0closedValue\";i:1;s:17:\"\0*\0notClosedValue\";i:0;s:22:\"_DB_DataObject_version\";s:6:\"1.11.3\";s:1:\"N\";i:0;s:13:\"_database_dsn\";s:0:\"\";s:17:\"_database_dsn_md5\";s:32:\"d2eddc3c9144466b723a3f42011be8a8\";s:9:\"_database\";s:6:\"p2demo\";s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:13:\"_resultFields\";b:0;s:12:\"_link_loaded\";b:0;s:5:\"_join\";s:0:\"\";s:10:\"_lastError\";b:0;s:11:\"articleLink\";s:77:\"<a href=\"/p2demo/dev/?action=open&registry=article&id=1\" target=\"_blank\"></a>\";s:8:\"unitName\";s:2:\"tk\";}}}',0,0,2),(41,'2015-11-02 10:40:01','whmvbatch3','O:13:\"DBO_Whmvbatch\":34:{s:7:\"__table\";s:9:\"whmvbatch\";s:2:\"id\";i:3;s:6:\"typeId\";s:1:\"5\";s:2:\"dt\";s:19:\"2015-11-02 10:39:33\";s:8:\"nrprefix\";s:2:\"L/\";s:8:\"nrsuffix\";s:0:\"\";s:2:\"nr\";s:1:\"3\";s:12:\"nrsequenceId\";s:1:\"1\";s:6:\"fullNr\";s:3:\"L/3\";s:7:\"whSrcId\";s:1:\"2\";s:7:\"whDstId\";i:1;s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:6:\"locked\";N;s:4:\"memo\";N;s:9:\"totalCost\";i:0;s:10:\"totalPrice\";i:0;s:9:\"mdCreated\";s:19:\"2015-11-02 10:40:01\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:40:01\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:13:\"whinventoryId\";N;s:10:\"\0*\0formats\";a:5:{s:2:\"dt\";s:4:\"date\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:2:{s:7:\"whSrcId\";s:12:\"class method\";s:7:\"whDstId\";s:12:\"class method\";}s:8:\"fullpath\";s:10:\"whwriteoff\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:5:{s:7:\"whSrcId\";b:1;s:12:\"nrsequenceId\";b:1;s:8:\"nrprefix\";b:1;s:2:\"nr\";b:1;s:6:\"fullNr\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:4:\"rows\";a:1:{i:0;O:8:\"DBO_Whmv\":49:{s:7:\"__table\";s:4:\"whmv\";s:2:\"id\";N;s:6:\"typeId\";s:1:\"5\";s:7:\"batchId\";N;s:2:\"dt\";N;s:9:\"articleId\";s:1:\"1\";s:10:\"modifierId\";N;s:7:\"whSrcId\";s:1:\"2\";s:7:\"whDstId\";i:1;s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:8:\"quantity\";i:5;s:4:\"cost\";N;s:5:\"price\";N;s:8:\"discount\";N;s:4:\"memo\";s:0:\"\";s:9:\"mdCreated\";N;s:9:\"mdUpdated\";N;s:11:\"mdCreatorId\";N;s:11:\"mdUpdaterId\";N;s:3:\"iqp\";N;s:3:\"oqp\";N;s:8:\"modifier\";N;s:10:\"totalPrice\";i:0;s:9:\"totalCost\";i:0;s:10:\"\0*\0formats\";a:9:{s:2:\"dt\";s:4:\"date\";s:8:\"quantity\";s:6:\"float6\";s:4:\"cost\";s:6:\"float6\";s:5:\"price\";s:6:\"float6\";s:8:\"discount\";s:6:\"float2\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:7:{s:9:\"articleId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:8:\"quantity\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:4:\"cost\";s:12:\"class method\";s:5:\"price\";s:12:\"class method\";s:8:\"discount\";s:12:\"class method\";s:7:\"whDstId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:7:\"whSrcId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}}s:8:\"fullpath\";s:17:\"whwriteoff_rows-0\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:4:{s:9:\"articleId\";b:1;s:11:\"articleLink\";b:1;s:8:\"unitName\";b:1;s:8:\"quantity\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:23:\"dynamicPropertiesLoaded\";b:0;s:14:\"\0*\0closedField\";N;s:14:\"\0*\0closedValue\";i:1;s:17:\"\0*\0notClosedValue\";i:0;s:22:\"_DB_DataObject_version\";s:6:\"1.11.3\";s:1:\"N\";i:0;s:13:\"_database_dsn\";s:0:\"\";s:17:\"_database_dsn_md5\";s:32:\"d2eddc3c9144466b723a3f42011be8a8\";s:9:\"_database\";s:6:\"p2demo\";s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:13:\"_resultFields\";b:0;s:12:\"_link_loaded\";b:0;s:5:\"_join\";s:0:\"\";s:10:\"_lastError\";b:0;s:11:\"articleLink\";s:77:\"<a href=\"/p2demo/dev/?action=open&registry=article&id=1\" target=\"_blank\"></a>\";s:8:\"unitName\";s:2:\"tk\";}}}',0,0,2),(42,'2015-11-02 10:40:23','whmvbatch4','O:13:\"DBO_Whmvbatch\":34:{s:7:\"__table\";s:9:\"whmvbatch\";s:2:\"id\";i:4;s:6:\"typeId\";s:1:\"5\";s:2:\"dt\";s:19:\"2015-11-02 10:40:08\";s:8:\"nrprefix\";s:2:\"L/\";s:8:\"nrsuffix\";s:0:\"\";s:2:\"nr\";s:1:\"4\";s:12:\"nrsequenceId\";s:1:\"1\";s:6:\"fullNr\";s:3:\"L/4\";s:7:\"whSrcId\";s:1:\"2\";s:7:\"whDstId\";i:1;s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:6:\"locked\";N;s:4:\"memo\";N;s:9:\"totalCost\";i:0;s:10:\"totalPrice\";i:0;s:9:\"mdCreated\";s:19:\"2015-11-02 10:40:23\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:40:23\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:13:\"whinventoryId\";N;s:10:\"\0*\0formats\";a:5:{s:2:\"dt\";s:4:\"date\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:2:{s:7:\"whSrcId\";s:12:\"class method\";s:7:\"whDstId\";s:12:\"class method\";}s:8:\"fullpath\";s:10:\"whwriteoff\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:5:{s:7:\"whSrcId\";b:1;s:12:\"nrsequenceId\";b:1;s:8:\"nrprefix\";b:1;s:2:\"nr\";b:1;s:6:\"fullNr\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:4:\"rows\";a:1:{i:0;O:8:\"DBO_Whmv\":49:{s:7:\"__table\";s:4:\"whmv\";s:2:\"id\";N;s:6:\"typeId\";s:1:\"5\";s:7:\"batchId\";N;s:2:\"dt\";N;s:9:\"articleId\";s:1:\"1\";s:10:\"modifierId\";N;s:7:\"whSrcId\";s:1:\"2\";s:7:\"whDstId\";i:1;s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:8:\"quantity\";i:2;s:4:\"cost\";N;s:5:\"price\";N;s:8:\"discount\";N;s:4:\"memo\";s:0:\"\";s:9:\"mdCreated\";N;s:9:\"mdUpdated\";N;s:11:\"mdCreatorId\";N;s:11:\"mdUpdaterId\";N;s:3:\"iqp\";N;s:3:\"oqp\";N;s:8:\"modifier\";N;s:10:\"totalPrice\";i:0;s:9:\"totalCost\";i:0;s:10:\"\0*\0formats\";a:9:{s:2:\"dt\";s:4:\"date\";s:8:\"quantity\";s:6:\"float6\";s:4:\"cost\";s:6:\"float6\";s:5:\"price\";s:6:\"float6\";s:8:\"discount\";s:6:\"float2\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:7:{s:9:\"articleId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:8:\"quantity\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:4:\"cost\";s:12:\"class method\";s:5:\"price\";s:12:\"class method\";s:8:\"discount\";s:12:\"class method\";s:7:\"whDstId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:7:\"whSrcId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}}s:8:\"fullpath\";s:17:\"whwriteoff_rows-0\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:4:{s:9:\"articleId\";b:1;s:11:\"articleLink\";b:1;s:8:\"unitName\";b:1;s:8:\"quantity\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:23:\"dynamicPropertiesLoaded\";b:0;s:14:\"\0*\0closedField\";N;s:14:\"\0*\0closedValue\";i:1;s:17:\"\0*\0notClosedValue\";i:0;s:22:\"_DB_DataObject_version\";s:6:\"1.11.3\";s:1:\"N\";i:0;s:13:\"_database_dsn\";s:0:\"\";s:17:\"_database_dsn_md5\";s:32:\"d2eddc3c9144466b723a3f42011be8a8\";s:9:\"_database\";s:6:\"p2demo\";s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:13:\"_resultFields\";b:0;s:12:\"_link_loaded\";b:0;s:5:\"_join\";s:0:\"\";s:10:\"_lastError\";b:0;s:11:\"articleLink\";s:77:\"<a href=\"/p2demo/dev/?action=open&registry=article&id=1\" target=\"_blank\"></a>\";s:8:\"unitName\";s:2:\"tk\";}}}',0,0,2),(43,'2015-11-02 10:40:41','whmvbatch5','O:13:\"DBO_Whmvbatch\":34:{s:7:\"__table\";s:9:\"whmvbatch\";s:2:\"id\";i:5;s:6:\"typeId\";s:1:\"5\";s:2:\"dt\";s:19:\"2015-11-02 10:40:29\";s:8:\"nrprefix\";s:2:\"L/\";s:8:\"nrsuffix\";s:0:\"\";s:2:\"nr\";s:1:\"5\";s:12:\"nrsequenceId\";s:1:\"1\";s:6:\"fullNr\";s:3:\"L/5\";s:7:\"whSrcId\";s:1:\"2\";s:7:\"whDstId\";i:1;s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:6:\"locked\";N;s:4:\"memo\";N;s:9:\"totalCost\";i:0;s:10:\"totalPrice\";i:0;s:9:\"mdCreated\";s:19:\"2015-11-02 10:40:41\";s:9:\"mdUpdated\";s:19:\"2015-11-02 10:40:41\";s:11:\"mdCreatorId\";s:1:\"2\";s:11:\"mdUpdaterId\";s:1:\"2\";s:13:\"whinventoryId\";N;s:10:\"\0*\0formats\";a:5:{s:2:\"dt\";s:4:\"date\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:2:{s:7:\"whSrcId\";s:12:\"class method\";s:7:\"whDstId\";s:12:\"class method\";}s:8:\"fullpath\";s:10:\"whwriteoff\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:5:{s:7:\"whSrcId\";b:1;s:12:\"nrsequenceId\";b:1;s:8:\"nrprefix\";b:1;s:2:\"nr\";b:1;s:6:\"fullNr\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:14:\"\0*\0closedField\";N;s:1:\"N\";i:0;s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:4:\"rows\";a:1:{i:0;O:8:\"DBO_Whmv\":49:{s:7:\"__table\";s:4:\"whmv\";s:2:\"id\";N;s:6:\"typeId\";s:1:\"5\";s:7:\"batchId\";N;s:2:\"dt\";N;s:9:\"articleId\";s:1:\"1\";s:10:\"modifierId\";N;s:7:\"whSrcId\";s:1:\"2\";s:7:\"whDstId\";i:1;s:12:\"companySrcId\";i:1;s:12:\"companyDstId\";i:1;s:8:\"quantity\";i:5;s:4:\"cost\";N;s:5:\"price\";N;s:8:\"discount\";N;s:4:\"memo\";s:0:\"\";s:9:\"mdCreated\";N;s:9:\"mdUpdated\";N;s:11:\"mdCreatorId\";N;s:11:\"mdUpdaterId\";N;s:3:\"iqp\";N;s:3:\"oqp\";N;s:8:\"modifier\";N;s:10:\"totalPrice\";i:0;s:9:\"totalCost\";i:0;s:10:\"\0*\0formats\";a:9:{s:2:\"dt\";s:4:\"date\";s:8:\"quantity\";s:6:\"float6\";s:4:\"cost\";s:6:\"float6\";s:5:\"price\";s:6:\"float6\";s:8:\"discount\";s:6:\"float2\";s:9:\"totalCost\";s:6:\"float2\";s:10:\"totalPrice\";s:6:\"float2\";s:9:\"mdCreated\";s:8:\"datetime\";s:9:\"mdUpdated\";s:8:\"datetime\";}s:13:\"\0*\0validators\";a:7:{s:9:\"articleId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:8:\"quantity\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:4:\"cost\";s:12:\"class method\";s:5:\"price\";s:12:\"class method\";s:8:\"discount\";s:12:\"class method\";s:7:\"whDstId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}s:7:\"whSrcId\";a:2:{i:0;s:9:\"not empty\";i:1;s:12:\"class method\";}}s:8:\"fullpath\";s:17:\"whwriteoff_rows-0\";s:10:\"logEnabled\";b:1;s:10:\"\0*\0changed\";a:4:{s:9:\"articleId\";b:1;s:11:\"articleLink\";b:1;s:8:\"unitName\";b:1;s:8:\"quantity\";b:1;}s:16:\"\0*\0captionFields\";N;s:20:\"\0*\0dynamicProperties\";b:1;s:23:\"dynamicPropertiesLoaded\";b:0;s:14:\"\0*\0closedField\";N;s:14:\"\0*\0closedValue\";i:1;s:17:\"\0*\0notClosedValue\";i:0;s:22:\"_DB_DataObject_version\";s:6:\"1.11.3\";s:1:\"N\";i:0;s:13:\"_database_dsn\";s:0:\"\";s:17:\"_database_dsn_md5\";s:32:\"d2eddc3c9144466b723a3f42011be8a8\";s:9:\"_database\";s:6:\"p2demo\";s:6:\"_query\";a:10:{s:9:\"condition\";s:0:\"\";s:8:\"group_by\";s:0:\"\";s:8:\"order_by\";s:0:\"\";s:6:\"having\";s:0:\"\";s:11:\"limit_start\";s:0:\"\";s:11:\"limit_count\";s:0:\"\";s:11:\"data_select\";s:1:\"*\";s:6:\"unions\";a:0:{}s:12:\"derive_table\";s:0:\"\";s:13:\"derive_select\";s:0:\"\";}s:12:\"_DB_resultid\";N;s:13:\"_resultFields\";b:0;s:12:\"_link_loaded\";b:0;s:5:\"_join\";s:0:\"\";s:10:\"_lastError\";b:0;s:11:\"articleLink\";s:77:\"<a href=\"/p2demo/dev/?action=open&registry=article&id=1\" target=\"_blank\"></a>\";s:8:\"unitName\";s:2:\"tk\";}}}',0,0,2);
/*!40000 ALTER TABLE `objlog` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `rmodule`
--

DROP TABLE IF EXISTS `rmodule`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `rmodule` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  `pos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `rmodule`
--

LOCK TABLES `rmodule` WRITE;
/*!40000 ALTER TABLE `rmodule` DISABLE KEYS */;
INSERT INTO `rmodule` VALUES (1,'system',1000000000),(2,'Sales',5),(7,'Warehouse',10);
/*!40000 ALTER TABLE `rmodule` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robject`
--

DROP TABLE IF EXISTS `robject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `robject` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `typeId` int(11) NOT NULL DEFAULT '1',
  `module` int(11) NOT NULL DEFAULT '1',
  `menupartId` int(11) NOT NULL DEFAULT '1',
  `pos` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10110 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robject`
--

LOCK TABLES `robject` WRITE;
/*!40000 ALTER TABLE `robject` DISABLE KEYS */;
INSERT INTO `robject` VALUES (1,'robject',2,1,1,3,0),(2,'role',2,1,1,1,0),(3,'webuser',2,1,1,1,0),(4,'article',2,1,2,3,0),(14,'unit',2,1,6,3,0),(17,'company',2,1,2,3,0),(19,'message',2,1,1,3,0),(20,'profile',2,3,1,4,0),(21,'language',2,1,1,3,0),(23,'userstats',2,1,1,3,0),(24,'vat',2,1,1,3,0),(28,'sysprofile',2,3,1,4,0),(34,'email',2,1,1,3,0),(1002,'cronlog',2,1,1,1,0),(1003,'softwareissue',2,1,1,1,0),(1004,'translated',2,1,1,3,0),(1005,'tipsystem',2,1,1,1,0),(1006,'robjfile',2,1,1,3,0),(10001,'warehouse',2,1,7,3,0),(10002,'nrsequence',2,1,1,3,0),(10003,'whmvbatch',2,1,7,1,0),(10004,'whinitial',2,1,7,1,0),(10005,'whincome',2,1,7,1,0),(10006,'whoutcome',2,1,7,1,0),(10007,'whintra',2,1,7,1,0),(10008,'whwriteoff',2,1,7,1,0),(10009,'whSetup',2,3,7,4,0),(10010,'whinventory',2,1,7,1,0),(10101,'whArticleHistoryReport',2,2,7,2,0),(10102,'whStateReport',2,2,7,2,0),(20001,'salesinvoice',2,1,2,1,0);
/*!40000 ALTER TABLE `robject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `robjfile`
--

DROP TABLE IF EXISTS `robjfile`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `robjfile` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  `robj` varchar(50) NOT NULL,
  `rid` int(11) NOT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `robjfile`
--

LOCK TABLES `robjfile` WRITE;
/*!40000 ALTER TABLE `robjfile` DISABLE KEYS */;
/*!40000 ALTER TABLE `robjfile` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `role`
--

DROP TABLE IF EXISTS `role`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `role` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `role`
--

LOCK TABLES `role` WRITE;
/*!40000 ALTER TABLE `role` DISABLE KEYS */;
INSERT INTO `role` VALUES (1,'system','',2,NULL,NULL,NULL,NULL),(2,'admin','',2,NULL,'2015-11-02 10:16:24',NULL,2);
/*!40000 ALTER TABLE `role` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesinvoice`
--

DROP TABLE IF EXISTS `salesinvoice`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesinvoice` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `nrprefix` varchar(10) NOT NULL DEFAULT '',
  `nrsuffix` varchar(10) NOT NULL DEFAULT '',
  `nr` int(11) NOT NULL,
  `nrsequenceId` int(11) NOT NULL,
  `fullNr` varchar(50) NOT NULL DEFAULT '',
  `customerId` int(11) NOT NULL,
  `payerId` int(11) NOT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  `totalNoVat` decimal(18,2) NOT NULL DEFAULT '0.00',
  `totalVat` decimal(18,2) NOT NULL DEFAULT '0.00',
  `totalWithVat` decimal(18,2) NOT NULL DEFAULT '0.00',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='Sales invoices';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesinvoice`
--

LOCK TABLES `salesinvoice` WRITE;
/*!40000 ALTER TABLE `salesinvoice` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesinvoice` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `salesinvoicerow`
--

DROP TABLE IF EXISTS `salesinvoicerow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `salesinvoicerow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `salesinvoiceId` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  `quantity` decimal(18,2) NOT NULL,
  `priceNoVat` decimal(18,2) NOT NULL,
  `vatId` int(11) DEFAULT NULL,
  `vat` decimal(18,2) NOT NULL DEFAULT '0.00',
  `priceWithVat` decimal(18,2) NOT NULL,
  `totalNoVat` decimal(18,2) NOT NULL DEFAULT '0.00',
  `totalVat` decimal(18,2) NOT NULL,
  `totalWithVat` decimal(18,2) NOT NULL,
  `memo` text NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `salesinvoicerow`
--

LOCK TABLES `salesinvoicerow` WRITE;
/*!40000 ALTER TABLE `salesinvoicerow` DISABLE KEYS */;
/*!40000 ALTER TABLE `salesinvoicerow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `sequencedobject`
--

DROP TABLE IF EXISTS `sequencedobject`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `sequencedobject` (
  `name` varchar(200) NOT NULL,
  PRIMARY KEY (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `sequencedobject`
--

LOCK TABLES `sequencedobject` WRITE;
/*!40000 ALTER TABLE `sequencedobject` DISABLE KEYS */;
INSERT INTO `sequencedobject` VALUES ('salesinvoice'),('whincome'),('whinitial'),('whintra'),('whinventory'),('whoutcome'),('whproduction'),('whwriteoff');
/*!40000 ALTER TABLE `sequencedobject` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `softwareissue`
--

DROP TABLE IF EXISTS `softwareissue`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `softwareissue` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `caption` varchar(200) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  `resolution` text NOT NULL,
  `priority` int(11) NOT NULL DEFAULT '0',
  `state` varchar(100) NOT NULL DEFAULT '',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorI` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `cc` varchar(255) NOT NULL DEFAULT '',
  `ownerId` int(11) DEFAULT NULL,
  `deadline` date DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `softwareissue`
--

LOCK TABLES `softwareissue` WRITE;
/*!40000 ALTER TABLE `softwareissue` DISABLE KEYS */;
/*!40000 ALTER TABLE `softwareissue` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `state`
--

DROP TABLE IF EXISTS `state`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `state` (
  `id` int(11) NOT NULL DEFAULT '0',
  `name` varchar(100) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `state`
--

LOCK TABLES `state` WRITE;
/*!40000 ALTER TABLE `state` DISABLE KEYS */;
INSERT INTO `state` VALUES (1,'draft'),(2,'normal'),(3,'deleted');
/*!40000 ALTER TABLE `state` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipshown`
--

DROP TABLE IF EXISTS `tipshown`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipshown` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tipId` int(11) NOT NULL DEFAULT '0',
  `userId` int(11) NOT NULL DEFAULT '0',
  `mdCreated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipshown`
--

LOCK TABLES `tipshown` WRITE;
/*!40000 ALTER TABLE `tipshown` DISABLE KEYS */;
INSERT INTO `tipshown` VALUES (1,1,2,'2015-11-02 10:15:52'),(2,3,2,'2015-11-02 10:15:54'),(3,4,2,'2015-11-02 10:15:54'),(4,5,2,'2015-11-02 10:15:55'),(5,6,2,'2015-11-02 10:15:55'),(6,8,2,'2015-11-02 10:15:56'),(7,9,2,'2015-11-02 10:15:57'),(8,11,2,'2015-11-02 10:16:00'),(9,12,2,'2015-11-02 10:16:01'),(10,13,2,'2015-11-02 10:16:02'),(11,14,2,'2015-11-02 10:16:02'),(12,15,2,'2015-11-02 10:16:02'),(13,2,2,'2015-11-02 10:32:25');
/*!40000 ALTER TABLE `tipshown` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `tipsystem`
--

DROP TABLE IF EXISTS `tipsystem`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `tipsystem` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `page` varchar(100) NOT NULL DEFAULT '',
  `body` longtext NOT NULL,
  `active` tinyint(4) NOT NULL DEFAULT '1',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  `control` varchar(100) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `tipsystem`
--

LOCK TABLES `tipsystem` WRITE;
/*!40000 ALTER TABLE `tipsystem` DISABLE KEYS */;
INSERT INTO `tipsystem` VALUES (1,'grid','Click here to open application menu',1,'2013-06-10 09:56:58','2015-11-02 10:13:51',8,1,'#toolbar_MainMenu'),(2,'grid','Filter button. Use it to set up which records to show or hide.',1,'2013-06-10 10:13:18','2015-11-02 10:13:51',8,1,'#gridFilterButton'),(3,'grid','Here you can set up which columns will be visible',1,'2013-06-10 10:21:57','2015-11-02 10:13:51',8,1,'.gridSetupColumns'),(4,'grid','<b>Search box</b><br/>Use it to search on grid.<br/>Also you can use Ctrl+F to search from data already loaded.',1,'2013-06-10 10:24:00','2015-11-02 10:13:51',8,1,'#gridFindBox'),(5,'grid','Loaded/total grid rows count',1,'2013-06-10 10:25:33','2015-11-02 10:13:51',8,1,'#gridStats3'),(6,'grid','It is possible to export grid contents to Excel',1,'2013-06-10 10:26:45','2015-11-02 10:13:51',8,1,'#gridExport'),(7,'grid','Sort grid contents by clicking on grid column header.<br/>Don\'t double click please :)',0,'2013-06-10 10:28:09','2015-11-02 10:13:51',8,1,'.mGridHeadCell'),(8,'grid','Use this button to add new record',1,'2013-06-10 10:29:44','2015-11-02 10:13:51',8,1,'#toolbar_new'),(9,'grid','Use this link to open your user account, change language or log out',1,'2013-06-10 10:31:12','2015-11-02 10:13:51',8,1,'#toolbar_UserMenu'),(10,'grid','<b>Help</b><br/>Cant say that there is plenty of it, sorry... :(',0,'2013-06-10 10:32:33','2015-11-02 10:13:51',8,1,'#toolbar_Help'),(11,'edit','Back to grid.',1,'2013-06-10 10:42:28','2015-11-02 10:13:51',8,1,'#toolbar_docs_list'),(12,'edit','Press this to save document',1,'2013-06-10 10:43:25','2015-11-02 10:13:51',8,1,'#toolbar_save'),(13,'edit','Press to delete document',1,'2013-06-10 10:44:02','2015-11-02 10:13:51',8,1,'#toolbar_delete'),(14,'edit','Press to reload document from database and discard all changes',1,'2013-06-10 10:44:51','2015-11-02 10:13:51',8,1,'#toolbar_undo'),(15,'edit','Document change log.<br/>Every change is recorded :)',1,'2013-06-10 10:45:47','2015-11-02 10:13:51',8,1,'#toolbar_log');
/*!40000 ALTER TABLE `tipsystem` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `translated`
--

DROP TABLE IF EXISTS `translated`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `translated` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `translated`
--

LOCK TABLES `translated` WRITE;
/*!40000 ALTER TABLE `translated` DISABLE KEYS */;
/*!40000 ALTER TABLE `translated` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unit`
--

DROP TABLE IF EXISTS `unit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `unit` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(10) NOT NULL,
  `memo` text NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='Units list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unit`
--

LOCK TABLES `unit` WRITE;
/*!40000 ALTER TABLE `unit` DISABLE KEYS */;
INSERT INTO `unit` VALUES (1,'tk','',0,NULL,NULL,NULL,NULL);
/*!40000 ALTER TABLE `unit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `useragent`
--

DROP TABLE IF EXISTS `useragent`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `useragent` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  `rawdata` text,
  `memo` text,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COMMENT='@system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `useragent`
--

LOCK TABLES `useragent` WRITE;
/*!40000 ALTER TABLE `useragent` DISABLE KEYS */;
INSERT INTO `useragent` VALUES (1,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_3) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/43.0.2357.130 Safari/537.36',NULL,'2015-07-06 10:52:16','2015-07-06 10:52:16',2,2),(2,NULL,'Mozilla/5.0 (Macintosh; Intel Mac OS X 10_10_5) AppleWebKit/537.36 (KHTML, like Gecko) Chrome/46.0.2490.71 Safari/537.36',NULL,'2015-11-02 10:14:39','2015-11-02 10:14:39',2,2);
/*!40000 ALTER TABLE `useragent` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userip`
--

DROP TABLE IF EXISTS `userip`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userip` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `ip` varchar(50) DEFAULT NULL,
  `memo` text,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8 COMMENT='@system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userip`
--

LOCK TABLES `userip` WRITE;
/*!40000 ALTER TABLE `userip` DISABLE KEYS */;
INSERT INTO `userip` VALUES (1,'10.0.2.2',NULL,'2015-07-06 10:52:16','2015-07-06 10:52:16',2,2);
/*!40000 ALTER TABLE `userip` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userproperty`
--

DROP TABLE IF EXISTS `userproperty`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userproperty` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) NOT NULL DEFAULT '0',
  `name` varchar(50) DEFAULT NULL,
  `value` text,
  PRIMARY KEY (`id`),
  UNIQUE KEY `userId` (`userId`,`name`)
) ENGINE=InnoDB AUTO_INCREMENT=15 DEFAULT CHARSET=utf8 COMMENT='@system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userproperty`
--

LOCK TABLES `userproperty` WRITE;
/*!40000 ALTER TABLE `userproperty` DISABLE KEYS */;
INSERT INTO `userproperty` VALUES (1,2,'role.sortname','t.name'),(2,2,'role.sortorder','asc'),(3,2,'nrsequence.sortname','t.name'),(4,2,'nrsequence.sortorder','asc'),(5,2,'warehouse.sortname','t.name'),(6,2,'warehouse.sortorder','asc'),(7,2,'whinitial.sortname','b.fullNr'),(8,2,'whinitial.sortorder','asc'),(9,2,'article.sortname','m.name'),(10,2,'article.sortorder','asc'),(11,2,'whoutcome.sortname','b.fullNr'),(12,2,'whoutcome.sortorder','asc'),(13,2,'whwriteoff.sortname','b.fullNr'),(14,2,'whwriteoff.sortorder','asc');
/*!40000 ALTER TABLE `userproperty` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userrole`
--

DROP TABLE IF EXISTS `userrole`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userrole` (
  `userId` int(11) NOT NULL DEFAULT '0',
  `roleId` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`userId`,`roleId`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COMMENT='@system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userrole`
--

LOCK TABLES `userrole` WRITE;
/*!40000 ALTER TABLE `userrole` DISABLE KEYS */;
INSERT INTO `userrole` VALUES (1,1),(2,2);
/*!40000 ALTER TABLE `userrole` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstats`
--

DROP TABLE IF EXISTS `userstats`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstats` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `userId` int(11) DEFAULT NULL,
  `useripId` int(11) DEFAULT NULL,
  `useragentId` int(11) DEFAULT NULL,
  `typeId` int(11) NOT NULL DEFAULT '1',
  `dt` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  `name` varchar(100) DEFAULT NULL,
  `memo` text,
  `status` varchar(100) DEFAULT NULL,
  `actorId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  KEY `name` (`name`),
  KEY `dt` (`dt`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=utf8 COMMENT='@system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstats`
--

LOCK TABLES `userstats` WRITE;
/*!40000 ALTER TABLE `userstats` DISABLE KEYS */;
INSERT INTO `userstats` VALUES (1,2,1,1,1,'2015-07-06 10:52:16','logout','success','ok',2),(2,2,1,1,1,'2015-07-06 10:52:39','login','success','ok',2),(3,2,1,2,1,'2015-11-02 10:14:39','login','success','ok',2),(4,2,1,2,1,'2015-11-02 10:15:52','index','role','',2),(5,2,1,2,1,'2015-11-02 10:16:24','document saved','User roles/admin\n0.257667 s','',2),(6,2,1,2,1,'2015-11-02 10:16:26','index','role','',2),(7,2,1,2,1,'2015-11-02 10:17:31','index','role','',2),(8,2,1,2,1,'2015-11-02 10:18:45','index','role','',2),(9,2,1,2,1,'2015-11-02 10:18:48','index','role','',2),(10,2,1,2,1,'2015-11-02 10:28:29','index','nrsequence','',2),(11,2,1,2,1,'2015-11-02 10:28:49','document saved','Numbriseeriad/Ladu\n0.078449 s','',2),(12,2,1,2,1,'2015-11-02 10:28:52','index','nrsequence','',2),(13,2,1,2,1,'2015-11-02 10:29:09','index','warehouse','',2),(14,2,1,2,1,'2015-11-02 10:29:21','document saved','Laod/P : Pealadu\n0.02588 s','',2),(15,2,1,2,1,'2015-11-02 10:29:23','index','warehouse','',2),(16,2,1,2,1,'2015-11-02 10:29:27','index','whinitial','',2),(17,2,1,2,1,'2015-11-02 10:32:24','index','article','',2),(18,2,1,2,1,'2015-11-02 10:32:43','document saved','Artiklid/\n0.019773 s','',2),(19,2,1,2,1,'2015-11-02 10:32:45','index','article','',2),(20,2,1,2,1,'2015-11-02 10:32:51','index','whinitial','',2),(21,2,1,2,1,'2015-11-02 10:33:06','index','article','',2),(22,2,1,2,1,'2015-11-02 10:33:18','document saved','Üldised lao liikumised/\n0.042303 s','',2),(23,2,1,2,1,'2015-11-02 10:33:21','index','whinitial','',2),(24,2,1,2,1,'2015-11-02 10:35:06','index','article','',2),(25,2,1,2,1,'2015-11-02 10:35:12','document saved','Artiklid/\n0.031785 s','',2),(26,2,1,2,1,'2015-11-02 10:38:48','document saved','Üldised lao liikumised/\n0.049712 s','',2),(27,2,1,2,1,'2015-11-02 10:38:49','index','whinitial','',2),(28,2,1,2,1,'2015-11-02 10:39:10','document saved','Üldised lao liikumised/\n0.069199 s','',2),(29,2,1,2,1,'2015-11-02 10:39:12','index','whinitial','',2),(30,2,1,2,1,'2015-11-02 10:39:17','index','whoutcome','',2),(31,2,1,2,1,'2015-11-02 10:39:28','index','whoutcome','',2),(32,2,1,2,1,'2015-11-02 10:39:31','index','whwriteoff','',2),(33,2,1,2,1,'2015-11-02 10:40:01','document saved','Üldised lao liikumised/\n0.04248 s','',2),(34,2,1,2,1,'2015-11-02 10:40:04','index','whwriteoff','',2),(35,2,1,2,1,'2015-11-02 10:40:06','index','whwriteoff','',2),(36,2,1,2,1,'2015-11-02 10:40:23','document saved','Üldised lao liikumised/\n0.078984 s','',2),(37,2,1,2,1,'2015-11-02 10:40:26','index','whwriteoff','',2),(38,2,1,2,1,'2015-11-02 10:40:41','document saved','Üldised lao liikumised/\n0.068134 s','',2),(39,2,1,2,1,'2015-11-02 10:40:49','index','whwriteoff','',2);
/*!40000 ALTER TABLE `userstats` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `userstattype`
--

DROP TABLE IF EXISTS `userstattype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `userstattype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8 COMMENT='@system';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `userstattype`
--

LOCK TABLES `userstattype` WRITE;
/*!40000 ALTER TABLE `userstattype` DISABLE KEYS */;
INSERT INTO `userstattype` VALUES (1,'statistics'),(2,'user manipulation'),(3,'security');
/*!40000 ALTER TABLE `userstattype` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `vat`
--

DROP TABLE IF EXISTS `vat`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `vat` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(100) NOT NULL,
  `pct` decimal(18,2) NOT NULL,
  `memo` text NOT NULL,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `vat`
--

LOCK TABLES `vat` WRITE;
/*!40000 ALTER TABLE `vat` DISABLE KEYS */;
/*!40000 ALTER TABLE `vat` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `warehouse`
--

DROP TABLE IF EXISTS `warehouse`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warehouse` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `code` varchar(50) NOT NULL,
  `name` varchar(200) NOT NULL DEFAULT '',
  `memo` text NOT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warehouse`
--

LOCK TABLES `warehouse` WRITE;
/*!40000 ALTER TABLE `warehouse` DISABLE KEYS */;
INSERT INTO `warehouse` VALUES (1,'--','--','',0,'2015-07-06 10:50:41','2015-07-06 10:50:41',1,1),(2,'P','Pealadu','',0,'2015-11-02 10:29:21','2015-11-02 10:29:21',2,2);
/*!40000 ALTER TABLE `warehouse` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `webuser`
--

DROP TABLE IF EXISTS `webuser`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `webuser` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `uid` varchar(32) COLLATE utf8_unicode_ci DEFAULT NULL,
  `pwd` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `sessionid` varchar(255) COLLATE utf8_unicode_ci DEFAULT NULL,
  `state` int(11) NOT NULL DEFAULT '1',
  `roles` text COLLATE utf8_unicode_ci,
  `docSignature` text COLLATE utf8_unicode_ci,
  `name` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `email` varchar(100) COLLATE utf8_unicode_ci DEFAULT NULL,
  `closed` tinyint(4) NOT NULL DEFAULT '0',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `idxWebuserUid` (`uid`),
  KEY `idxWebuserSessionId` (`sessionid`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci COMMENT='Users list';
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `webuser`
--

LOCK TABLES `webuser` WRITE;
/*!40000 ALTER TABLE `webuser` DISABLE KEYS */;
INSERT INTO `webuser` VALUES (1,'system','xxx',NULL,1,NULL,NULL,NULL,'arendus@intellisoft.ee',0,NULL,'2015-07-02 23:24:33',NULL,2),(2,'admin','*4ACFE3202A5FF5CF467898FC58AAB1D615029441','indktpmrjb6j8e5djbv1rhndf0',2,NULL,NULL,'Admin','admin@newapp.com',0,NULL,'2015-11-02 10:14:39',NULL,2);
/*!40000 ALTER TABLE `webuser` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whinventory`
--

DROP TABLE IF EXISTS `whinventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whinventory` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `dt` date NOT NULL,
  `nrprefix` varchar(10) NOT NULL,
  `nrsuffix` varchar(10) NOT NULL,
  `nr` int(11) NOT NULL,
  `nrsequenceId` int(11) NOT NULL,
  `fullNr` varchar(50) NOT NULL,
  `whId` int(11) NOT NULL,
  `articlegroupId` int(11) DEFAULT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `whinventory_whId` (`whId`),
  KEY `whinventory_nrsequenceId` (`nrsequenceId`),
  KEY `whinventory_mdCreatorId` (`mdCreatorId`),
  KEY `whinventory_mdUpdaterId` (`mdUpdaterId`),
  CONSTRAINT `whinventory_mdCreatorId` FOREIGN KEY (`mdCreatorId`) REFERENCES `webuser` (`id`),
  CONSTRAINT `whinventory_mdUpdaterId` FOREIGN KEY (`mdUpdaterId`) REFERENCES `webuser` (`id`),
  CONSTRAINT `whinventory_nrsequenceId` FOREIGN KEY (`nrsequenceId`) REFERENCES `nrsequence` (`id`),
  CONSTRAINT `whinventory_whId` FOREIGN KEY (`whId`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whinventory`
--

LOCK TABLES `whinventory` WRITE;
/*!40000 ALTER TABLE `whinventory` DISABLE KEYS */;
/*!40000 ALTER TABLE `whinventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whinventoryrow`
--

DROP TABLE IF EXISTS `whinventoryrow`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whinventoryrow` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `whinventoryId` int(11) NOT NULL,
  `articleId` int(11) NOT NULL,
  `modifierId` int(11) NOT NULL DEFAULT '1',
  `quantity` decimal(18,6) DEFAULT NULL,
  `realQuantity` decimal(18,6) DEFAULT NULL,
  `cost` decimal(18,6) DEFAULT NULL,
  `memo` text NOT NULL,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `whinventoryrow_whinventoryId` (`whinventoryId`),
  KEY `whinventoryrow_articleId` (`articleId`),
  KEY `whinventoryrow_mdCreatorId` (`mdCreatorId`),
  KEY `whinventoryrow_mdUpdaterId` (`mdUpdaterId`),
  CONSTRAINT `whinventoryrow_articleId` FOREIGN KEY (`articleId`) REFERENCES `article` (`id`),
  CONSTRAINT `whinventoryrow_mdCreatorId` FOREIGN KEY (`mdCreatorId`) REFERENCES `webuser` (`id`),
  CONSTRAINT `whinventoryrow_mdUpdaterId` FOREIGN KEY (`mdUpdaterId`) REFERENCES `webuser` (`id`),
  CONSTRAINT `whinventoryrow_whinventoryId` FOREIGN KEY (`whinventoryId`) REFERENCES `whinventory` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whinventoryrow`
--

LOCK TABLES `whinventoryrow` WRITE;
/*!40000 ALTER TABLE `whinventoryrow` DISABLE KEYS */;
/*!40000 ALTER TABLE `whinventoryrow` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whmv`
--

DROP TABLE IF EXISTS `whmv`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whmv` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL,
  `batchId` int(11) NOT NULL,
  `dt` date NOT NULL,
  `articleId` int(11) NOT NULL,
  `modifierId` int(11) NOT NULL DEFAULT '1',
  `whSrcId` int(11) NOT NULL,
  `whDstId` int(11) NOT NULL,
  `companySrcId` int(11) NOT NULL,
  `companyDstId` int(11) NOT NULL,
  `quantity` decimal(18,6) NOT NULL DEFAULT '0.000000',
  `cost` decimal(18,6) NOT NULL DEFAULT '0.000000',
  `price` decimal(18,6) NOT NULL DEFAULT '0.000000',
  `discount` decimal(18,2) NOT NULL DEFAULT '0.00',
  `memo` text NOT NULL,
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  `iqp` decimal(18,6) NOT NULL DEFAULT '0.000000',
  `oqp` decimal(18,6) NOT NULL DEFAULT '0.000000',
  PRIMARY KEY (`id`),
  KEY `fk_whmv_typeId` (`typeId`),
  KEY `fk_whmv_batchId` (`batchId`),
  KEY `fk_whmv_articleId` (`articleId`),
  KEY `fk_whmv_modifierId` (`modifierId`),
  KEY `fk_whmv_whSrcId` (`whSrcId`),
  KEY `fk_whmv_whDstId` (`whDstId`),
  KEY `fk_whmv_companySrcId` (`companySrcId`),
  KEY `fk_whmv_companyDstId` (`companyDstId`),
  KEY `fk_whmv_mdCreatorId` (`mdCreatorId`),
  KEY `fk_whmv_mdUpdaterId` (`mdUpdaterId`),
  CONSTRAINT `fk_whmv_articleId` FOREIGN KEY (`articleId`) REFERENCES `article` (`id`),
  CONSTRAINT `fk_whmv_batchId` FOREIGN KEY (`batchId`) REFERENCES `whmvbatch` (`id`),
  CONSTRAINT `fk_whmv_companyDstId` FOREIGN KEY (`companyDstId`) REFERENCES `company` (`id`),
  CONSTRAINT `fk_whmv_companySrcId` FOREIGN KEY (`companySrcId`) REFERENCES `company` (`id`),
  CONSTRAINT `fk_whmv_mdCreatorId` FOREIGN KEY (`mdCreatorId`) REFERENCES `webuser` (`id`),
  CONSTRAINT `fk_whmv_mdUpdaterId` FOREIGN KEY (`mdUpdaterId`) REFERENCES `webuser` (`id`),
  CONSTRAINT `fk_whmv_modifierId` FOREIGN KEY (`modifierId`) REFERENCES `whmvmodifier` (`id`),
  CONSTRAINT `fk_whmv_typeId` FOREIGN KEY (`typeId`) REFERENCES `whmvtype` (`id`),
  CONSTRAINT `fk_whmv_whDstId` FOREIGN KEY (`whDstId`) REFERENCES `warehouse` (`id`),
  CONSTRAINT `fk_whmv_whSrcId` FOREIGN KEY (`whSrcId`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whmv`
--

LOCK TABLES `whmv` WRITE;
/*!40000 ALTER TABLE `whmv` DISABLE KEYS */;
INSERT INTO `whmv` VALUES (2,1,1,'2015-11-01',1,1,1,2,1,1,10.000000,10.000000,0.000000,0.00,'','2015-11-02 10:38:48','2015-11-02 10:38:48',2,2,0.000000,0.000000),(3,1,2,'2015-11-02',1,1,1,2,1,1,10.000000,11.000000,0.000000,0.00,'','2015-11-02 10:39:10','2015-11-02 10:39:10',2,2,10.000000,0.000000),(4,5,3,'2015-11-02',1,1,2,1,1,1,5.000000,10.000000,0.000000,0.00,'','2015-11-02 10:40:01','2015-11-02 10:40:01',2,2,0.000000,0.000000),(5,5,4,'2015-11-02',1,1,2,1,1,1,2.000000,10.000000,0.000000,0.00,'','2015-11-02 10:40:23','2015-11-02 10:40:23',2,2,0.000000,5.000000),(6,5,5,'2015-11-02',1,1,2,1,1,1,5.000000,11.000000,0.000000,0.00,'','2015-11-02 10:40:41','2015-11-02 10:40:41',2,2,0.000000,7.000000);
/*!40000 ALTER TABLE `whmv` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whmvbatch`
--

DROP TABLE IF EXISTS `whmvbatch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whmvbatch` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `typeId` int(11) NOT NULL,
  `dt` date NOT NULL,
  `nrprefix` varchar(10) NOT NULL DEFAULT '',
  `nrsuffix` varchar(10) NOT NULL DEFAULT '',
  `nr` int(11) NOT NULL,
  `nrsequenceId` int(11) NOT NULL,
  `fullNr` varchar(50) NOT NULL DEFAULT '',
  `whSrcId` int(11) NOT NULL,
  `whDstId` int(11) NOT NULL,
  `companySrcId` int(11) NOT NULL,
  `companyDstId` int(11) NOT NULL,
  `locked` tinyint(4) NOT NULL DEFAULT '0',
  `memo` text NOT NULL,
  `totalCost` decimal(18,2) NOT NULL DEFAULT '0.00',
  `totalPrice` decimal(18,2) NOT NULL DEFAULT '0.00',
  `mdCreated` datetime DEFAULT NULL,
  `mdUpdated` datetime DEFAULT NULL,
  `mdCreatorId` int(11) DEFAULT NULL,
  `mdUpdaterId` int(11) DEFAULT NULL,
  `whinventoryId` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `fk_whmvbatch_typeId` (`typeId`),
  KEY `fk_whmvbatch_whSrcId` (`whSrcId`),
  KEY `fk_whmvbatch_whDstId` (`whDstId`),
  KEY `fk_whmvbatch_companySrcId` (`companySrcId`),
  KEY `fk_whmvbatch_companyDstId` (`companyDstId`),
  KEY `fk_whmvbatch_mdCreatorId` (`mdCreatorId`),
  KEY `fk_whmvbatch_mdUpdaterId` (`mdUpdaterId`),
  KEY `fk_whmvbatch_nrsequenceId` (`nrsequenceId`),
  CONSTRAINT `fk_whmvbatch_companyDstId` FOREIGN KEY (`companyDstId`) REFERENCES `company` (`id`),
  CONSTRAINT `fk_whmvbatch_companySrcId` FOREIGN KEY (`companySrcId`) REFERENCES `company` (`id`),
  CONSTRAINT `fk_whmvbatch_mdCreatorId` FOREIGN KEY (`mdCreatorId`) REFERENCES `webuser` (`id`),
  CONSTRAINT `fk_whmvbatch_mdUpdaterId` FOREIGN KEY (`mdUpdaterId`) REFERENCES `webuser` (`id`),
  CONSTRAINT `fk_whmvbatch_nrsequenceId` FOREIGN KEY (`nrsequenceId`) REFERENCES `nrsequence` (`id`),
  CONSTRAINT `fk_whmvbatch_typeId` FOREIGN KEY (`typeId`) REFERENCES `whmvtype` (`id`),
  CONSTRAINT `fk_whmvbatch_whDstId` FOREIGN KEY (`whDstId`) REFERENCES `warehouse` (`id`),
  CONSTRAINT `fk_whmvbatch_whSrcId` FOREIGN KEY (`whSrcId`) REFERENCES `warehouse` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whmvbatch`
--

LOCK TABLES `whmvbatch` WRITE;
/*!40000 ALTER TABLE `whmvbatch` DISABLE KEYS */;
INSERT INTO `whmvbatch` VALUES (1,1,'2015-11-01','L/','',1,1,'L/1',1,2,1,1,0,'',100.00,0.00,'2015-11-02 10:33:18','2015-11-02 10:38:48',2,2,NULL),(2,1,'2015-11-02','L/','',2,1,'L/2',1,2,1,1,0,'',110.00,0.00,'2015-11-02 10:39:10','2015-11-02 10:39:10',2,2,NULL),(3,5,'2015-11-02','L/','',3,1,'L/3',2,1,1,1,0,'',0.00,0.00,'2015-11-02 10:40:01','2015-11-02 10:40:01',2,2,NULL),(4,5,'2015-11-02','L/','',4,1,'L/4',2,1,1,1,0,'',0.00,0.00,'2015-11-02 10:40:23','2015-11-02 10:40:23',2,2,NULL),(5,5,'2015-11-02','L/','',5,1,'L/5',2,1,1,1,0,'',0.00,0.00,'2015-11-02 10:40:41','2015-11-02 10:40:41',2,2,NULL);
/*!40000 ALTER TABLE `whmvbatch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whmvmodifier`
--

DROP TABLE IF EXISTS `whmvmodifier`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whmvmodifier` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whmvmodifier`
--

LOCK TABLES `whmvmodifier` WRITE;
/*!40000 ALTER TABLE `whmvmodifier` DISABLE KEYS */;
INSERT INTO `whmvmodifier` VALUES (1,'');
/*!40000 ALTER TABLE `whmvmodifier` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `whmvtype`
--

DROP TABLE IF EXISTS `whmvtype`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `whmvtype` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `name` varchar(200) NOT NULL DEFAULT '',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `whmvtype`
--

LOCK TABLES `whmvtype` WRITE;
/*!40000 ALTER TABLE `whmvtype` DISABLE KEYS */;
INSERT INTO `whmvtype` VALUES (1,'whinitial'),(2,'whincome'),(3,'whoutcome'),(4,'whintra'),(5,'whwriteoff'),(6,'whproduction'),(7,'whinventory');
/*!40000 ALTER TABLE `whmvtype` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2015-11-02 10:44:42
