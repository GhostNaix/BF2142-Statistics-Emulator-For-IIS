CREATE DATABASE  IF NOT EXISTS `bf2142` /*!40100 DEFAULT CHARACTER SET utf8 COLLATE utf8_unicode_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `bf2142`;
-- MySQL dump 10.13  Distrib 8.0.22, for Win64 (x86_64)
--
-- Host: localhost    Database: bf2142
-- ------------------------------------------------------
-- Server version	8.0.22

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
-- Table structure for table `_version`
--

DROP TABLE IF EXISTS `_version`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `_version` (
  `dbver` varchar(20) NOT NULL DEFAULT '',
  `dbdate` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`dbver`),
  KEY `dbver` (`dbver`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `_version`
--

LOCK TABLES `_version` WRITE;
/*!40000 ALTER TABLE `_version` DISABLE KEYS */;
/*!40000 ALTER TABLE `_version` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `account`
--

DROP TABLE IF EXISTS `account`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `account` (
  `profileid` int unsigned NOT NULL AUTO_INCREMENT,
  `account` varchar(45) NOT NULL,
  `password` varchar(45) NOT NULL,
  `email` varchar(45) NOT NULL,
  `countryCode` varchar(3) NOT NULL,
  `DOBYear` int unsigned NOT NULL,
  `DOBMonth` int unsigned NOT NULL,
  `DOBDay` int unsigned NOT NULL,
  `zipCode` varchar(45) DEFAULT NULL,
  `eaMailFlag` int unsigned NOT NULL,
  `thirdPartyMailFlag` int unsigned NOT NULL,
  PRIMARY KEY (`profileid`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `account`
--

LOCK TABLES `account` WRITE;
/*!40000 ALTER TABLE `account` DISABLE KEYS */;
INSERT INTO `account` VALUES (1,'admin','admin','admin@admin.admin','AS',1111,11,11,'',0,0);
/*!40000 ALTER TABLE `account` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `awards`
--

DROP TABLE IF EXISTS `awards`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `awards` (
  `aid` int unsigned NOT NULL DEFAULT '0',
  `pid` bigint NOT NULL,
  `atype` int NOT NULL DEFAULT '0',
  `alvl` int unsigned NOT NULL DEFAULT '1',
  `earned` int unsigned NOT NULL DEFAULT '0',
  `first` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `awards`
--

LOCK TABLES `awards` WRITE;
/*!40000 ALTER TABLE `awards` DISABLE KEYS */;
INSERT INTO `awards` VALUES (2,1,2,3,1538226794,1538223413),(2,1,1,1,1538223413,1538223413),(0,1,4,20,1538226794,1538223413),(1,1,4,4,1538223413,1538223413),(0,1,1,1,1538223413,1538223413),(2,1,4,1,1538226794,1538226794),(19,1,1,1,1538226794,1538226794);
/*!40000 ALTER TABLE `awards` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `gamespy_players`
--

DROP TABLE IF EXISTS `gamespy_players`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `gamespy_players` (
  `id` int unsigned NOT NULL,
  `email` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `passwordenc` varchar(255) NOT NULL,
  `nick` varchar(255) NOT NULL,
  `challenge` varchar(45) DEFAULT NULL,
  `authtoken` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `gamespy_players`
--

LOCK TABLES `gamespy_players` WRITE;
/*!40000 ALTER TABLE `gamespy_players` DISABLE KEYS */;
INSERT INTO `gamespy_players` VALUES (1,'','admin','d5aZm0U_','ServerAdmin','','');
/*!40000 ALTER TABLE `gamespy_players` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `mapinfo`
--

DROP TABLE IF EXISTS `mapinfo`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `mapinfo` (
  `id` smallint unsigned NOT NULL DEFAULT '0',
  `name` varchar(50) NOT NULL DEFAULT '',
  `score` int unsigned NOT NULL DEFAULT '0',
  `time` int unsigned NOT NULL DEFAULT '0',
  `times` int unsigned NOT NULL DEFAULT '0',
  `kills` int unsigned NOT NULL DEFAULT '0',
  `deaths` int unsigned NOT NULL DEFAULT '0',
  `custom` tinyint unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `idxMapName` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `mapinfo`
--

LOCK TABLES `mapinfo` WRITE;
/*!40000 ALTER TABLE `mapinfo` DISABLE KEYS */;
INSERT INTO `mapinfo` VALUES (0,'suez_canal',80,4127,14,74,26,0),(1,'verdun',104,2417,1,91,17,0),(4,'camp_gibraltar',1910,63586,79,1706,363,0),(5,'sidi_power_plant',24,1011,1,10,11,0),(7,'belgrade',112,1593,2,100,17,0),(8,'cerbere_landing',101,760,1,84,3,0),(9,'tunis_harbor',106,1988,1,89,7,0),(15,'operation_blue_pearl',0,53,1,0,0,0),(17,'operation_shingle',0,195,1,0,0,0),(19,'strike_at_karkand',18,5030,18,28,21,0);
/*!40000 ALTER TABLE `mapinfo` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `playerprogress`
--

DROP TABLE IF EXISTS `playerprogress`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `playerprogress` (
  `pid` bigint NOT NULL,
  `acdt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Account Created',
  `lgdt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time of last game',
  `nick` varchar(20) NOT NULL,
  `rnk` int unsigned NOT NULL DEFAULT '0' COMMENT 'Rank',
  `rnkcg` int unsigned NOT NULL DEFAULT '0' COMMENT 'Rank up?',
  `gsco` int unsigned NOT NULL COMMENT 'general score',
  `crpt` int unsigned NOT NULL COMMENT 'Carrier points',
  `awaybonus` int unsigned NOT NULL,
  `brs` int unsigned NOT NULL DEFAULT '0' COMMENT 'best round score',
  `cpt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Total captured flags',
  `capa` int unsigned NOT NULL DEFAULT '0' COMMENT 'Capture Assists',
  `cts` int unsigned NOT NULL DEFAULT '0' COMMENT 'Captured Missile Silos',
  `cs` int unsigned NOT NULL DEFAULT '0' COMMENT 'Commander score',
  `ban` int unsigned NOT NULL DEFAULT '0',
  `ovaccu` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Accuracy',
  `pdt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Unique Dog Tags Collected',
  `pdtc` int unsigned NOT NULL DEFAULT '0' COMMENT 'Dog Tags Collected',
  `csgpm-0` int unsigned NOT NULL DEFAULT '0',
  `csgpm-1` int unsigned NOT NULL DEFAULT '0' COMMENT 'Titan commander score',
  `csgpm-2` int unsigned NOT NULL DEFAULT '0',
  `dass` int unsigned NOT NULL DEFAULT '0' COMMENT 'Driver Assists',
  `dcpt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Defended Control Points',
  `kpm` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Kills Per Minute',
  `dpm` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Death per minute',
  `spm` int unsigned NOT NULL COMMENT 'Score Per Minute',
  `kdr` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Kills/Deaths Ratio',
  `dstrk` int unsigned NOT NULL DEFAULT '0' COMMENT 'Worst Death Streak',
  `dths` int unsigned NOT NULL DEFAULT '0' COMMENT 'Deaths',
  `kkls-0` int unsigned NOT NULL DEFAULT '0' COMMENT 'Kills As Recon',
  `kkls-1` int unsigned NOT NULL DEFAULT '0' COMMENT 'Kills As Assault',
  `kkls-2` int unsigned NOT NULL DEFAULT '0' COMMENT 'Kills As Engineer',
  `kkls-3` int unsigned NOT NULL DEFAULT '0' COMMENT 'Kills As Support',
  `ktt-0` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Recon',
  `ktt-1` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Assault',
  `ktt-2` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Engineer',
  `ktt-3` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Support',
  `klla` int unsigned NOT NULL DEFAULT '0' COMMENT 'Kill Assists',
  `klls` int unsigned NOT NULL DEFAULT '0' COMMENT 'Kills',
  `klstrk` int unsigned NOT NULL DEFAULT '0' COMMENT 'Kills Streak',
  `kluav` int unsigned NOT NULL DEFAULT '0' COMMENT 'Kills With Gun Drone',
  `fe` int unsigned NOT NULL DEFAULT '0' COMMENT 'Favorite Equipment',
  `fgm` int unsigned NOT NULL DEFAULT '0' COMMENT 'Favorite Game Mode',
  `fk` int unsigned NOT NULL DEFAULT '0' COMMENT 'Favorite Kit',
  `fm` int unsigned NOT NULL DEFAULT '0' COMMENT 'Favorite Map',
  `fv` int unsigned NOT NULL DEFAULT '0' COMMENT 'Favorite Vehicle',
  `fw` int unsigned NOT NULL DEFAULT '0' COMMENT 'Favorite Weapon',
  `cotime` int unsigned NOT NULL,
  `sltime` int unsigned NOT NULL,
  `smtime` int unsigned NOT NULL,
  `lwtime` int unsigned NOT NULL,
  `captures` int unsigned NOT NULL,
  `assist` int unsigned NOT NULL,
  `defend` int unsigned NOT NULL,
  `waccu` int unsigned NOT NULL,
  `ate` int unsigned NOT NULL,
  `wins` int unsigned NOT NULL DEFAULT '0' COMMENT 'Wins',
  `los` int unsigned NOT NULL DEFAULT '0' COMMENT 'Losses',
  `twsc` int unsigned NOT NULL COMMENT 'Teamwork Score',
  `hls` int unsigned NOT NULL COMMENT 'Heals',
  `rps` int unsigned NOT NULL COMMENT 'Repairs',
  `rvs` int unsigned NOT NULL COMMENT 'Revives',
  `resp` int unsigned NOT NULL COMMENT 'Re-supplies',
  `sasl` int unsigned NOT NULL DEFAULT '0' COMMENT '???',
  `slbcn` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spawn Beacons Deployed',
  `slbspn` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spawns On Squad Beacons',
  `slpts` int unsigned NOT NULL DEFAULT '0' COMMENT '???',
  `sluav` int unsigned NOT NULL DEFAULT '0' COMMENT 'Spawns On Squad Beacons',
  `suic` int unsigned NOT NULL DEFAULT '0' COMMENT 'Suicide',
  `tac` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Commander',
  `talw` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Lone Wolf',
  `tas` int unsigned NOT NULL DEFAULT '0' COMMENT 'Titan Attack Score',
  `tasl` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Squad Leader',
  `tasm` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Squad Member',
  `tcd` int unsigned NOT NULL DEFAULT '0' COMMENT 'Titan Components Destroyed',
  `tcrd` int unsigned NOT NULL DEFAULT '0' COMMENT 'Titan Cores Destroyed',
  `tdmg` int unsigned NOT NULL DEFAULT '0' COMMENT 'Team Damage',
  `tdrps` int unsigned NOT NULL DEFAULT '0' COMMENT 'Titan Drops',
  `tds` int unsigned NOT NULL DEFAULT '0' COMMENT 'Titan Defend Score',
  `tgd` int unsigned NOT NULL DEFAULT '0' COMMENT 'Titan Guns Destroyed',
  `tgr` int unsigned NOT NULL DEFAULT '0' COMMENT 'Titan Guns Repaired',
  `tid` int unsigned NOT NULL DEFAULT '0' COMMENT '???',
  `tkls` int unsigned NOT NULL DEFAULT '0' COMMENT 'Team Kills',
  `toth` int unsigned NOT NULL DEFAULT '0' COMMENT 'Total Hits',
  `tots` int unsigned NOT NULL DEFAULT '0' COMMENT 'Total Fired',
  `trp` int unsigned NOT NULL DEFAULT '0' COMMENT 'Titan Rounds Played',
  `tt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time Played',
  `tvdmg` int unsigned NOT NULL DEFAULT '0' COMMENT 'Team Vehicle Damage',
  `unavl` int unsigned NOT NULL DEFAULT '0' COMMENT 'Unlooks available',
  `unlc` int unsigned NOT NULL DEFAULT '0' COMMENT 'Unlocks',
  `kick` int unsigned NOT NULL DEFAULT '0' COMMENT 'Kicks',
  `ncpt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Neutralized CPs',
  `kdths-0` int unsigned NOT NULL DEFAULT '0' COMMENT 'deads as Recon',
  `kdths-1` int NOT NULL DEFAULT '0' COMMENT 'deads as Assault',
  `kdths-2` int NOT NULL DEFAULT '0' COMMENT 'deads as Engineer',
  `kdths-3` int NOT NULL DEFAULT '0' COMMENT 'deads as Support',
  `vet` int unsigned NOT NULL DEFAULT '0' COMMENT 'bf2 veteran',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `playerprogress`
--

LOCK TABLES `playerprogress` WRITE;
/*!40000 ALTER TABLE `playerprogress` DISABLE KEYS */;
INSERT INTO `playerprogress` VALUES (1,1538223418,1538226794,' ServerAdmin',5,1,168,343,0,101,9,0,0,0,0,'0.41723136495644',0,0,0,0,0,3,2,'2.4815063887021','0.44384667114997',3,'5.5909090909091',6,22,1,75,14,33,390,1518,752,277,11,123,41,0,0,0,1,5,0,4,0,0,0,0,0,0,0,0,0,3,0,42,7,0,0,2,0,0,0,0,0,1,221,2753,0,0,0,4,0,0,0,0,0,0,0,0,862,2066,0,2974,0,5,0,0,6,1,14,6,1,0);
/*!40000 ALTER TABLE `playerprogress` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recover_info`
--

DROP TABLE IF EXISTS `recover_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recover_info` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `in_param` varchar(5000) NOT NULL,
  `txn` varchar(5000) NOT NULL,
  `counter` int unsigned DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recover_info`
--

LOCK TABLES `recover_info` WRITE;
/*!40000 ALTER TABLE `recover_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `recover_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `servers`
--

DROP TABLE IF EXISTS `servers`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `servers` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `ip` varchar(15) NOT NULL DEFAULT '',
  `authorised` int NOT NULL,
  `prefix` varchar(30) NOT NULL DEFAULT '',
  `name` varchar(100) DEFAULT NULL,
  `port` int unsigned DEFAULT '0',
  `gport` int NOT NULL,
  `queryport` int unsigned NOT NULL DEFAULT '0',
  `bydnsname` int NOT NULL,
  `dnshost` int NOT NULL,
  `lastupdate` datetime NOT NULL DEFAULT '0000-00-00 00:00:00',
  PRIMARY KEY (`id`),
  UNIQUE KEY `ip-prefix-unq` (`ip`,`prefix`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `servers`
--

LOCK TABLES `servers` WRITE;
/*!40000 ALTER TABLE `servers` DISABLE KEYS */;
INSERT INTO `servers` VALUES (1,'127.0.0.1',1,'',NULL,0,0,0,0,0,'0000-00-00 00:00:00'),(2,'192.168.178.20',1,'',NULL,0,0,0,0,0,'0000-00-00 00:00:00');
/*!40000 ALTER TABLE `servers` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `srv_info`
--

DROP TABLE IF EXISTS `srv_info`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `srv_info` (
  `pid` int unsigned NOT NULL,
  `status` varchar(5000) NOT NULL,
  `last_update` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `srv_info`
--

LOCK TABLES `srv_info` WRITE;
/*!40000 ALTER TABLE `srv_info` DISABLE KEYS */;
/*!40000 ALTER TABLE `srv_info` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats_a`
--

DROP TABLE IF EXISTS `stats_a`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_a` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint unsigned NOT NULL COMMENT 'player pid',
  `_date` varchar(20) NOT NULL COMMENT 'game date',
  `_lgdt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time of last game',
  `_gm` int unsigned NOT NULL DEFAULT '0' COMMENT 'game mode',
  `_akpr` int unsigned NOT NULL DEFAULT '0' COMMENT 'round kills',
  `_atp` int unsigned NOT NULL DEFAULT '0' COMMENT 'time played in armor',
  `_t` varchar(20) NOT NULL DEFAULT '0' COMMENT 'team id',
  `_cpt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Total captured flags',
  `_capa` int unsigned NOT NULL DEFAULT '0' COMMENT 'Capture Assists',
  `_dcpt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Defended Control Points',
  `_crpt` int unsigned NOT NULL DEFAULT '0' COMMENT 'Carrier points',
  `_gsco` int unsigned NOT NULL DEFAULT '0' COMMENT 'global score',
  `_klls` int unsigned NOT NULL DEFAULT '0' COMMENT 'Kills',
  `_dths` int unsigned NOT NULL DEFAULT '0' COMMENT 'Deaths',
  `_toth` int unsigned NOT NULL DEFAULT '0' COMMENT 'Total Hits',
  `_tots` int unsigned NOT NULL DEFAULT '0' COMMENT 'Total Fired',
  `_hls` int unsigned NOT NULL DEFAULT '0' COMMENT 'Heals',
  `_losses` int unsigned NOT NULL DEFAULT '0' COMMENT 'Losses',
  `_resp` int unsigned NOT NULL DEFAULT '0' COMMENT 'Re-supplies',
  `_rps` int unsigned NOT NULL DEFAULT '0' COMMENT 'Repairs',
  `_rvs` int unsigned NOT NULL DEFAULT '0' COMMENT 'Revives',
  `_spm` int unsigned NOT NULL DEFAULT '0' COMMENT 'Score Per Minute',
  `_ttp` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time played',
  `_wins` int unsigned NOT NULL DEFAULT '0' COMMENT 'Wins',
  `_kpm` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Kills Per Minute',
  `_dpm` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Death per minute',
  `_tac` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Commander',
  `_tasl` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Squad Leader',
  `_tasm` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Squad Member',
  `_talw` int unsigned NOT NULL DEFAULT '0' COMMENT 'Time As Lone Wolf',
  `_ovaccu` varchar(20) NOT NULL DEFAULT '0' COMMENT 'Accuracy',
  `_twsc` int unsigned NOT NULL DEFAULT '0' COMMENT 'Teamwork Score',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=24 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats_a`
--

LOCK TABLES `stats_a` WRITE;
/*!40000 ALTER TABLE `stats_a` DISABLE KEYS */;
INSERT INTO `stats_a` VALUES (23,1,'2018-09-29',1538226794,0,0,0,'2',9,0,2,343,168,123,22,862,2066,7,0,2,0,0,3,2974,3,'2.4815063887021','0.44384667114997',221,0,0,2753,'0.41723136495644',42);
/*!40000 ALTER TABLE `stats_a` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats_e`
--

DROP TABLE IF EXISTS `stats_e`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_e` (
  `pid` bigint NOT NULL,
  `etp-0` varchar(20) NOT NULL DEFAULT '0',
  `etp-1` varchar(20) NOT NULL DEFAULT '0',
  `etp-2` varchar(20) NOT NULL DEFAULT '0',
  `etp-3` varchar(20) NOT NULL DEFAULT '0',
  `etp-4` varchar(20) NOT NULL DEFAULT '0',
  `etp-5` varchar(20) NOT NULL DEFAULT '0',
  `etp-6` varchar(20) NOT NULL DEFAULT '0',
  `etp-7` varchar(20) NOT NULL DEFAULT '0',
  `etp-8` varchar(20) NOT NULL DEFAULT '0',
  `etp-9` varchar(20) NOT NULL DEFAULT '0',
  `etp-10` varchar(20) NOT NULL DEFAULT '0',
  `etp-11` varchar(20) NOT NULL DEFAULT '0',
  `etpk-0` varchar(20) NOT NULL DEFAULT '0',
  `etpk-1` varchar(20) NOT NULL DEFAULT '0',
  `etpk-2` varchar(20) NOT NULL DEFAULT '0',
  `etpk-3` varchar(20) NOT NULL DEFAULT '0',
  `etpk-4` varchar(20) NOT NULL DEFAULT '0',
  `etpk-5` varchar(20) NOT NULL DEFAULT '0',
  `etpk-6` varchar(20) NOT NULL DEFAULT '0',
  `etpk-7` varchar(20) NOT NULL DEFAULT '0',
  `etpk-8` varchar(20) NOT NULL DEFAULT '0',
  `etpk-9` varchar(20) NOT NULL DEFAULT '0',
  `etpk-10` varchar(20) NOT NULL DEFAULT '0',
  `etpk-11` varchar(20) NOT NULL DEFAULT '0',
  `kdths-0` int unsigned NOT NULL DEFAULT '0',
  `kdths-1` int unsigned NOT NULL DEFAULT '0',
  `kdths-2` int unsigned NOT NULL DEFAULT '0',
  `kdths-3` int unsigned NOT NULL DEFAULT '0',
  `kkls-0` int unsigned NOT NULL DEFAULT '0',
  `kkls-1` int unsigned NOT NULL DEFAULT '0',
  `kkls-2` int unsigned NOT NULL DEFAULT '0',
  `kkls-3` int unsigned NOT NULL DEFAULT '0',
  `ktt-0` int unsigned NOT NULL DEFAULT '0',
  `ktt-1` int unsigned NOT NULL DEFAULT '0',
  `ktt-2` int unsigned NOT NULL DEFAULT '0',
  `ktt-3` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats_e`
--

LOCK TABLES `stats_e` WRITE;
/*!40000 ALTER TABLE `stats_e` DISABLE KEYS */;
INSERT INTO `stats_e` VALUES (1,'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',1,14,6,1,1,75,14,33,390,1518,752,277);
/*!40000 ALTER TABLE `stats_e` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats_m`
--

DROP TABLE IF EXISTS `stats_m`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_m` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `pid` bigint unsigned NOT NULL,
  `gm` int unsigned NOT NULL DEFAULT '0' COMMENT 'game mode',
  `mapid` int unsigned NOT NULL DEFAULT '0' COMMENT 'map id',
  `mbr` int unsigned NOT NULL DEFAULT '0',
  `mwin` int unsigned NOT NULL DEFAULT '0' COMMENT 'map wins',
  `mlos` int unsigned NOT NULL DEFAULT '0' COMMENT 'map losses',
  `msc` int unsigned NOT NULL DEFAULT '0' COMMENT 'map score',
  `mtt` int unsigned NOT NULL DEFAULT '0' COMMENT 'map time',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=29 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats_m`
--

LOCK TABLES `stats_m` WRITE;
/*!40000 ALTER TABLE `stats_m` DISABLE KEYS */;
INSERT INTO `stats_m` VALUES (26,4,0,8,101,1,0,101,746),(27,1,0,5,24,1,0,24,952),(28,1,0,0,43,1,0,43,1276);
/*!40000 ALTER TABLE `stats_m` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats_v`
--

DROP TABLE IF EXISTS `stats_v`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_v` (
  `pid` bigint unsigned NOT NULL,
  `vdstry-0` int unsigned NOT NULL DEFAULT '0',
  `vdstry-1` int unsigned NOT NULL DEFAULT '0',
  `vdstry-2` int unsigned NOT NULL DEFAULT '0',
  `vdstry-3` int unsigned NOT NULL DEFAULT '0',
  `vdstry-4` int unsigned NOT NULL DEFAULT '0',
  `vdstry-5` int unsigned NOT NULL DEFAULT '0',
  `vdstry-6` int unsigned NOT NULL DEFAULT '0',
  `vdstry-7` int unsigned NOT NULL DEFAULT '0',
  `vdstry-8` int unsigned NOT NULL DEFAULT '0',
  `vdstry-9` int unsigned NOT NULL DEFAULT '0',
  `vdstry-10` int unsigned NOT NULL DEFAULT '0',
  `vdstry-11` int unsigned NOT NULL DEFAULT '0',
  `vdstry-12` int unsigned NOT NULL DEFAULT '0',
  `vdstry-13` int unsigned NOT NULL DEFAULT '0',
  `vdths-0` int unsigned NOT NULL DEFAULT '0',
  `vdths-1` int unsigned NOT NULL DEFAULT '0',
  `vdths-2` int unsigned NOT NULL DEFAULT '0',
  `vdths-3` int unsigned NOT NULL DEFAULT '0',
  `vdths-4` int unsigned NOT NULL DEFAULT '0',
  `vdths-5` int unsigned NOT NULL DEFAULT '0',
  `vdths-6` int unsigned NOT NULL DEFAULT '0',
  `vdths-7` int unsigned NOT NULL DEFAULT '0',
  `vdths-8` int unsigned NOT NULL DEFAULT '0',
  `vdths-9` int unsigned NOT NULL DEFAULT '0',
  `vdths-10` int unsigned NOT NULL DEFAULT '0',
  `vdths-11` int unsigned NOT NULL DEFAULT '0',
  `vdths-12` int unsigned NOT NULL DEFAULT '0',
  `vdths-13` int unsigned NOT NULL DEFAULT '0',
  `vkdr-0` int unsigned NOT NULL DEFAULT '0',
  `vkdr-1` int unsigned NOT NULL DEFAULT '0',
  `vkdr-2` int unsigned NOT NULL DEFAULT '0',
  `vkdr-3` int unsigned NOT NULL DEFAULT '0',
  `vkdr-4` int unsigned NOT NULL DEFAULT '0',
  `vkdr-5` int unsigned NOT NULL DEFAULT '0',
  `vkdr-6` int unsigned NOT NULL DEFAULT '0',
  `vkdr-7` int unsigned NOT NULL DEFAULT '0',
  `vkdr-8` int unsigned NOT NULL DEFAULT '0',
  `vkdr-9` int unsigned NOT NULL DEFAULT '0',
  `vkdr-10` int unsigned NOT NULL DEFAULT '0',
  `vkdr-11` int unsigned NOT NULL DEFAULT '0',
  `vkdr-12` int unsigned NOT NULL DEFAULT '0',
  `vkdr-13` int unsigned NOT NULL DEFAULT '0',
  `vkls-0` int unsigned NOT NULL DEFAULT '0',
  `vkls-1` int unsigned NOT NULL DEFAULT '0',
  `vkls-2` int unsigned NOT NULL DEFAULT '0',
  `vkls-3` int unsigned NOT NULL DEFAULT '0',
  `vkls-4` int unsigned NOT NULL DEFAULT '0',
  `vkls-5` int unsigned NOT NULL DEFAULT '0',
  `vkls-6` int unsigned NOT NULL DEFAULT '0',
  `vkls-7` int unsigned NOT NULL DEFAULT '0',
  `vkls-8` int unsigned NOT NULL DEFAULT '0',
  `vkls-9` int unsigned NOT NULL DEFAULT '0',
  `vkls-10` int unsigned NOT NULL DEFAULT '0',
  `vkls-11` int unsigned NOT NULL DEFAULT '0',
  `vkls-12` int unsigned NOT NULL DEFAULT '0',
  `vkls-13` int unsigned NOT NULL DEFAULT '0',
  `vrkls-0` int unsigned NOT NULL DEFAULT '0',
  `vrkls-1` int unsigned NOT NULL DEFAULT '0',
  `vrkls-2` int unsigned NOT NULL DEFAULT '0',
  `vrkls-3` int unsigned NOT NULL DEFAULT '0',
  `vrkls-4` int unsigned NOT NULL DEFAULT '0',
  `vrkls-5` int unsigned NOT NULL DEFAULT '0',
  `vrkls-6` int unsigned NOT NULL DEFAULT '0',
  `vrkls-7` int unsigned NOT NULL DEFAULT '0',
  `vrkls-8` int unsigned NOT NULL DEFAULT '0',
  `vrkls-9` int unsigned NOT NULL DEFAULT '0',
  `vrkls-10` int unsigned NOT NULL DEFAULT '0',
  `vrkls-11` int unsigned NOT NULL DEFAULT '0',
  `vrkls-12` int unsigned NOT NULL DEFAULT '0',
  `vrkls-13` int unsigned NOT NULL DEFAULT '0',
  `vtp-0` varchar(20) NOT NULL DEFAULT '0',
  `vtp-1` varchar(20) NOT NULL DEFAULT '0',
  `vtp-2` varchar(20) NOT NULL DEFAULT '0',
  `vtp-3` varchar(20) NOT NULL DEFAULT '0',
  `vtp-4` varchar(20) NOT NULL DEFAULT '0',
  `vtp-5` varchar(20) NOT NULL DEFAULT '0',
  `vtp-6` varchar(20) NOT NULL DEFAULT '0',
  `vtp-7` varchar(20) NOT NULL DEFAULT '0',
  `vtp-8` varchar(20) NOT NULL DEFAULT '0',
  `vtp-9` varchar(20) NOT NULL DEFAULT '0',
  `vtp-10` varchar(20) NOT NULL DEFAULT '0',
  `vtp-11` varchar(20) NOT NULL DEFAULT '0',
  `vtp-12` varchar(20) NOT NULL DEFAULT '0',
  `vtp-13` varchar(20) NOT NULL DEFAULT '0',
  `vbf-0` int unsigned NOT NULL DEFAULT '0',
  `vbf-1` int unsigned NOT NULL DEFAULT '0',
  `vbf-2` int unsigned NOT NULL DEFAULT '0',
  `vbf-3` int unsigned NOT NULL DEFAULT '0',
  `vbf-4` int unsigned NOT NULL DEFAULT '0',
  `vbf-5` int unsigned NOT NULL DEFAULT '0',
  `vbf-6` int unsigned NOT NULL DEFAULT '0',
  `vbf-7` int unsigned NOT NULL DEFAULT '0',
  `vbf-8` int unsigned NOT NULL DEFAULT '0',
  `vbf-9` int unsigned NOT NULL DEFAULT '0',
  `vbf-10` int unsigned NOT NULL DEFAULT '0',
  `vbf-11` int unsigned NOT NULL DEFAULT '0',
  `vbf-12` int unsigned NOT NULL DEFAULT '0',
  `vbf-13` int unsigned NOT NULL DEFAULT '0',
  `vbh-0` int unsigned NOT NULL DEFAULT '0',
  `vbh-1` int unsigned NOT NULL DEFAULT '0',
  `vbh-2` int unsigned NOT NULL DEFAULT '0',
  `vbh-3` int unsigned NOT NULL DEFAULT '0',
  `vbh-4` int unsigned NOT NULL DEFAULT '0',
  `vbh-5` int unsigned NOT NULL DEFAULT '0',
  `vbh-6` int unsigned NOT NULL DEFAULT '0',
  `vbh-7` int unsigned NOT NULL DEFAULT '0',
  `vbh-8` int unsigned NOT NULL DEFAULT '0',
  `vbh-9` int unsigned NOT NULL DEFAULT '0',
  `vbh-10` int unsigned NOT NULL DEFAULT '0',
  `vbh-11` int unsigned NOT NULL DEFAULT '0',
  `vbh-12` int unsigned NOT NULL DEFAULT '0',
  `vbh-13` int unsigned NOT NULL DEFAULT '0',
  `vaccu-0` int unsigned NOT NULL DEFAULT '0',
  `vaccu-1` int unsigned NOT NULL DEFAULT '0',
  `vaccu-2` int unsigned NOT NULL DEFAULT '0',
  `vaccu-3` int unsigned NOT NULL DEFAULT '0',
  `vaccu-4` int unsigned NOT NULL DEFAULT '0',
  `vaccu-5` int unsigned NOT NULL DEFAULT '0',
  `vaccu-6` int unsigned NOT NULL DEFAULT '0',
  `vaccu-7` int unsigned NOT NULL DEFAULT '0',
  `vaccu-8` int unsigned NOT NULL DEFAULT '0',
  `vaccu-9` int unsigned NOT NULL DEFAULT '0',
  `vaccu-10` int unsigned NOT NULL DEFAULT '0',
  `vaccu-11` int unsigned NOT NULL DEFAULT '0',
  `vaccu-12` int unsigned NOT NULL DEFAULT '0',
  `vaccu-13` int unsigned NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats_v`
--

LOCK TABLES `stats_v` WRITE;
/*!40000 ALTER TABLE `stats_v` DISABLE KEYS */;
/*!40000 ALTER TABLE `stats_v` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `stats_w`
--

DROP TABLE IF EXISTS `stats_w`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `stats_w` (
  `pid` bigint unsigned NOT NULL,
  `waccu-0` varchar(20) NOT NULL DEFAULT '0',
  `waccu-1` varchar(20) NOT NULL DEFAULT '0',
  `waccu-2` varchar(20) NOT NULL DEFAULT '0',
  `waccu-3` varchar(20) NOT NULL DEFAULT '0',
  `waccu-4` varchar(20) NOT NULL DEFAULT '0',
  `waccu-5` varchar(20) NOT NULL DEFAULT '0',
  `waccu-6` varchar(20) NOT NULL DEFAULT '0',
  `waccu-7` varchar(20) NOT NULL DEFAULT '0',
  `waccu-8` varchar(20) NOT NULL DEFAULT '0',
  `waccu-9` varchar(20) NOT NULL DEFAULT '0',
  `waccu-10` varchar(20) NOT NULL DEFAULT '0',
  `waccu-11` varchar(20) NOT NULL DEFAULT '0',
  `waccu-12` varchar(20) NOT NULL DEFAULT '0',
  `waccu-13` varchar(20) NOT NULL DEFAULT '0',
  `waccu-14` varchar(20) NOT NULL DEFAULT '0',
  `waccu-15` varchar(20) NOT NULL DEFAULT '0',
  `waccu-16` varchar(20) NOT NULL DEFAULT '0',
  `waccu-17` varchar(20) NOT NULL DEFAULT '0',
  `waccu-18` varchar(20) NOT NULL DEFAULT '0',
  `waccu-19` varchar(20) NOT NULL DEFAULT '0',
  `waccu-20` varchar(20) NOT NULL DEFAULT '0',
  `waccu-21` varchar(20) NOT NULL DEFAULT '0',
  `waccu-22` varchar(20) NOT NULL DEFAULT '0',
  `waccu-23` varchar(20) NOT NULL DEFAULT '0',
  `waccu-24` varchar(20) NOT NULL DEFAULT '0',
  `waccu-25` varchar(20) NOT NULL DEFAULT '0',
  `waccu-26` varchar(20) NOT NULL DEFAULT '0',
  `waccu-27` varchar(20) NOT NULL DEFAULT '0',
  `waccu-28` varchar(20) NOT NULL DEFAULT '0',
  `waccu-29` varchar(20) NOT NULL DEFAULT '0',
  `waccu-30` varchar(20) NOT NULL DEFAULT '0',
  `waccu-31` varchar(20) NOT NULL DEFAULT '0',
  `waccu-32` varchar(20) NOT NULL DEFAULT '0',
  `waccu-33` varchar(20) NOT NULL DEFAULT '0',
  `waccu-34` varchar(20) NOT NULL DEFAULT '0',
  `waccu-35` varchar(20) NOT NULL DEFAULT '0',
  `waccu-36` varchar(20) NOT NULL DEFAULT '0',
  `waccu-37` varchar(20) NOT NULL DEFAULT '0',
  `waccu-38` varchar(20) NOT NULL DEFAULT '0',
  `waccu-39` varchar(20) NOT NULL DEFAULT '0',
  `waccu-40` varchar(20) NOT NULL DEFAULT '0',
  `waccu-41` varchar(20) NOT NULL DEFAULT '0',
  `waccu-42` varchar(20) NOT NULL DEFAULT '0',
  `wdths-0` int NOT NULL DEFAULT '0',
  `wdths-1` int NOT NULL DEFAULT '0',
  `wdths-2` int NOT NULL DEFAULT '0',
  `wdths-3` int NOT NULL DEFAULT '0',
  `wdths-4` int NOT NULL DEFAULT '0',
  `wdths-5` int NOT NULL DEFAULT '0',
  `wdths-6` int NOT NULL DEFAULT '0',
  `wdths-7` int NOT NULL DEFAULT '0',
  `wdths-8` int NOT NULL DEFAULT '0',
  `wdths-9` int NOT NULL DEFAULT '0',
  `wdths-10` int NOT NULL DEFAULT '0',
  `wdths-11` int NOT NULL DEFAULT '0',
  `wdths-12` int NOT NULL DEFAULT '0',
  `wdths-13` int NOT NULL DEFAULT '0',
  `wdths-14` int NOT NULL DEFAULT '0',
  `wdths-15` int NOT NULL DEFAULT '0',
  `wdths-16` int NOT NULL DEFAULT '0',
  `wdths-17` int NOT NULL DEFAULT '0',
  `wdths-18` int NOT NULL DEFAULT '0',
  `wdths-19` int NOT NULL DEFAULT '0',
  `wdths-20` int NOT NULL DEFAULT '0',
  `wdths-21` int NOT NULL DEFAULT '0',
  `wdths-22` int NOT NULL DEFAULT '0',
  `wdths-23` int NOT NULL DEFAULT '0',
  `wdths-24` int NOT NULL DEFAULT '0',
  `wdths-25` int NOT NULL DEFAULT '0',
  `wdths-26` int NOT NULL DEFAULT '0',
  `wdths-27` int NOT NULL DEFAULT '0',
  `wdths-28` int NOT NULL DEFAULT '0',
  `wdths-29` int NOT NULL DEFAULT '0',
  `wdths-30` int NOT NULL DEFAULT '0',
  `wdths-31` int NOT NULL DEFAULT '0',
  `wdths-32` int NOT NULL DEFAULT '0',
  `wdths-33` int NOT NULL DEFAULT '0',
  `wdths-34` int NOT NULL DEFAULT '0',
  `wdths-35` int NOT NULL DEFAULT '0',
  `wdths-36` int NOT NULL DEFAULT '0',
  `wdths-37` int NOT NULL DEFAULT '0',
  `wdths-38` int NOT NULL DEFAULT '0',
  `wdths-39` int NOT NULL DEFAULT '0',
  `wdths-40` int NOT NULL DEFAULT '0',
  `wdths-41` int NOT NULL DEFAULT '0',
  `wdths-42` int NOT NULL DEFAULT '0',
  `whts-0` varchar(20) NOT NULL DEFAULT '0',
  `whts-1` varchar(20) NOT NULL DEFAULT '0',
  `whts-2` varchar(20) NOT NULL DEFAULT '0',
  `whts-3` varchar(20) NOT NULL DEFAULT '0',
  `whts-4` varchar(20) NOT NULL DEFAULT '0',
  `whts-5` varchar(20) NOT NULL DEFAULT '0',
  `whts-6` varchar(20) NOT NULL DEFAULT '0',
  `whts-7` varchar(20) NOT NULL DEFAULT '0',
  `whts-8` varchar(20) NOT NULL DEFAULT '0',
  `whts-9` varchar(20) NOT NULL DEFAULT '0',
  `whts-10` varchar(20) NOT NULL DEFAULT '0',
  `whts-11` varchar(20) NOT NULL DEFAULT '0',
  `whts-12` varchar(20) NOT NULL DEFAULT '0',
  `whts-13` varchar(20) NOT NULL DEFAULT '0',
  `whts-14` varchar(20) NOT NULL DEFAULT '0',
  `whts-15` varchar(20) NOT NULL DEFAULT '0',
  `whts-16` varchar(20) NOT NULL DEFAULT '0',
  `whts-17` varchar(20) NOT NULL DEFAULT '0',
  `whts-18` varchar(20) NOT NULL DEFAULT '0',
  `whts-19` varchar(20) NOT NULL DEFAULT '0',
  `whts-20` varchar(20) NOT NULL DEFAULT '0',
  `whts-21` varchar(20) NOT NULL DEFAULT '0',
  `whts-22` varchar(20) NOT NULL DEFAULT '0',
  `whts-23` varchar(20) NOT NULL DEFAULT '0',
  `whts-24` varchar(20) NOT NULL DEFAULT '0',
  `whts-25` varchar(20) NOT NULL DEFAULT '0',
  `whts-26` varchar(20) NOT NULL DEFAULT '0',
  `whts-27` varchar(20) NOT NULL DEFAULT '0',
  `whts-28` varchar(20) NOT NULL DEFAULT '0',
  `whts-29` varchar(20) NOT NULL DEFAULT '0',
  `whts-30` varchar(20) NOT NULL DEFAULT '0',
  `whts-31` varchar(20) NOT NULL DEFAULT '0',
  `whts-32` varchar(20) NOT NULL DEFAULT '0',
  `whts-33` varchar(20) NOT NULL DEFAULT '0',
  `whts-34` varchar(20) NOT NULL DEFAULT '0',
  `whts-35` varchar(20) NOT NULL DEFAULT '0',
  `whts-36` varchar(20) NOT NULL DEFAULT '0',
  `whts-37` varchar(20) NOT NULL DEFAULT '0',
  `whts-38` varchar(20) NOT NULL DEFAULT '0',
  `whts-39` varchar(20) NOT NULL DEFAULT '0',
  `whts-40` varchar(20) NOT NULL DEFAULT '0',
  `whts-41` varchar(20) NOT NULL DEFAULT '0',
  `whts-42` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-0` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-1` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-2` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-3` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-4` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-5` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-6` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-7` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-8` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-9` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-10` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-11` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-12` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-13` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-14` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-15` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-16` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-17` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-18` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-19` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-20` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-21` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-22` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-23` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-24` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-25` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-26` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-27` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-28` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-29` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-30` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-31` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-32` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-33` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-34` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-35` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-36` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-37` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-38` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-39` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-40` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-41` varchar(20) NOT NULL DEFAULT '0',
  `wkdr-42` varchar(20) NOT NULL DEFAULT '0',
  `wkls-0` int NOT NULL DEFAULT '0',
  `wkls-1` int NOT NULL DEFAULT '0',
  `wkls-2` int NOT NULL DEFAULT '0',
  `wkls-3` int NOT NULL DEFAULT '0',
  `wkls-4` int NOT NULL DEFAULT '0',
  `wkls-5` int NOT NULL DEFAULT '0',
  `wkls-6` int NOT NULL DEFAULT '0',
  `wkls-7` int NOT NULL DEFAULT '0',
  `wkls-8` int NOT NULL DEFAULT '0',
  `wkls-9` int NOT NULL DEFAULT '0',
  `wkls-10` int NOT NULL DEFAULT '0',
  `wkls-11` int NOT NULL DEFAULT '0',
  `wkls-12` int NOT NULL DEFAULT '0',
  `wkls-13` int NOT NULL DEFAULT '0',
  `wkls-14` int NOT NULL DEFAULT '0',
  `wkls-15` int NOT NULL DEFAULT '0',
  `wkls-16` int NOT NULL DEFAULT '0',
  `wkls-17` int NOT NULL DEFAULT '0',
  `wkls-18` int NOT NULL DEFAULT '0',
  `wkls-19` int NOT NULL DEFAULT '0',
  `wkls-20` int NOT NULL DEFAULT '0',
  `wkls-21` int NOT NULL DEFAULT '0',
  `wkls-22` int NOT NULL DEFAULT '0',
  `wkls-23` int NOT NULL DEFAULT '0',
  `wkls-24` int NOT NULL DEFAULT '0',
  `wkls-25` int NOT NULL DEFAULT '0',
  `wkls-26` int NOT NULL DEFAULT '0',
  `wkls-27` int NOT NULL DEFAULT '0',
  `wkls-28` int NOT NULL DEFAULT '0',
  `wkls-29` int NOT NULL DEFAULT '0',
  `wkls-30` int NOT NULL DEFAULT '0',
  `wkls-31` int NOT NULL DEFAULT '0',
  `wkls-32` int NOT NULL DEFAULT '0',
  `wkls-33` int NOT NULL DEFAULT '0',
  `wkls-34` int NOT NULL DEFAULT '0',
  `wkls-35` int NOT NULL DEFAULT '0',
  `wkls-36` int NOT NULL DEFAULT '0',
  `wkls-37` int NOT NULL DEFAULT '0',
  `wkls-38` int NOT NULL DEFAULT '0',
  `wkls-39` int NOT NULL DEFAULT '0',
  `wkls-40` int NOT NULL DEFAULT '0',
  `wkls-41` int NOT NULL DEFAULT '0',
  `wkls-42` int NOT NULL DEFAULT '0',
  `wshts-0` varchar(20) NOT NULL DEFAULT '0',
  `wshts-1` varchar(20) NOT NULL DEFAULT '0',
  `wshts-2` varchar(20) NOT NULL DEFAULT '0',
  `wshts-3` varchar(20) NOT NULL DEFAULT '0',
  `wshts-4` varchar(20) NOT NULL DEFAULT '0',
  `wshts-5` varchar(20) NOT NULL DEFAULT '0',
  `wshts-6` varchar(20) NOT NULL DEFAULT '0',
  `wshts-7` varchar(20) NOT NULL DEFAULT '0',
  `wshts-8` varchar(20) NOT NULL DEFAULT '0',
  `wshts-9` varchar(20) NOT NULL DEFAULT '0',
  `wshts-10` varchar(20) NOT NULL DEFAULT '0',
  `wshts-11` varchar(20) NOT NULL DEFAULT '0',
  `wshts-12` varchar(20) NOT NULL DEFAULT '0',
  `wshts-13` varchar(20) NOT NULL DEFAULT '0',
  `wshts-14` varchar(20) NOT NULL DEFAULT '0',
  `wshts-15` varchar(20) NOT NULL DEFAULT '0',
  `wshts-16` varchar(20) NOT NULL DEFAULT '0',
  `wshts-17` varchar(20) NOT NULL DEFAULT '0',
  `wshts-18` varchar(20) NOT NULL DEFAULT '0',
  `wshts-19` varchar(20) NOT NULL DEFAULT '0',
  `wshts-20` varchar(20) NOT NULL DEFAULT '0',
  `wshts-21` varchar(20) NOT NULL DEFAULT '0',
  `wshts-22` varchar(20) NOT NULL DEFAULT '0',
  `wshts-23` varchar(20) NOT NULL DEFAULT '0',
  `wshts-24` varchar(20) NOT NULL DEFAULT '0',
  `wshts-25` varchar(20) NOT NULL DEFAULT '0',
  `wshts-26` varchar(20) NOT NULL DEFAULT '0',
  `wshts-27` varchar(20) NOT NULL DEFAULT '0',
  `wshts-28` varchar(20) NOT NULL DEFAULT '0',
  `wshts-29` varchar(20) NOT NULL DEFAULT '0',
  `wshts-30` varchar(20) NOT NULL DEFAULT '0',
  `wshts-31` varchar(20) NOT NULL DEFAULT '0',
  `wshts-32` varchar(20) NOT NULL DEFAULT '0',
  `wshts-33` varchar(20) NOT NULL DEFAULT '0',
  `wshts-34` varchar(20) NOT NULL DEFAULT '0',
  `wshts-35` varchar(20) NOT NULL DEFAULT '0',
  `wshts-36` varchar(20) NOT NULL DEFAULT '0',
  `wshts-37` varchar(20) NOT NULL DEFAULT '0',
  `wshts-38` varchar(20) NOT NULL DEFAULT '0',
  `wshts-39` varchar(20) NOT NULL DEFAULT '0',
  `wshts-40` varchar(20) NOT NULL DEFAULT '0',
  `wshts-41` varchar(20) NOT NULL DEFAULT '0',
  `wshts-42` varchar(20) NOT NULL DEFAULT '0',
  `wtp-0` varchar(20) NOT NULL DEFAULT '0',
  `wtp-1` varchar(20) NOT NULL DEFAULT '0',
  `wtp-2` varchar(20) NOT NULL DEFAULT '0',
  `wtp-3` varchar(20) NOT NULL DEFAULT '0',
  `wtp-4` varchar(20) NOT NULL DEFAULT '0',
  `wtp-5` varchar(20) NOT NULL DEFAULT '0',
  `wtp-6` varchar(20) NOT NULL DEFAULT '0',
  `wtp-7` varchar(20) NOT NULL DEFAULT '0',
  `wtp-8` varchar(20) NOT NULL DEFAULT '0',
  `wtp-9` varchar(20) NOT NULL DEFAULT '0',
  `wtp-10` varchar(20) NOT NULL DEFAULT '0',
  `wtp-11` varchar(20) NOT NULL DEFAULT '0',
  `wtp-12` varchar(20) NOT NULL DEFAULT '0',
  `wtp-13` varchar(20) NOT NULL DEFAULT '0',
  `wtp-14` varchar(20) NOT NULL DEFAULT '0',
  `wtp-15` varchar(20) NOT NULL DEFAULT '0',
  `wtp-16` varchar(20) NOT NULL DEFAULT '0',
  `wtp-17` varchar(20) NOT NULL DEFAULT '0',
  `wtp-18` varchar(20) NOT NULL DEFAULT '0',
  `wtp-19` varchar(20) NOT NULL DEFAULT '0',
  `wtp-20` varchar(20) NOT NULL DEFAULT '0',
  `wtp-21` varchar(20) NOT NULL DEFAULT '0',
  `wtp-22` varchar(20) NOT NULL DEFAULT '0',
  `wtp-23` varchar(20) NOT NULL DEFAULT '0',
  `wtp-24` varchar(20) NOT NULL DEFAULT '0',
  `wtp-25` varchar(20) NOT NULL DEFAULT '0',
  `wtp-26` varchar(20) NOT NULL DEFAULT '0',
  `wtp-27` varchar(20) NOT NULL DEFAULT '0',
  `wtp-28` varchar(20) NOT NULL DEFAULT '0',
  `wtp-29` varchar(20) NOT NULL DEFAULT '0',
  `wtp-30` varchar(20) NOT NULL DEFAULT '0',
  `wtp-31` varchar(20) NOT NULL DEFAULT '0',
  `wtp-32` varchar(20) NOT NULL DEFAULT '0',
  `wtp-33` varchar(20) NOT NULL DEFAULT '0',
  `wtp-34` varchar(20) NOT NULL DEFAULT '0',
  `wtp-35` varchar(20) NOT NULL DEFAULT '0',
  `wtp-36` varchar(20) NOT NULL DEFAULT '0',
  `wtp-37` varchar(20) NOT NULL DEFAULT '0',
  `wtp-38` varchar(20) NOT NULL DEFAULT '0',
  `wtp-39` varchar(20) NOT NULL DEFAULT '0',
  `wtp-40` varchar(20) NOT NULL DEFAULT '0',
  `wtp-41` varchar(20) NOT NULL DEFAULT '0',
  `wtp-42` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-0` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-1` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-2` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-3` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-4` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-5` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-6` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-7` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-8` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-9` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-10` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-11` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-12` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-13` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-14` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-15` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-16` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-17` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-18` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-19` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-20` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-21` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-22` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-23` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-24` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-25` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-26` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-27` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-28` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-29` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-30` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-31` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-32` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-33` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-34` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-35` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-36` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-37` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-38` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-39` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-40` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-41` varchar(20) NOT NULL DEFAULT '0',
  `wtpk-42` varchar(20) NOT NULL DEFAULT '0',
  `wbf-0` int NOT NULL DEFAULT '0',
  `wbf-1` int NOT NULL DEFAULT '0',
  `wbf-2` int NOT NULL DEFAULT '0',
  `wbf-3` int NOT NULL DEFAULT '0',
  `wbf-4` int NOT NULL DEFAULT '0',
  `wbf-5` int NOT NULL DEFAULT '0',
  `wbf-6` int NOT NULL DEFAULT '0',
  `wbf-7` int NOT NULL DEFAULT '0',
  `wbf-8` int NOT NULL DEFAULT '0',
  `wbf-9` int NOT NULL DEFAULT '0',
  `wbf-10` int NOT NULL DEFAULT '0',
  `wbf-11` int NOT NULL DEFAULT '0',
  `wbf-12` int NOT NULL DEFAULT '0',
  `wbf-13` int NOT NULL DEFAULT '0',
  `wbf-14` int NOT NULL DEFAULT '0',
  `wbf-15` int NOT NULL DEFAULT '0',
  `wbf-16` int NOT NULL DEFAULT '0',
  `wbf-17` int NOT NULL DEFAULT '0',
  `wbf-18` int NOT NULL DEFAULT '0',
  `wbf-19` int NOT NULL DEFAULT '0',
  `wbf-20` int NOT NULL DEFAULT '0',
  `wbf-21` int NOT NULL DEFAULT '0',
  `wbf-22` int NOT NULL DEFAULT '0',
  `wbf-23` int NOT NULL DEFAULT '0',
  `wbf-24` int NOT NULL DEFAULT '0',
  `wbf-25` int NOT NULL DEFAULT '0',
  `wbf-26` int NOT NULL DEFAULT '0',
  `wbf-27` int NOT NULL DEFAULT '0',
  `wbf-28` int NOT NULL DEFAULT '0',
  `wbf-29` int NOT NULL DEFAULT '0',
  `wbf-30` int NOT NULL DEFAULT '0',
  `wbf-31` int NOT NULL DEFAULT '0',
  `wbf-32` int NOT NULL DEFAULT '0',
  `wbf-33` int NOT NULL DEFAULT '0',
  `wbf-34` int NOT NULL DEFAULT '0',
  `wbf-35` int NOT NULL DEFAULT '0',
  `wbf-36` int NOT NULL DEFAULT '0',
  `wbf-37` int NOT NULL DEFAULT '0',
  `wbf-38` int NOT NULL DEFAULT '0',
  `wbf-39` int NOT NULL DEFAULT '0',
  `wbf-40` int NOT NULL DEFAULT '0',
  `wbf-41` int NOT NULL DEFAULT '0',
  `wbf-42` int NOT NULL DEFAULT '0',
  `wbh-0` int NOT NULL DEFAULT '0',
  `wbh-1` int NOT NULL DEFAULT '0',
  `wbh-2` int NOT NULL DEFAULT '0',
  `wbh-3` int NOT NULL DEFAULT '0',
  `wbh-4` int NOT NULL DEFAULT '0',
  `wbh-5` int NOT NULL DEFAULT '0',
  `wbh-6` int NOT NULL DEFAULT '0',
  `wbh-7` int NOT NULL DEFAULT '0',
  `wbh-8` int NOT NULL DEFAULT '0',
  `wbh-9` int NOT NULL DEFAULT '0',
  `wbh-10` int NOT NULL DEFAULT '0',
  `wbh-11` int NOT NULL DEFAULT '0',
  `wbh-12` int NOT NULL DEFAULT '0',
  `wbh-13` int NOT NULL DEFAULT '0',
  `wbh-14` int NOT NULL DEFAULT '0',
  `wbh-15` int NOT NULL DEFAULT '0',
  `wbh-16` int NOT NULL DEFAULT '0',
  `wbh-17` int NOT NULL DEFAULT '0',
  `wbh-18` int NOT NULL DEFAULT '0',
  `wbh-19` int NOT NULL DEFAULT '0',
  `wbh-20` int NOT NULL DEFAULT '0',
  `wbh-21` int NOT NULL DEFAULT '0',
  `wbh-22` int NOT NULL DEFAULT '0',
  `wbh-23` int NOT NULL DEFAULT '0',
  `wbh-24` int NOT NULL DEFAULT '0',
  `wbh-25` int NOT NULL DEFAULT '0',
  `wbh-26` int NOT NULL DEFAULT '0',
  `wbh-27` int NOT NULL DEFAULT '0',
  `wbh-28` int NOT NULL DEFAULT '0',
  `wbh-29` int NOT NULL DEFAULT '0',
  `wbh-30` int NOT NULL DEFAULT '0',
  `wbh-31` int NOT NULL DEFAULT '0',
  `wbh-32` int NOT NULL DEFAULT '0',
  `wbh-33` int NOT NULL DEFAULT '0',
  `wbh-34` int NOT NULL DEFAULT '0',
  `wbh-35` int NOT NULL DEFAULT '0',
  `wbh-36` int NOT NULL DEFAULT '0',
  `wbh-37` int NOT NULL DEFAULT '0',
  `wbh-38` int NOT NULL DEFAULT '0',
  `wbh-39` int NOT NULL DEFAULT '0',
  `wbh-40` int NOT NULL DEFAULT '0',
  `wbh-41` int NOT NULL DEFAULT '0',
  `wbh-42` int NOT NULL DEFAULT '0',
  PRIMARY KEY (`pid`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `stats_w`
--

LOCK TABLES `stats_w` WRITE;
/*!40000 ALTER TABLE `stats_w` DISABLE KEYS */;
INSERT INTO `stats_w` VALUES (1,'0','0.35185185185185','0','0','0.31512605042017','0','0','1.2391304347826','0','0','0','0','0.5','0.94904458598726','0','0.4695652173913','0','0.4','0','0','0','0','1','1','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',0,0,0,0,0,0,0,0,0,2,0,1,0,0,0,4,0,1,0,0,0,0,1,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',0,24,0,0,31,0,0,15,0,0,0,0,1,0,0,11,0,2,0,0,0,0,2,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,'0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','184','2','10','269','3','34','146','1','11','0','0','3','89','0','269','0','17','1','0','0','0','21','118','0','0','0','0','0','0','3','0','0','4','0','0','0','49','8','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0','0',0,324,0,0,714,0,0,46,0,0,0,0,2,314,0,115,0,5,0,0,0,0,4,14,0,0,0,0,0,0,0,0,0,10,0,0,0,6,1,0,0,0,0,0,114,0,0,225,0,0,57,0,0,0,0,1,298,0,54,0,2,0,0,0,0,4,14,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0);
/*!40000 ALTER TABLE `stats_w` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `subaccount`
--

DROP TABLE IF EXISTS `subaccount`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `subaccount` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `profileid` int unsigned NOT NULL,
  `subaccount` varchar(45) NOT NULL,
  PRIMARY KEY (`id`) USING BTREE
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `subaccount`
--

LOCK TABLES `subaccount` WRITE;
/*!40000 ALTER TABLE `subaccount` DISABLE KEYS */;
INSERT INTO `subaccount` VALUES (1,1,'ServerAdmin');
/*!40000 ALTER TABLE `subaccount` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `unlocks`
--

DROP TABLE IF EXISTS `unlocks`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `unlocks` (
  `pid` bigint NOT NULL,
  `ukit` int unsigned NOT NULL DEFAULT '0',
  `utree` int unsigned NOT NULL DEFAULT '0',
  `uorder` int unsigned NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `unlocks`
--

LOCK TABLES `unlocks` WRITE;
/*!40000 ALTER TABLE `unlocks` DISABLE KEYS */;
/*!40000 ALTER TABLE `unlocks` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'bf2142'
--

--
-- Dumping routines for database 'bf2142'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-11-24  3:14:04
