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
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
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
  `createdAt` datetime NOT NULL DEFAULT '2018-12-04 11:03:16',
  `updatedAt` datetime NOT NULL DEFAULT '2018-12-04 11:03:16',
  PRIMARY KEY (`id`),
  KEY `userId` (`userId`),
  CONSTRAINT `posts_ibfk_1` FOREIGN KEY (`userId`) REFERENCES `users` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `posts`
--

LOCK TABLES `posts` WRITE;
/*!40000 ALTER TABLE `posts` DISABLE KEYS */;
INSERT INTO `posts` VALUES (16,'Jerofez siseneva mira bifiwge za.','Becmi wogur rag beneri rir nu rejceh cefawo ageili zenot caze oleumi bodo zeevi.',16,'https://picsum.photos/416','2018-12-04 11:03:16','2018-12-04 11:03:16'),(17,'Si zikkiwni ahnuh rihmih vifevbo gir.','Apatonu le kuf nevnec betfa pokzin jewib vik so vimseh doso hevi gop jaswufpo lijpa biohmib.',17,'https://picsum.photos/417','2018-12-04 11:03:16','2018-12-04 11:03:16'),(18,'Wo tivade altic egjaf ewa.','Verev oj zoh gece ig koprejco ku edkek mene dijow nonca wonkod uhvupfic honsol deicujar.',18,'https://picsum.photos/418','2018-12-04 11:03:16','2018-12-04 11:03:16'),(19,'Wul miv ab awigeb obo.','Gorjib alo vagomhof emasipmo omolojaz tidbod lunva hehevsa kefhon zi meker wijmod hiodon.',19,'https://picsum.photos/419','2018-12-04 11:03:16','2018-12-04 11:03:16'),(20,'Kijog wa mifjes gowih lipil dubgu.','Fefap wip gi miv wivuk jeruwojek sucahav sastin sacatra dadzop afokici igide meap riz.',20,'https://picsum.photos/420','2018-12-04 11:03:16','2018-12-04 11:03:16'),(21,'Fov elwihpi revif pig pukape wezipkis marvo wuvof.','Ojeos jaezoit ine di atozo loceri waspam doowbo wu zoj nec gainfo vouvozet zakco wohbe wijikwo hekpeg lenuga.',21,'https://picsum.photos/421','2018-12-04 11:03:16','2018-12-04 11:03:16'),(22,'Sijaseh wihev roskolok hehun lohfon aj cogu.','Hatfofer run lit gusjis ranrenat ilru merafe hipiku cow lojliflut hoj zozire.',22,'https://picsum.photos/422','2018-12-04 11:03:16','2018-12-04 11:03:16'),(23,'Putinu ajon si tecpe egiedufa fekdej difodeero.','Kocfe redudwol hove adano diligop gaag pi pigimi muz futvob pomgi nirwi iffeal.',23,'https://picsum.photos/423','2018-12-04 11:03:16','2018-12-04 11:03:16'),(24,'Gu firos bokata su taf zinopiset.','Agaszej se ub coum di tos zisjel cemanji konwigfi gozu reev gatifu gepfa wimu age ol suzhi.',24,'https://picsum.photos/424','2018-12-04 11:03:16','2018-12-04 11:03:16'),(25,'Movnu de otudaw novfug hoj nielro mipawob di ki.','Mijmi esorat vefsi takded umlo daevi colku dohawi pareih ale mepli wa lotuj siro hir zasko zep.',25,'https://picsum.photos/425','2018-12-04 11:03:16','2018-12-04 11:03:16'),(26,'Wopfarlu isapjom ra ge.','Micod kilnoh zac maegaipi wuggo le jeljal woivi ele detpuh colgecder colvec fece ewer hicnewa logmiz.',26,'https://picsum.photos/426','2018-12-04 11:03:16','2018-12-04 11:03:16'),(27,'Vervaf buksertu mocik bokneic.','Tifehse vinikfow jomlu foav jevfes ahja sipgod so pitud ehesasdet malu gusezlo nosrod ico tine zimolehem igrafjac.',27,'https://picsum.photos/427','2018-12-04 11:03:16','2018-12-04 11:03:16'),(28,'Pepdev nac feico ufawa vovco aw colhec.','Fi mepbeh cagi av fali is missabnev me no uberi iwolinop govake.',28,'https://picsum.photos/428','2018-12-04 11:03:16','2018-12-04 11:03:16'),(29,'Apu riwewil weliz kedo umlas vakro nobif jes.','Lej igo pumam linod lehoeha ur vuzojto tegmow jein zelveb pekid me akhi diawoha tij zizo.',29,'https://picsum.photos/429','2018-12-04 11:03:16','2018-12-04 11:03:16'),(30,'Cerfew colsiv te logzu gesi vitod vesowu zigubtu.','Feve uwoman sow popcod tensosuwo feboho mimoj sos umefe peac nosohnuw ha gej nihige metu vug dogi.',30,'https://picsum.photos/430','2018-12-04 11:03:16','2018-12-04 11:03:16');
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
  `createdAt` datetime NOT NULL DEFAULT '2018-12-04 11:03:14',
  `updatedAt` datetime NOT NULL DEFAULT '2018-12-04 11:03:14',
  PRIMARY KEY (`id`),
  UNIQUE KEY `id` (`id`),
  UNIQUE KEY `email` (`email`),
  UNIQUE KEY `username` (`username`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=utf8;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `users`
--

LOCK TABLES `users` WRITE;
/*!40000 ALTER TABLE `users` DISABLE KEYS */;
INSERT INTO `users` VALUES (16,'johnDoe0@mail.com','jon0','$2b$12$yBOxVkOyEmALN9cWnT91f.fpWuH0b35NYRpaV5As14Evx0VBKHlWe','2018-12-04 11:03:14','2018-12-04 11:03:14'),(17,'johnDoe1@mail.com','jon1','$2b$12$0Wz1DUFeNn7N25mjEqhpZ.v01rR44TGDecFyaG3GCGUh1zpbhp0Hy','2018-12-04 11:03:14','2018-12-04 11:03:14'),(18,'johnDoe2@mail.com','jon2','$2b$12$pXeOmjwtQCmnw0XjRvPw.uWKnqTKZ4AchHr9N4yH4C8kupJU.OXqi','2018-12-04 11:03:14','2018-12-04 11:03:14'),(19,'johnDoe3@mail.com','jon3','$2b$12$aCb6VyJCCDKBJulqIlXI/ebLcf6xavKmSm/qhm80GtQdFrLYXG2kG','2018-12-04 11:03:14','2018-12-04 11:03:14'),(20,'johnDoe4@mail.com','jon4','$2b$12$LIvV1SFtbapX28ZShfkjt.uIujK34oT3XOrMYt8MH51XG5NRyibjO','2018-12-04 11:03:14','2018-12-04 11:03:14'),(21,'johnDoe5@mail.com','jon5','$2b$12$EO6xVqqQZ3kPhbggWZ5Br.VSlw/m5EwJ3gbO6OD7Imeejxk2skj7O','2018-12-04 11:03:14','2018-12-04 11:03:14'),(22,'johnDoe6@mail.com','jon6','$2b$12$yDZCzPMsQu1r53FePBcbZOUULxlYHTJbb6uDnS1mGnEAEJdtYqJE2','2018-12-04 11:03:14','2018-12-04 11:03:14'),(23,'johnDoe7@mail.com','jon7','$2b$12$Iay7wJOzRcN2t7QZcwUhXuKIhLmzbMlYkl4.h3//rUQDqXTKvaK7C','2018-12-04 11:03:14','2018-12-04 11:03:14'),(24,'johnDoe8@mail.com','jon8','$2b$12$LAr3AwrUlububr3d8o/8BONRvmnUI8LFg1BbOeIn.wnISd9nwud6u','2018-12-04 11:03:14','2018-12-04 11:03:14'),(25,'johnDoe9@mail.com','jon9','$2b$12$fUdwNkfWNhOa6dlqmYo6Jen5mjirp/tNV76jFDhbML6gmnKhvfcCK','2018-12-04 11:03:14','2018-12-04 11:03:14'),(26,'johnDoe10@mail.com','jon10','$2b$12$y6Zb8X3QPcxWrOmcscO.nOUqB5Cr0gbgLf4AmA5KqgKvgwojH2Sqe','2018-12-04 11:03:14','2018-12-04 11:03:14'),(27,'johnDoe11@mail.com','jon11','$2b$12$bdTz0oP37tysMHErOM1svOtRtIpBNoU/uKrFKot3b4K54QQ2ahjgi','2018-12-04 11:03:14','2018-12-04 11:03:14'),(28,'johnDoe12@mail.com','jon12','$2b$12$fGM/2VpIP4EPEdno9S2xquez1NBAY9ax/KEVQS4/mgQUixnPQMybK','2018-12-04 11:03:14','2018-12-04 11:03:14'),(29,'johnDoe13@mail.com','jon13','$2b$12$k3RV0Oon7Agm4rjYfw2a5ubMEO4qnBLunixo18AdabmsVXvP/K5AW','2018-12-04 11:03:14','2018-12-04 11:03:14'),(30,'johnDoe14@mail.com','jon14','$2b$12$bvmKj6MHpiyyO2v3dv127eag7dhVkReXGPIsgUcs.1AoimdmsdzzO','2018-12-04 11:03:14','2018-12-04 11:03:14');
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

-- Dump completed on 2018-12-04 12:30:25
