-- MySQL dump 10.13  Distrib 8.0.13, for Linux (x86_64)
--
-- Host: localhost    Database: instagram_development
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8mb4 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `SequelizeMeta`
--

DROP TABLE IF EXISTS `SequelizeMeta`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `SequelizeMeta` (
  `name` varchar(255) CHARACTER SET utf8 COLLATE utf8_unicode_ci NOT NULL,
  PRIMARY KEY (`name`),
  UNIQUE KEY `name` (`name`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `SequelizeMeta`
--

LOCK TABLES `SequelizeMeta` WRITE;
/*!40000 ALTER TABLE `SequelizeMeta` DISABLE KEYS */;
INSERT INTO `SequelizeMeta` VALUES ('20181203144323-create-users.js'),('20181203144603-create-posts.js');
/*!40000 ALTER TABLE `SequelizeMeta` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `posts`
--

DROP TABLE IF EXISTS `posts`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `posts` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `desc` varchar(255) NOT NULL,
  `userId` int(11) NOT NULL,
  `picture` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT '2018-12-04 13:40:27',
  `updatedAt` datetime NOT NULL DEFAULT '2018-12-04 13:40:27',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (1,'Waheno kunvuw joiw basbole.','Tepoz ro di tejic fenlij owiok givjur jolesi afaoh senvepcu afifoz gecreb ner cerlofke.',1,'https://picsum.photos/401','2018-12-04 13:40:27','2018-12-04 13:40:27'),(2,'Tidokom leud tipgohku riepdu dosel.','Egzime woruc base mewile me luse ci ageiro fuonkuj cufpeni hiho pifek segop zoabi.',2,'https://picsum.photos/402','2018-12-04 13:40:27','2018-12-04 13:40:27'),(3,'Nohahi figid sedelo kosnota co con rohlir.','Hoevicig mo mijnim metursim peide zeelope jessobzo wejhive kicti evolun sasmo puccirhe ju at wujih.',3,'https://picsum.photos/403','2018-12-04 13:40:27','2018-12-04 13:40:27'),(4,'Copdad sumokog pobci waotu sififso cedgezhiw filiv coliren duiv.','Etige uk sehuve guvjil tojli nimeko nicol ededo dito nedwe cizuco ni god femub.',4,'https://picsum.photos/404','2018-12-04 13:40:27','2018-12-04 13:40:27'),(5,'Gu ebabic diw ko nokkop gegowzip vopo.','Borpu lec foihhog gijmozik ho hican kicik ij himik bir dikzo fe eli ludci.',5,'https://picsum.photos/405','2018-12-04 13:40:27','2018-12-04 13:40:27'),(6,'Des hem ivap hepegir monwene ipojoviw bikegip keit pi.','Go oh vaj lisarjij hittag lef itele lencen nepci venzerulo dumusmam rinir maw.',6,'https://picsum.photos/406','2018-12-04 13:40:27','2018-12-04 13:40:27'),(7,'Alte vo feiw podjom lifcu ve otucafeg.','Ka egdek wali noeb efav seti awoaje dewwi no nek hofdenoh cogvot min jekvo jedza nig.',7,'https://picsum.photos/407','2018-12-04 13:40:27','2018-12-04 13:40:27'),(8,'Rofobe jarov zep reki lefze ufobe fahjadit ewutolo direce.','Kimed curiper ho lodage girme ocigocu giv etaci voho nidze uwrahov bojowtic riv.',8,'https://picsum.photos/408','2018-12-04 13:40:27','2018-12-04 13:40:27'),(9,'Couro ciduv gitgihiw dug ce sejucuz upope.','Domow ciura luf iveheip gahohac mijep lewoj cozu getesudup dici nokci adu dabdopih cififker vetosor.',9,'https://picsum.photos/409','2018-12-04 13:40:27','2018-12-04 13:40:27'),(10,'Owalo wivolow ka wapuge ifteb seluwike solef.','Ace bif erra reag nu fem bo jofor dehev tekba pafegha himo kuane wid bokme.',10,'https://picsum.photos/410','2018-12-04 13:40:27','2018-12-04 13:40:27'),(11,'Omtaop lor vapec kem.','Erlu ol sophalmo codig bijim wososile foku okeaw do woke ucreko ninode gi sojiw dajsar cuhivu sitig basno.',11,'https://picsum.photos/411','2018-12-04 13:40:27','2018-12-04 13:40:27'),(12,'Fifuheto figra awfo akoim koza jahih riksi repnud.','Meh moono ro kej fohti nakda mehco od vovji kej coptal zanop laneruzo bikritlo cuesokaj rom.',12,'https://picsum.photos/412','2018-12-04 13:40:27','2018-12-04 13:40:27'),(13,'Junnih feoja fonhim se pag li zad.','Relooco kogsepte fo jeni meonmuk woho etiwoc nu jodec igamo co ti kivira fo ga hueweha we.',13,'https://picsum.photos/413','2018-12-04 13:40:27','2018-12-04 13:40:27'),(14,'Jezaj lopovo je ru ser ro botsuze.','Ecaotot legi ho zitet missaj pu he muvjos meju motge ojzuwki inomi wuzarmom rizi.',14,'https://picsum.photos/414','2018-12-04 13:40:27','2018-12-04 13:40:27'),(15,'Gon hiok endijuk ekzo sebvid esuatu jak govif zahfar.','So ikmas kocwip pibla dapohej togeh je mepoh eluepu enirikid peh nueri corufdi ca tecumpij.',15,'https://picsum.photos/415','2018-12-04 13:40:27','2018-12-04 13:40:27');
/*!40000 ALTER TABLE `posts` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `users`
--

DROP TABLE IF EXISTS `users`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `users` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `email` varchar(255) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `createdAt` datetime NOT NULL DEFAULT '2018-12-04 13:40:25',
  `updatedAt` datetime NOT NULL DEFAULT '2018-12-04 13:40:25',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (1,'johnDoe1@mail.com','jon1','$2b$12$pmkBXeYSVZuZd40gL1o0F.cHifLzCAnrJvseEltwupVyoZzXlGA/S','2018-12-04 13:40:25','2018-12-04 13:40:25'),(2,'johnDoe2@mail.com','jon2','$2b$12$lR/7JO7isQLeCbdUllTJmeRxW3qaULfhJ4IjSJ5znb40ddii891yy','2018-12-04 13:40:25','2018-12-04 13:40:25'),(3,'johnDoe3@mail.com','jon3','$2b$12$1NcXjDKy.1lkgung0kUAMehEz6EbrfPAQPvT1.4QAIkRzeOPSCwWO','2018-12-04 13:40:25','2018-12-04 13:40:25'),(4,'johnDoe4@mail.com','jon4','$2b$12$BtPGfheZRgZQN/wCQNsUiO1qrSKGKmz0Yq1PTIEj.qf8iE.cwkXzS','2018-12-04 13:40:25','2018-12-04 13:40:25'),(5,'johnDoe5@mail.com','jon5','$2b$12$9.8XulDFtC2fjklig6xJTuASL4t08zEFfRnloyEUkDsKZTyJxmcL2','2018-12-04 13:40:25','2018-12-04 13:40:25'),(6,'johnDoe6@mail.com','jon6','$2b$12$DCCAq0dAvTFjd6i5Bh8/x.RNYAx4xkDetqxcN3t672QPfRFKTp5/G','2018-12-04 13:40:25','2018-12-04 13:40:25'),(7,'johnDoe7@mail.com','jon7','$2b$12$/JOHXcB.jqcblDdF6Vxw3ekfoM.G8xqo8zjVpnpK4sZSlo.jZCXrO','2018-12-04 13:40:25','2018-12-04 13:40:25'),(8,'johnDoe8@mail.com','jon8','$2b$12$PdiDa.igeSHUJz8yKMPBu.1MWdzg8siJ5FO6eEcb9ckw3WqsLZJCa','2018-12-04 13:40:25','2018-12-04 13:40:25'),(9,'johnDoe9@mail.com','jon9','$2b$12$SZcPIM2RDGCpWjNT4pCyVeD8xpLegzUj0.hNj7JRcmaO61u9shpEi','2018-12-04 13:40:25','2018-12-04 13:40:25'),(10,'johnDoe10@mail.com','jon10','$2b$12$Qgg6lPiLh.Q9R1tE16vuhuqAyPl4wYr/qOBzhc8ukjm1b0NKcKSSy','2018-12-04 13:40:25','2018-12-04 13:40:25'),(11,'johnDoe11@mail.com','jon11','$2b$12$qQX.QYJFnsEbTjXClE0w7OvpAqKnvzqX8Jkxm.K4t/Wmqpb1sRS4m','2018-12-04 13:40:25','2018-12-04 13:40:25'),(12,'johnDoe12@mail.com','jon12','$2b$12$dhSo/sHh5NccVSBgHtfmNuyoMEcvJ2VldIB7f1d6g/sOvjN9/DHTm','2018-12-04 13:40:25','2018-12-04 13:40:25'),(13,'johnDoe13@mail.com','jon13','$2b$12$CgG7ryF6PbRHCdIndFuC/e7bovAw/Lt.IH0mw/6/wgnReBF9VsVmC','2018-12-04 13:40:25','2018-12-04 13:40:25'),(14,'johnDoe14@mail.com','jon14','$2b$12$bvTW63mjNcyfc1jModAhMe.XrXP0h.skOsXUEe.AB9t7JefnLckzi','2018-12-04 13:40:25','2018-12-04 13:40:25'),(15,'johnDoe15@mail.com','jon15','$2b$12$DRCbm9RmoAlsEUB4LypBIewCi2MG0Ewpnw9z4baqH5JHOH1Z8nKUe','2018-12-04 13:40:25','2018-12-04 13:40:25');
/*!40000 ALTER TABLE `users` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-12-04 14:04:27
