CREATE DATABASE  IF NOT EXISTS `ecommerce` /*!40100 DEFAULT CHARACTER SET utf8 */;
USE `ecommerce`;
-- MySQL dump 10.16  Distrib 10.1.26-MariaDB, for debian-linux-gnu (x86_64)
--
-- Host: localhost    Database: ecommerce
-- ------------------------------------------------------
-- Server version	10.1.26-MariaDB-0+deb9u1

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
-- Table structure for table `client`
--

DROP TABLE IF EXISTS `client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `client` (
  `id_client` int(11) NOT NULL AUTO_INCREMENT,
  `date_inscription_client` datetime NOT NULL,
  `nom_client` varchar(255) NOT NULL,
  `prenom_client` varchar(255) DEFAULT NULL,
  `sexe_client` char(1) DEFAULT NULL,
  `mail_client` varchar(255) NOT NULL,
  `tel_client` varchar(25) DEFAULT NULL,
  `date_naissance_client` datetime DEFAULT NULL,
  `adresse_client` varchar(255) DEFAULT NULL,
  `code_postal_client` int(11) DEFAULT '0',
  `ville_client` varchar(255) DEFAULT NULL,
  `pays_client` varchar(255) DEFAULT NULL,
  `commentaire_client` varchar(1000) DEFAULT NULL,
  `mdp_client` varchar(25) NOT NULL,
  PRIMARY KEY (`id_client`),
  UNIQUE KEY `mail_client` (`mail_client`)
) ENGINE=InnoDB AUTO_INCREMENT=12112 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `client`
--

LOCK TABLES `client` WRITE;
/*!40000 ALTER TABLE `client` DISABLE KEYS */;
INSERT INTO `client` VALUES (10,'2005-11-24 22:11:00','Skywalker','Luke','h','luke@jedi.com','0836656565','1977-06-05 00:00:00','3 rue de la grotte ',29666,'Jedicity','Dagobah','pas de sonnette, merci de crier devant la grotte','loveuyoda'),(11,'2003-02-12 13:22:00','Organa','Leia','f','leia@resistance.com','0935846267','1977-06-05 00:00:00','2045 rue de la citadelle ',35922,'le_village','Coruscant','appt 25864','loveuhan'),(12,'2017-03-05 10:05:00','Leponge','Bob','h','bob@spontex.com','0235484542','1990-02-21 00:00:00','122 rue des conques ',2385,'Bikini Bottom','ocean pacifique','code porte 0204','plouf'),(13,'2014-02-26 00:00:00','Lennon','John','h','letitbe@gmail.com','855-566-241','1940-10-09 00:00:00','251 Menlove Avenue',26448,'Londres','Royaume uni',NULL,'yoko'),(14,'2010-11-01 00:00:00','Manson','Marilyn','h','suicide@666.com','551-004-648','1969-01-05 00:00:00','666 rue du bonheur',26485,'Los Angeles','USA',NULL,'mobscene'),(20,'2017-05-12 00:00:00','FOURNIER','David','H','fournier.david@gmail.com','0664251485','1994-05-29 00:00:00','37 rue Fontaine',76710,'Montville','France',NULL,'gzfgze'),(21,'2014-01-26 00:00:00','LAURENT','Stephanie','F','laurent.stephanie@gmail.com','0754126845','1959-04-10 00:00:00','12, rue Bohars',29200,'Brest','France',NULL,'bzergz'),(24,'2015-03-26 00:00:00','LEPRINCE','Anais','F','leprince.anais@gmail.com','0653209758','1991-06-29 00:00:00','3 rue des jardins',20200,'Bastia','France',NULL,'bergzr'),(30,'2017-05-18 00:00:00','DUPONT','Marcel','H','dupont.marcel@gmail.com','0665241578','1988-09-13 00:00:00','15 allée Marceau',76000,'Rouen','France',NULL,'fzefz'),(31,'2015-09-24 00:00:00','LEROY','Jean','H','leroy.jean@gmail.com','0664152348','1975-04-12 00:00:00','282 bd St Germain',75007,'Paris','France',NULL,'fzgzra'),(32,'2014-02-27 00:00:00','MOREAU','Michelle','F','moreau.michelle@gmail.com','0714542635','1985-12-05 00:00:00','18, rue Baudin Place Charras',92400,'Courbevoie','France',NULL,'zvrgvrz'),(33,'2011-05-19 00:00:00','DURAND','Melanie','F','durand.melanie@gmail.com','0668542195','1988-09-26 00:00:00','4, rue danton',75006,'Paris','France',NULL,'vzfezfez'),(34,'2016-08-18 00:00:00','MOREL','Olivier','H','morel.olivier@gmail.com','0616574862','1967-05-24 00:00:00','74 rue St Nicolas',76000,'Rouen','France',NULL,'dazdaef'),(50,'2018-05-12 22:22:22','Oussama','Faihrir','M','oussama.faihrir@gmail.com','0607080910','1994-06-01 00:00:00','8 rue de la poutre',76000,'Rouen','France','oui','azer1234'),(51,'2018-05-13 22:22:23','Golet','Jerry','M','jery.golet@gmail.com','0607080911','1994-06-02 00:00:00','8 rue de la foutre',76320,'Paris','Californie','oui','tyui1234'),(52,'2018-05-13 22:22:24','Christ','Jesus','M','geoffroy.aupied@gmail.com','0607080912','0000-00-00 00:00:00','8 rue rue',76000,'Washington','Corée_du_Nord','oui','azer1234'),(53,'2018-05-15 22:22:25','Troud','Noemie','F','noemie.troud@gmail.com','0607080913','0594-06-01 00:00:00','8 rue de la loutre',76000,'Bordeaux','Irlande','oui','azer1234'),(54,'2018-05-15 22:22:26','Bal','Christian','M','christian.bal@gmail.com','0607080914','1994-06-01 00:00:00','8 rue de la boutre',76000,'Geneve','Irak','oui','azer1234'),(60,'2015-10-12 00:00:00','lane','lois','f','jesuisindecis@plop.com','223459848','1980-01-12 00:00:00','11 rue de la chieuse',90000,'metropolis','france je crois','aime un homme au gout bizarre','jesuissexy'),(61,'2010-10-12 00:00:00','starky','hoch','h','jesuisindecisq@plop.com','223459878','1988-01-12 00:00:00','11 rueduviellard',90000,'oublié','france je crois','paria','tyuiop789'),(62,'2012-10-12 00:00:00','sulivan','cloe','f','jesuisindecissss@plop.com','223459178','1986-01-12 00:00:00','11 rue du cadavre',90000,'metropolis','france je crois','morte','jevaismourir'),(63,'2016-10-12 00:00:00','kent','clark','h','jesuisindeciss@plop.com','223459869','1984-01-12 00:00:00','11 rue de la grande folle',90000,'metropolis','france je crois','homme en collant.....étrange','jesuismauvaise'),(64,'2017-10-12 00:00:00','phenix','marcus','h','jesuisindecimm@plop.com','223459896','1982-01-12 00:00:00','11 rue du bg',90000,'terra','france je crois','champion de la CGU','tyuiop784'),(70,'2012-06-23 00:00:00','cul','jean','H','WTF@HOTMAIL.COM','0123456789','1800-04-12 00:00:00','45 sans vie',69000,'DTC','FRANCE','client regulier','RIENAFOUTRE69'),(71,'2000-05-25 00:00:00','bil','mireille','F','BIMI@HOTMAIL.FR','013216789','2012-08-12 00:00:00','54 jaimetout',34000,'ouca','FRANCE','client ocassion','bellevie'),(72,'1900-05-06 00:00:00','poil','rasé','H','PR@live.FR','06785389','2000-08-12 00:00:00','21 sans poil',27000,'rasoir','FRANCE','client rare','GILLETTE'),(73,'1987-03-25 00:00:00','paul','PIERRETTE','F','papier@HOTMAIL.FR','017656789','2017-12-12 00:00:00','32 boulevard de gaulle',64000,'oups','FRANCE','client premium','WW2'),(74,'1990-01-25 00:00:00','ROI','ARTHUR','H','CAMELOT@GMAIL.COM','01342356','0250-08-12 00:00:00','33 SAINT GRAAL',1000,'KARMELITE','FRANCE','client basique','excalibur'),(80,'2017-06-15 15:24:35','Auboisdormant','Abel','H','abeladressemail@youhou.com','0658974536','1958-05-14 00:00:00','rue de la rue pres de la rue',76000,'Rouen','France','wess bien ta vu!!!','123456'),(81,'2016-03-14 12:35:59','Biensucé','Emma','F','emmavdm@gmail.com','0168947861','1980-09-29 00:00:00','rue du chemin',75000,'Paris','France','j\'aime les pommes, mais pas que!!','654321'),(82,'2018-01-27 23:59:14','okardetour','ademar','S','vroomvroom@tuture.fr','0461384678','1998-04-03 00:00:00','avenue martin',69000,'Lyon','France','j\'aime les hommes','987654'),(83,'2017-05-26 00:03:57','Yotine','Guy','H','c\'estpluscommeguy@pierre.com','0106487412','1978-02-28 00:00:00','rie du barrage',75000,'Paris','France','va faire tout noir!!','456789'),(84,'2016-07-09 15:56:47','Diote','Kelly','F','diote@gmail.com','0648759135','1956-08-30 00:00:00','rue de la marmite',33000,'Bordeaux','France','je ne sais pas quoi dire','123987'),(100,'2017-11-11 00:00:00','Faran','Jomaken','M','JomakenFaran@Nomail.com','0102030405','1981-11-11 00:00:00','100 Rue de l arcantraz',66099,'Nowhere','Noland','Omae...','Brazemaran'),(101,'2017-11-11 00:00:00','Joanat','Jomaken','F','JomakenJoanat@Nomail.com','0102030402','1981-11-11 00:00:00','100 Rue de l arcantraz',66099,'Nowhere','Noland','wa...','wombocombo'),(102,'2017-11-11 00:00:00','Domaran','Dremeria','M','DomarianDremeria@Nomail.com','0102030404','1981-11-11 00:00:00','102 Rue de l arcantraz',66099,'Nowhere','Noland',' mo...','iamgroot'),(103,'2017-11-11 00:00:00','Yshtola','Rhul','F','YshtolaRhul@Linkshell.ez','0102030407','1981-11-11 00:00:00','103 Rue de l arcantraz',66987,'Nowhere','Noland','shin...','Thanosdidnothingwrong'),(104,'2017-11-11 00:00:00','Saoran','Jzan','M','SaoranJzan@Somalink.ss','0102030408','1981-11-11 00:00:00','104 Rue de l arcantraz',66987,'Nowhere','Noland','deiru','Youknownothing'),(110,'2018-01-02 23:14:32','auchon','paul','h','paul.auchon.moelleux@afpa.fr','0617459863','1974-06-04 00:00:00','17 rue du matelas gonflable',95100,'Le Lit','fr','n\'est pas forcément un connard selon stéphane...','polo'),(111,'2017-04-25 12:14:33','minou','zazaza','f','monstreetcie@afpeur.mp','+0045616598357','1996-12-25 00:00:00','14 rue du père noel',0,'monstro-Polis','mp','possible de trouver pikachu dans la centrale électrique','zaza'),(112,'2018-06-14 03:00:00','iwillsurvive','france','f','france98@nostalgique.fr','0623638954','1998-06-12 00:00:00','03 avenue deschamps',92000,'stade de france','fr','et un, et deux et trois ZERO','0123'),(113,'2017-12-12 03:47:36','poutine','vlad','h','vavoirailleurssijysuis@bang.ru',NULL,'1954-12-22 00:00:00','1 avenue du congélateur',13000,'marseille','fr','livraison casino de marseille contact Mr Machoir d\'acier','hitman'),(114,'2018-04-17 09:12:32','larousse','titine','f','celle_de_la_cantine@afpa.fr','0669696969','1990-10-04 00:00:00','169 rue de la poupée gonflable',69000,'Lit yon','fr','ressemble à s\'y méprendre à un tableau de picasso','rougealevre'),(115,'2018-02-02 22:18:29','ptitegoutte','justine','f','etcorineptitegoutte@blagounn.ette','0800141414','1981-09-23 00:00:00','13 voie de la gueulle à fioul',27230,'poivro','fr','elle nest pas très .NET','asp'),(116,'2018-05-29 10:59:01','mitissus','milaine','f','aufildelacouture@labocouture.fr','0236985475','1963-03-27 00:00:00','1 rue de la botte de foin ',45620,'aiguille','fr','elle picote un peu celle la','picnikdouille'),(117,'2017-11-11 16:45:32','trompe','donald','h','catrumpenormement@usa.us',NULL,'1950-02-28 00:00:00','99th street',0,'baton rouge','us','il est vraiment... loin celui la...','boutonrouge'),(118,'2017-10-25 17:17:17','null','celine','f','celine.null@afpa.fr','0217559853','1968-12-04 00:00:00','69 rue de jean rené',22360,'casserol','fr',NULL,'dion'),(119,'2018-01-02 21:23:45','deere','john','h','tracteur@lechamp.com',NULL,'1974-06-04 00:00:00','14 champs à droite du premier',76600,'campagnol en caux','fr','la terre c\'est les affaires','agri'),(130,'2017-06-12 00:06:28','dupont','alain','M','bgdf@gmail.com','0625854218','1992-02-01 00:00:00','6 rue verte',92600,'colombes','france','aghdcaghcbaghk','1234'),(131,'2017-09-05 14:35:21','jean','luc','M','abcd@gmail.fr','0125897642','0000-00-00 00:00:00','42 rue couture',76800,'saint etienne du rouvray','france','azertyuio','4567'),(132,'2018-01-02 16:00:00','charles','henry','M','qsd@hotmail.fr','0521467896','1965-09-08 00:00:00','55 avenue du buisson',65800,'brest','france','wxcvbnhgj','7896'),(134,'2018-04-06 18:00:00','sertq','aline','F','wxcvb@lapo.net','0412457836','1996-07-25 00:00:00','13 rue jaune',33025,'bordeaux','france','mpolkiujhy','2587'),(140,'2015-01-01 00:00:00','Sifredi','Rocco','M','Rocco@live.fr','0669696969','1977-10-18 00:00:00','12 Rue de la pine',69699,'Milan','Italie','Pornstar','zizitoutdur'),(141,'2015-01-02 00:00:00','Stark','Tony','M','tonystark@avengers.com','9658745212','1956-10-07 00:00:00','Stark Tower',911,'New-York','Etats-Unis','Héros','starkisthebest'),(142,'2015-01-03 00:00:00','Rodgers','Steeve','M','Steeve@avengers.com','8798684167','1920-01-01 00:00:00','Brooklyn',911,'New-York','Etats-Unis','Héros','captainforever'),(143,'2015-01-04 00:00:00','Romanoff','Natasha','F','natasha@avengers.com','2648843187','1985-01-01 00:00:00','Kremlin',117,'Moscou','Russie','Héros','cuircuirnichon'),(144,'2015-01-05 00:00:00','Barton','Clint','M','clintbarton@avengers.com','6418688134','1985-01-01 00:00:00','Barton\'s Ranch',5614,'Hope City','Etats-Unis','Héros','bowforever'),(12010,'2015-01-05 00:00:00','Royer','Chloé','F','chloe.royer@gmail.com','','0000-00-00 00:00:00','chez papa',76190,'Croixmare','France','la plus grande','aucun'),(12011,'2015-01-05 00:00:00','Royer','Léa','F','lea.royer@gmail.com','','0000-00-00 00:00:00','chez papa',76190,'Croixmare','France','la plus petite','aucun'),(12012,'2015-01-05 00:00:00','Royer','Joris','H','joris.royer@gmail.com','','0000-00-00 00:00:00','dans maman',0,'','','pas encore né','aucun'),(12013,'2015-01-05 00:00:00','Royer','Jonathan','H','jonathan.royer@gmail.com','','0000-00-00 00:00:00','le patriarche',76190,'Croixmare','France','le boss','aucun'),(12014,'2015-01-05 00:00:00','Royer','Fripouille','H','fripouille.royer@gmail.co','','0000-00-00 00:00:00','un peu partout',0,'','France','le chat','aucun'),(12020,'2018-07-13 12:00:00','test','test','H','guest_2018-07-13_16:08:35','',NULL,'',0,'','','',''),(12063,'2018-09-01 09:57:14','guest_2018-09-01_09:57:14',NULL,NULL,'guest_2018-09-01_09:57:14',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12064,'2018-09-01 16:50:30','guest_2018-09-01_16:50:30',NULL,NULL,'guest_2018-09-01_16:50:30',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12065,'2018-09-01 16:52:16','guest_2018-09-01_16:52:16',NULL,NULL,'guest_2018-09-01_16:52:16',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12066,'2018-09-01 16:55:45','guest_2018-09-01_16:55:45',NULL,NULL,'guest_2018-09-01_16:55:45',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12067,'2018-09-01 16:57:10','guest_2018-09-01_16:57:10',NULL,NULL,'guest_2018-09-01_16:57:10',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12068,'2018-09-01 16:57:41','guest_2018-09-01_16:57:41',NULL,NULL,'guest_2018-09-01_16:57:41',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12069,'2018-09-01 16:57:45','guest_2018-09-01_16:57:45',NULL,NULL,'guest_2018-09-01_16:57:45',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12070,'2018-09-01 17:01:13','guest_2018-09-01_17:01:13',NULL,NULL,'guest_2018-09-01_17:01:13',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12071,'2018-09-01 17:01:14','guest_2018-09-01_17:01:14',NULL,NULL,'guest_2018-09-01_17:01:14',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12072,'2018-09-01 17:02:21','guest_2018-09-01_17:02:21',NULL,NULL,'guest_2018-09-01_17:02:21',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12073,'2018-09-01 17:03:58','guest_2018-09-01_17:03:58',NULL,NULL,'guest_2018-09-01_17:03:58',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12074,'2018-09-01 17:04:00','guest_2018-09-01_17:04:00',NULL,NULL,'guest_2018-09-01_17:04:00',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12075,'2018-09-01 17:04:13','guest_2018-09-01_17:04:13',NULL,NULL,'guest_2018-09-01_17:04:13',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12076,'2018-09-01 17:04:32','guest_2018-09-01_17:04:32',NULL,NULL,'guest_2018-09-01_17:04:32',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12077,'2018-09-01 21:20:29','guest_2018-09-01_21:20:29',NULL,NULL,'guest_2018-09-01_21:20:29',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12078,'2018-09-01 21:21:01','guest_2018-09-01_21:21:01',NULL,NULL,'guest_2018-09-01_21:21:01',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12079,'2018-09-01 23:20:31','guest_2018-09-01_23:20:31',NULL,NULL,'guest_2018-09-01_23:20:31',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12080,'2018-09-02 10:40:58','guest_2018-09-02_10:40:58',NULL,NULL,'guest_2018-09-02_10:40:58',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12081,'2018-09-02 10:50:14','guest_2018-09-02_10:50:14',NULL,NULL,'guest_2018-09-02_10:50:14',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12082,'2018-09-02 10:51:23','guest_2018-09-02_10:51:23',NULL,NULL,'guest_2018-09-02_10:51:23',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12083,'2018-09-02 10:52:33','guest_2018-09-02_10:52:33',NULL,NULL,'guest_2018-09-02_10:52:33',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12084,'2018-09-02 10:54:14','guest_2018-09-02_10:54:14',NULL,NULL,'guest_2018-09-02_10:54:14',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12085,'2018-09-02 10:57:42','guest_2018-09-02_10:57:42',NULL,NULL,'guest_2018-09-02_10:57:42',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12086,'2018-09-02 11:06:55','guest_2018-09-02_11:06:55',NULL,NULL,'guest_2018-09-02_11:06:55',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12087,'2018-09-02 11:47:39','guest_2018-09-02_11:47:39',NULL,NULL,'guest_2018-09-02_11:47:39',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12088,'2018-09-02 12:19:37','guest_2018-09-02_12:19:37',NULL,NULL,'guest_2018-09-02_12:19:37',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12089,'2018-09-02 12:26:12','guest_2018-09-02_12:26:12',NULL,NULL,'guest_2018-09-02_12:26:12',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12090,'2018-09-02 12:26:36','guest_2018-09-02_12:26:36',NULL,NULL,'guest_2018-09-02_12:26:36',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12091,'2018-09-02 12:28:37','guest_2018-09-02_12:28:37',NULL,NULL,'guest_2018-09-02_12:28:37',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12092,'2018-09-02 12:30:16','guest_2018-09-02_12:30:16',NULL,NULL,'guest_2018-09-02_12:30:16',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12093,'2018-09-02 12:43:14','guest_2018-09-02_12:43:14',NULL,NULL,'guest_2018-09-02_12:43:14',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12094,'2018-09-02 12:43:16','guest_2018-09-02_12:43:16',NULL,NULL,'guest_2018-09-02_12:43:16',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12095,'2018-09-02 12:43:59','guest_2018-09-02_12:43:59',NULL,NULL,'guest_2018-09-02_12:43:59',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12096,'2018-09-02 12:45:26','guest_2018-09-02_12:45:26',NULL,NULL,'guest_2018-09-02_12:45:26',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12097,'2018-09-02 12:45:55','guest_2018-09-02_12:45:55',NULL,NULL,'guest_2018-09-02_12:45:55',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12098,'2018-09-02 12:48:37','guest_2018-09-02_12:48:37',NULL,NULL,'guest_2018-09-02_12:48:37',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12099,'2018-09-02 12:49:42','guest_2018-09-02_12:49:42',NULL,NULL,'guest_2018-09-02_12:49:42',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12100,'2018-09-02 12:56:55','guest_2018-09-02_12:56:55',NULL,NULL,'guest_2018-09-02_12:56:55',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12101,'2018-09-02 12:58:05','guest_2018-09-02_12:58:05',NULL,NULL,'guest_2018-09-02_12:58:05',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12102,'2018-09-02 13:09:57','guest_2018-09-02_13:09:57',NULL,NULL,'guest_2018-09-02_13:09:57',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12103,'2018-09-02 13:11:37','guest_2018-09-02_13:11:37',NULL,NULL,'guest_2018-09-02_13:11:37',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12104,'2018-09-02 13:14:58','guest_2018-09-02_13:14:58',NULL,NULL,'guest_2018-09-02_13:14:58',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12105,'2018-09-02 13:39:13','guest_2018-09-02_13:39:13',NULL,NULL,'guest_2018-09-02_13:39:13',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12106,'2018-09-02 13:47:20','guest_2018-09-02_13:47:20',NULL,NULL,'guest_2018-09-02_13:47:20',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12107,'2018-09-02 14:22:45','guest_2018-09-02_14:22:45',NULL,NULL,'guest_2018-09-02_14:22:45',NULL,NULL,NULL,0,NULL,NULL,NULL,'guest_mdp'),(12108,'2018-09-06 10:15:19','mon_nom','mon_prenom','h','mail_bidon','','0000-00-00 00:00:00','',0,'','','','mon_pass'),(12111,'2018-09-06 11:25:59','test','','H','test@test','','2018-09-10 12:00:00','',0,'','',NULL,'test');
/*!40000 ALTER TABLE `client` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`jojo`@`localhost`*/ /*!50003 trigger tg_insert_client_after after insert on client for each row
begin
	if (isnull(new.prenom_client)) then
		set @id_statut_param = (select id_statut_client from statut_client where lib_statut_client='guest');		
	else
		set @id_statut_param = (select id_statut_client from statut_client where lib_statut_client='classic');        
	end if;
    call sp_insert_histo_client(new.id_client, @id_statut_param);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`jojo`@`localhost`*/ /*!50003 trigger tg_delete_client_guest before delete on client for each row
begin
    set @idCommande=-1;
    set @idCommandePanier = (select commande.id_commande from client, histo_client, statut_client, commande, histo_commande, statut_commande
						where client.id_client=histo_client.id_client
                        and histo_client.id_statut_client=statut_client.id_statut_client
                        and commande.id_commande=histo_commande.id_commande
						and histo_commande.id_statut_commande=statut_commande.id_statut_commande
						and lib_statut_commande='panier'
                        and statut_client.lib_statut_client='guest'
                        and commande.id_client=old.id_client);
	if (@idCommandePanier <>-1) then
		delete from commande where id_commande=@idCommandePanier;
	end if;
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `commande`
--

DROP TABLE IF EXISTS `commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande` (
  `id_commande` int(11) NOT NULL AUTO_INCREMENT,
  `remise_globale` decimal(5,4) DEFAULT NULL,
  `date_creation_commande` datetime DEFAULT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_commande`),
  KEY `FK_commande_id_client` (`id_client`)
) ENGINE=InnoDB AUTO_INCREMENT=123545 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande`
--

LOCK TABLES `commande` WRITE;
/*!40000 ALTER TABLE `commande` DISABLE KEYS */;
INSERT INTO `commande` VALUES (1,0.0000,'2018-06-11 00:00:00',71),(2,0.1000,'2018-06-12 00:00:00',74),(3,0.2000,'2018-06-12 00:00:00',72),(10,0.0000,'2018-06-12 13:00:00',13),(11,0.0000,'2016-08-22 22:30:00',14),(12,0.0000,'2017-10-10 10:21:00',10),(13,0.0000,'2015-02-21 09:03:00',11),(25,0.0500,'2018-05-27 00:00:00',21),(26,0.0500,'2018-06-12 00:00:00',22),(27,0.0000,'2017-12-10 00:00:00',24),(30,0.0000,'2018-05-14 00:00:00',33),(31,0.0000,'2018-06-01 00:00:00',30),(32,0.0000,'2018-03-18 00:00:00',31),(33,0.0000,'2017-02-16 00:00:00',34),(34,0.0000,'2018-01-28 00:00:00',32),(61,0.0000,'2018-10-05 00:00:00',62),(80,NULL,'2017-05-26 14:00:15',80),(81,NULL,'2017-06-26 14:00:15',84),(82,NULL,'2018-02-20 14:25:54',82),(100,0.0000,'2017-11-11 17:00:00',100),(110,0.2000,'2018-01-02 23:17:32',110),(111,0.0000,'2018-06-12 01:12:13',114),(130,0.1500,'2018-01-02 02:05:23',130),(131,0.0000,'2018-01-15 15:26:32',130),(132,0.2000,'2018-01-31 09:25:32',131),(133,0.0000,'2018-02-01 07:54:28',131),(134,0.0000,'2018-02-01 09:12:25',132),(135,0.0000,'2018-03-01 22:53:29',133),(136,0.0000,'2018-03-15 13:58:55',133),(137,0.1500,'2018-03-25 17:25:49',133),(138,0.0000,'2018-04-06 22:59:38',134),(139,0.2000,'2018-04-13 21:20:33',134),(140,0.0000,'2018-06-12 00:00:00',140),(141,0.0000,'2018-06-12 00:00:00',141),(12010,NULL,'2018-06-11 00:00:00',12010),(12011,NULL,'2018-06-12 00:00:00',12011),(12012,NULL,'2018-01-01 00:00:00',12012),(12013,NULL,'2018-01-01 00:00:00',12012),(12014,NULL,'2018-06-06 00:00:00',12010),(123456,9.9999,'2018-06-12 00:00:00',52),(123494,0.5000,'2018-07-15 09:20:05',60),(123513,NULL,'2018-09-01 09:57:14',12063),(123514,NULL,'2018-09-01 23:20:31',12079),(123515,NULL,'2018-09-02 10:40:58',12080),(123516,NULL,'2018-09-02 10:50:14',12081),(123517,NULL,'2018-09-02 10:51:23',12082),(123518,NULL,'2018-09-02 10:52:33',12083),(123519,NULL,'2018-09-02 10:54:14',12084),(123520,NULL,'2018-09-02 10:57:42',12085),(123521,NULL,'2018-09-02 11:06:55',12086),(123522,NULL,'2018-09-02 11:47:39',12087),(123523,NULL,'2018-09-02 12:19:37',12088),(123524,NULL,'2018-09-02 12:26:12',12089),(123525,NULL,'2018-09-02 12:26:36',12090),(123526,NULL,'2018-09-02 12:28:37',12091),(123527,NULL,'2018-09-02 12:30:16',12092),(123528,NULL,'2018-09-02 12:43:14',12093),(123529,NULL,'2018-09-02 12:43:16',12094),(123530,NULL,'2018-09-02 12:43:59',12095),(123531,NULL,'2018-09-02 12:45:26',12096),(123532,NULL,'2018-09-02 12:45:55',12097),(123533,NULL,'2018-09-02 12:48:37',12098),(123534,NULL,'2018-09-02 12:49:42',12099),(123535,NULL,'2018-09-02 12:56:55',12100),(123536,NULL,'2018-09-02 12:58:05',12101),(123537,NULL,'2018-09-02 13:09:58',12102),(123538,NULL,'2018-09-02 13:11:37',12103),(123539,NULL,'2018-09-02 13:14:58',12104),(123540,NULL,'2018-09-02 13:39:13',12105),(123541,NULL,'2018-09-02 13:47:20',12106),(123542,NULL,'2018-09-02 14:22:45',12107),(123543,NULL,'2018-09-06 10:16:05',60),(123544,NULL,'2018-09-06 10:16:45',60);
/*!40000 ALTER TABLE `commande` ENABLE KEYS */;
UNLOCK TABLES;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
/*!50003 CREATE*/ /*!50017 DEFINER=`jojo`@`localhost`*/ /*!50003 trigger tg_insert_commande_after after insert on commande for each row
begin
	set @idCommande=(select new.id_commande);
    if (isnull(@idCommande)||@idCommande) then
		set @id_statut_param = (select id_statut_commande from statut_commande where lib_statut_commande='panier');
	else
		set @id_statut_param = (select id_statut_commande from statut_commande where lib_statut_commande='selection');
	end if;	
    call sp_insert_histo_commande(@idCommande, @id_statut_param);
end */;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Table structure for table `commande_produit`
--

DROP TABLE IF EXISTS `commande_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `commande_produit` (
  `quantite_produit` int(11) NOT NULL,
  `prix_HT_unitaire_debut` decimal(15,3) DEFAULT NULL,
  `remise_appliquee` decimal(5,4) NOT NULL,
  `tva_appliquee` decimal(5,4) NOT NULL,
  `prix_TTC_unitaire_final` decimal(15,3) DEFAULT NULL,
  `id_commande` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_commande`,`id_produit`),
  KEY `FK_commande_produit_id_produit` (`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `commande_produit`
--

LOCK TABLES `commande_produit` WRITE;
/*!40000 ALTER TABLE `commande_produit` DISABLE KEYS */;
INSERT INTO `commande_produit` VALUES (0,NULL,0.0000,0.0000,10.900,1,70),(0,NULL,0.1000,0.0000,50.000,1,75),(0,NULL,0.0000,0.0000,9.000,2,78),(0,NULL,0.1000,0.0000,13.000,3,79),(0,NULL,0.0000,0.0000,14.990,25,22),(0,NULL,0.0000,0.0000,16.900,26,26),(0,NULL,0.0000,0.0000,44.490,27,24),(0,NULL,0.0600,0.0000,35.720,30,33),(0,NULL,0.0000,0.0000,144.000,31,34),(15,NULL,0.0000,0.0000,116.050,32,30),(0,NULL,0.0000,0.0000,108.000,33,31),(0,NULL,0.0000,0.0000,15.750,34,36),(0,NULL,0.0000,0.0000,111.240,60,60),(0,NULL,0.0000,0.0000,250.000,61,61),(0,NULL,0.0000,0.0000,19.200,80,87),(0,NULL,0.0000,0.0000,24.000,80,88),(0,NULL,0.0000,0.0000,168.000,81,85),(0,NULL,0.0000,0.0000,12.000,82,80),(0,NULL,0.0000,0.0000,7.385,82,82),(0,NULL,0.0000,0.0000,15.000,82,83),(0,NULL,0.0000,0.0000,14.400,82,84),(0,NULL,0.0000,0.0000,12.000,100,104),(0,NULL,0.0000,0.0000,12.000,100,106),(0,NULL,0.0000,0.0000,9.000,110,113),(0,NULL,0.0000,0.0000,9.000,110,115),(0,NULL,0.0000,0.0000,1300.000,111,110),(0,NULL,0.0000,0.0000,54.250,130,131),(0,NULL,0.0000,0.0000,45.900,130,134),(0,NULL,0.0000,0.0000,45.900,131,134),(0,NULL,0.0000,0.0000,21.650,131,138),(0,NULL,0.0000,0.0000,45.900,131,139),(0,NULL,0.0000,0.0000,13.200,132,132),(0,NULL,0.0000,0.0000,25.900,133,136),(0,NULL,0.0000,0.0000,54.250,134,130),(0,NULL,0.0000,0.0000,25.600,134,132),(0,NULL,0.0000,0.0000,12.850,135,133),(0,NULL,0.0000,0.0000,25.900,136,135),(0,NULL,0.0000,0.0000,12.900,137,137),(0,NULL,0.0000,0.0000,21.650,137,138),(0,NULL,0.0000,0.0000,25.900,138,135),(0,NULL,0.0000,0.0000,18.900,138,136),(0,NULL,0.0000,0.0000,12.850,139,133),(0,NULL,0.0000,0.0000,NULL,12010,12010),(0,NULL,0.0000,0.0000,NULL,12010,12011),(0,NULL,0.0000,0.0000,NULL,12010,12013),(0,NULL,0.0000,0.0000,NULL,12013,12010),(0,NULL,0.0000,0.0000,NULL,12013,12012),(0,NULL,0.0000,0.0000,NULL,12014,12010),(20,20.000,0.0000,0.0550,21.100,12106,69),(30,25.000,0.0000,0.2000,30.000,123494,14),(30,30.000,0.0000,0.2000,36.000,123494,15),(1,14.990,0.0000,0.2000,17.988,123494,21),(1,34.990,0.0000,0.2000,41.988,123494,25),(30,16.900,0.0000,0.0550,17.830,123494,26),(25,22.000,0.0000,0.2000,26.400,123494,30),(30,7.000,0.0000,0.0550,7.385,123494,32),(30,12.000,0.0550,0.0500,11.907,123494,33),(30,58.000,0.0000,0.2000,69.600,123494,62),(5,40.000,0.0000,0.2000,48.000,123494,67),(11,10.000,0.0000,0.2000,12.000,123494,68),(2,20.000,0.0000,0.0550,21.100,123494,69),(1,10.900,0.0000,0.2000,13.080,123494,70),(1,10.000,0.0000,0.2000,12.000,123494,80),(1,15.000,0.0000,0.2000,18.000,123494,81),(2,10.000,0.0000,0.0000,10.000,123494,106),(3,10.000,0.0000,0.0000,10.000,123494,109),(2,15.990,0.0000,0.2000,19.188,123494,111),(1,14.990,0.0000,0.2000,17.988,123513,22),(1,10.000,0.0000,0.2000,12.000,123513,68),(14,20.000,0.0000,0.0550,21.100,123513,69),(1,10.000,0.0000,0.0000,10.000,123513,106),(1,10.000,0.0000,0.0000,10.000,123513,109),(1,370.450,0.0000,0.2000,444.540,123513,110),(5,15.990,0.0000,0.2000,19.188,123513,111),(1,370.450,0.0000,0.2000,444.540,123513,112),(1,7.000,0.0000,0.2000,8.400,123514,20),(1,44.490,0.0000,0.2000,53.388,123515,24),(1,10.000,0.0000,0.2000,12.000,123515,68),(2,20.000,0.0000,0.0550,21.100,123515,69),(1,10.000,0.0000,0.2000,12.000,123515,80),(1,370.450,0.0000,0.2000,444.540,123515,110),(1,15.990,0.0000,0.2000,19.188,123515,111),(1,20.000,0.0000,0.0550,21.100,123516,69),(1,20.000,0.0000,0.0550,21.100,123517,69),(1,14.990,0.0000,0.2000,17.988,123518,22),(1,34.990,0.0000,0.2000,41.988,123518,25),(1,40.000,0.0000,0.2000,48.000,123518,67),(1,20.000,0.0000,0.0550,21.100,123518,69),(1,10.900,0.0000,0.2000,13.080,123518,70),(1,10.000,0.0000,0.2000,12.000,123518,80),(1,10.000,0.0000,0.0000,10.000,123518,106),(1,370.450,0.0000,0.2000,444.540,123518,110),(1,15.990,0.0000,0.2000,19.188,123518,111),(1,370.450,0.0000,0.2000,444.540,123518,112),(2,34.990,0.0000,0.2000,41.988,123519,25),(1,16.900,0.0000,0.0550,17.830,123519,26),(1,10.000,0.0000,0.2000,12.000,123519,68),(1,20.000,0.0000,0.0550,21.100,123519,69),(1,10.900,0.0000,0.2000,13.080,123519,70),(1,10.000,0.0000,0.2000,12.000,123519,80),(1,15.000,0.0000,0.2000,18.000,123519,81),(1,15.990,0.0000,0.2000,19.188,123519,111),(1,370.450,0.0000,0.2000,444.540,123519,112),(1,9.990,0.0000,0.2000,11.988,123519,113),(1,44.490,0.0000,0.2000,53.388,123520,24),(1,34.990,0.0000,0.2000,41.988,123520,25),(1,40.000,0.0000,0.2000,48.000,123520,67),(1,20.000,0.0000,0.0550,21.100,123520,69),(1,10.900,0.0000,0.2000,13.080,123520,70),(1,10.000,0.0000,0.2000,12.000,123520,80),(1,370.450,0.0000,0.2000,444.540,123520,110),(1,370.450,0.0000,0.2000,444.540,123520,112),(1,14.990,0.0000,0.2000,17.988,123521,22),(1,44.490,0.0000,0.2000,53.388,123521,24),(1,40.000,0.0000,0.2000,48.000,123521,67),(2,10.000,0.0000,0.2000,12.000,123521,68),(1,20.000,0.0000,0.0550,21.100,123521,69),(1,10.900,0.0000,0.2000,13.080,123521,70),(1,15.000,0.0000,0.2000,18.000,123521,81),(1,7.000,0.0000,0.0550,7.385,123521,82),(1,10.000,0.0000,0.0000,10.000,123521,106),(1,10.000,0.0000,0.0000,10.000,123521,109),(1,15.990,0.0000,0.2000,19.188,123521,111),(3,370.450,0.0000,0.2000,444.540,123521,112),(1,9.990,0.0000,0.2000,11.988,123521,113),(1,40.000,0.0000,0.2000,48.000,123522,67),(1,10.000,0.0000,0.2000,12.000,123522,68),(1,40.000,0.0000,0.2000,48.000,123523,67),(1,10.000,0.0000,0.2000,12.000,123523,68),(1,10.000,0.0000,0.0000,10.000,123523,109),(1,10.000,0.0000,0.2000,12.000,123524,68),(1,20.000,0.0000,0.0550,21.100,123524,69),(1,10.900,0.0000,0.2000,13.080,123524,70),(1,40.000,0.0000,0.2000,48.000,123525,67),(1,10.000,0.0000,0.2000,12.000,123525,68),(1,20.000,0.0000,0.0550,21.100,123525,69),(1,10.000,0.0000,0.0000,10.000,123525,109),(1,40.000,0.0000,0.2000,48.000,123526,67),(1,20.000,0.0000,0.0550,21.100,123526,69),(1,10.000,0.0000,0.0000,10.000,123526,109),(1,40.000,0.0000,0.2000,48.000,123527,67),(1,10.000,0.0000,0.2000,12.000,123527,68),(1,10.000,0.0000,0.0000,10.000,123527,106),(1,20.000,0.0000,0.0550,21.100,123528,69),(1,40.000,0.0000,0.2000,48.000,123529,67),(1,10.000,0.0000,0.0000,10.000,123529,106),(1,10.000,0.0000,0.0000,10.000,123529,109),(1,370.450,0.0000,0.2000,444.540,123529,110),(1,20.000,0.0000,0.0550,21.100,123530,69),(1,40.000,0.0000,0.2000,48.000,123531,67),(1,40.000,0.0000,0.2000,48.000,123532,67),(3,10.000,0.0000,0.2000,12.000,123532,68),(1,10.000,0.0000,0.0000,10.000,123532,109),(1,40.000,0.0000,0.2000,48.000,123533,67),(2,40.000,0.0000,0.2000,48.000,123534,67),(1,10.000,0.0000,0.2000,12.000,123534,68),(1,20.000,0.0000,0.0550,21.100,123534,69),(2,370.450,0.0000,0.2000,444.540,123534,110),(1,40.000,0.0000,0.2000,48.000,123535,67),(1,40.000,0.0000,0.2000,48.000,123536,67),(1,10.000,0.0000,0.2000,12.000,123536,68),(1,10.000,0.0000,0.2000,12.000,123537,68),(1,20.000,0.0000,0.0550,21.100,123537,69),(1,370.450,0.0000,0.2000,444.540,123537,110),(1,40.000,0.0000,0.2000,48.000,123538,67),(1,10.000,0.0000,0.2000,12.000,123539,68),(1,40.000,0.0000,0.2000,48.000,123540,67),(1,40.000,0.0000,0.2000,48.000,123541,67),(1,10.000,0.0000,0.2000,12.000,123541,68),(1,40.000,0.0000,0.2000,48.000,123542,67),(1,10.000,0.0000,0.2000,12.000,123542,68),(1,20.000,0.0000,0.0550,21.100,123542,69),(1,10.000,0.0000,0.0000,10.000,123542,109),(5,44.490,0.0000,0.2000,53.388,123543,24),(1,16.900,0.0000,0.0550,17.830,123543,26),(1,10.000,0.0000,0.2000,12.000,123543,68),(1,9.990,0.0000,0.2000,11.988,123543,113),(1,10.000,0.0000,0.2000,12.000,123544,68),(1,10.000,0.0000,0.0000,10.000,123544,106),(1,370.450,0.0000,0.2000,444.540,123544,110);
/*!40000 ALTER TABLE `commande_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `fournisseur`
--

DROP TABLE IF EXISTS `fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `fournisseur` (
  `id_fournisseur` int(11) NOT NULL AUTO_INCREMENT,
  `nom_fournisseur` varchar(255) NOT NULL,
  `mail_fournisseur` varchar(255) DEFAULT NULL,
  `adresse_fournisseur` varchar(255) DEFAULT NULL,
  `code_postal_fournisseur` int(11) DEFAULT NULL,
  `ville_fournisseur` varchar(255) DEFAULT NULL,
  `pays_fournisseur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=12013 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `fournisseur`
--

LOCK TABLES `fournisseur` WRITE;
/*!40000 ALTER TABLE `fournisseur` DISABLE KEYS */;
INSERT INTO `fournisseur` VALUES (10,'sous_le_manteau','manteau@gmail.com','3 rue lafayette',75000,'Paris','France'),(11,'dvd_dealer','dvd@dealer.com','5 queen street',25483,'Londres','Royaume uni'),(12,'livre_en_stock','livre@stock.com','3 chemin de la page',76000,'Rouen','France'),(20,'CVS','cvs@aol.com','6-8 Rue Gaston Lauriau ',93100,'MONTREUIL','France'),(21,'GAM','infogam@gamannecy.com','2 rue du Lac - BP. 298',74008,'ANNECY Cedex','France'),(22,'SDP LE LIVRE CLUB','d.michelas@lelivreclub.fr','164 Rue Ambroise Paré',30900,' Nîmes','France'),(30,'Replay Multimedia','info@replaymultimedia.com','126, rue Landy',93400,'Saint-Ouen','France'),(31,'ABYSSE CORP','bourez@abyssecorp.com','52 Quai Gaston Boulet',76000,'Rouen','France'),(32,'Arcades','contact@arcadesdirect.fr','Parc du château de Lancosme',36500,'Vendoeuvres','France'),(50,'CockPorn','contact@cockporn.com','rue du général de Gaulle',95130,'Paris','Espagne'),(51,'PopCorn','contact@popcorn.com','rue du maïs',27000,'Elbeuf','USA'),(52,'KornFlex','contact@kornflex.com','quai henri IV',76200,'Dieppe','Madagascar'),(60,'PRÉSIDENT PRESCOTT','onvatouslesbutés@crève.com','10 rue de la guerre',78954,'azura','terra'),(61,'Stark Industries','jesuislemeilleur@desavengers.com','20 allée de la pègre',45612,'new york','USA'),(62,'Geralt de Riv','jesuisbestofsorceleur@ettombeurdecesdames.wisima','pas de rue(vagabond)',99999,'wizima','Pologne'),(70,'cdjapan','cdjapan@mail.jp','34 tokyo blouvelvard',120277,'TOKYO','JAPON'),(71,'nihonbox','nihonbox@mail.jp','145 kyoto street',140287,'KYOTO','JAPON'),(72,'noVinyl','noVinyl@mail.FR','1 rue sans vinyl',75000,'PARIS','FRANCE'),(80,'FoureTout','fourtout@livraison.fr','35 rue de la livraison',75000,'Paris','France'),(81,'Alladin','alladin@gmail.com','ru du tapis volant',0,'Agraba','Egypte'),(82,'ratatouille','ratata@rat.fr','rue du restaurant',76000,'Rouen','France'),(100,'BROKEN_FOUNDRY','brokenf@bf_co.com','120 rue casse',65478,'FORNA','Noland'),(101,'BRAZIERE_GAMES','BraziereGames@BG.com','124 rue casse',65478,'FORNA','Noland'),(102,'THAUMATURGE_SYGN','ThaumaturgeSygn@caster.com','128 rue casse',65478,'FORNA','Noland'),(110,'techno-folies','boutiqueTF@orange.fr','56 avenue de la rue de paris',95000,'paris','fr'),(115,'benJ','benJ@porno.fr','afpa',76000,'rouen','fr'),(119,'dorothée club','asBin@nostalgique.com','10 ZI du fourre tout',2569,'hyère','fr'),(130,'castagnette','hgbn@hotmail.com','26 rue violette',36520,'ladune','france'),(131,'lord wx','resz@gb.net','13 eastern road',3542,'london','angleterre'),(132,'xs import','kjuy@mail.com','96 blvd mao',5648,'pekin','chine'),(12010,'AFPA','contact@afpa.fr','zone le Madrillet',76000,'Saint-Etienne du rouvray','France'),(12011,'Fongecif','contact@fogecif.fr','inconnue',76000,'Rouen','France'),(12012,'Pôle emploi','nePasContacter@poleEmploi.fr','partout',76190,'Yvetot','France');
/*!40000 ALTER TABLE `fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `genre_produit`
--

DROP TABLE IF EXISTS `genre_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `genre_produit` (
  `id_genre_produit` int(11) NOT NULL AUTO_INCREMENT,
  `lib_genre_produit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_genre_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `genre_produit`
--

LOCK TABLES `genre_produit` WRITE;
/*!40000 ALTER TABLE `genre_produit` DISABLE KEYS */;
INSERT INTO `genre_produit` VALUES (1,'action'),(2,'science fiction'),(3,'romance'),(4,'peplum'),(5,'policier'),(6,'porno'),(7,'horreur'),(8,'animalier'),(9,'fantastique'),(10,'rock'),(11,'metal'),(12,'classic'),(13,'rap');
/*!40000 ALTER TABLE `genre_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histo_client`
--

DROP TABLE IF EXISTS `histo_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histo_client` (
  `date_chg_statut` datetime NOT NULL,
  `id_statut_client` int(11) NOT NULL,
  `id_client` int(11) NOT NULL,
  PRIMARY KEY (`id_statut_client`,`id_client`,`date_chg_statut`),
  KEY `FK_histo_client_id_client` (`id_client`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histo_client`
--

LOCK TABLES `histo_client` WRITE;
/*!40000 ALTER TABLE `histo_client` DISABLE KEYS */;
INSERT INTO `histo_client` VALUES ('2017-05-19 00:00:00',1,30),('2018-05-12 00:00:00',1,51),('2018-05-16 00:00:00',1,54),('1900-05-17 00:00:00',1,72),('2018-07-04 23:06:26',1,12016),('2018-07-11 12:16:08',1,12016),('2018-07-11 14:16:37',1,12018),('2018-07-11 14:18:12',1,12019),('2018-07-11 14:22:45',1,12020),('2018-07-11 14:35:31',1,12022),('2018-08-31 21:02:37',1,12022),('2018-07-11 14:37:02',1,12023),('2018-07-12 20:56:47',1,12023),('2018-08-31 21:03:29',1,12023),('2018-07-11 14:40:05',1,12024),('2018-08-31 21:52:18',1,12024),('2018-07-11 14:41:07',1,12025),('2018-07-12 21:00:29',1,12025),('2018-08-31 21:52:23',1,12025),('2018-07-11 14:43:35',1,12026),('2018-07-12 21:00:41',1,12026),('2018-08-31 21:52:26',1,12026),('2018-07-11 14:44:07',1,12027),('2018-08-31 21:52:28',1,12027),('2018-08-31 21:52:48',1,12028),('2018-07-11 15:36:17',1,12029),('2018-08-31 21:53:55',1,12029),('2018-07-11 15:37:16',1,12030),('2018-08-31 21:57:03',1,12030),('2018-07-11 15:38:22',1,12031),('2018-08-31 21:57:12',1,12031),('2018-07-11 15:40:25',1,12032),('2018-08-31 21:57:15',1,12032),('2018-08-31 22:08:10',1,12033),('2018-08-31 22:09:16',1,12034),('2018-08-31 22:11:14',1,12035),('2018-08-31 22:30:25',1,12036),('2018-08-31 22:32:12',1,12037),('2018-08-31 22:34:18',1,12038),('2018-08-31 22:34:19',1,12039),('2018-08-31 22:34:20',1,12040),('2018-08-31 22:34:21',1,12041),('2018-08-31 22:34:23',1,12042),('2018-08-31 22:36:44',1,12043),('2018-08-31 22:36:54',1,12044),('2018-08-31 22:36:56',1,12045),('2018-08-31 22:37:00',1,12046),('2018-08-31 22:38:18',1,12047),('2018-08-31 22:38:20',1,12048),('2018-08-31 22:38:47',1,12049),('2018-08-31 22:38:48',1,12050),('2018-09-01 00:41:45',1,12051),('2018-09-01 00:42:57',1,12052),('2018-09-01 00:42:58',1,12053),('2018-09-01 00:43:00',1,12054),('2018-09-01 00:43:12',1,12055),('2018-09-01 09:36:15',1,12056),('2018-09-01 09:43:01',1,12057),('2018-09-01 09:44:37',1,12058),('2018-09-01 09:52:56',1,12059),('2018-09-01 09:53:05',1,12060),('2018-09-01 09:54:24',1,12061),('2018-09-01 09:54:57',1,12062),('2018-09-01 09:57:14',1,12063),('2018-09-01 16:50:30',1,12064),('2018-09-01 16:52:16',1,12065),('2018-09-01 16:55:45',1,12066),('2018-09-01 16:57:10',1,12067),('2018-09-01 16:57:41',1,12068),('2018-09-01 16:57:45',1,12069),('2018-09-01 17:01:13',1,12070),('2018-09-01 17:01:14',1,12071),('2018-09-01 17:02:21',1,12072),('2018-09-01 17:03:58',1,12073),('2018-09-01 17:04:00',1,12074),('2018-09-01 17:04:13',1,12075),('2018-09-01 17:04:32',1,12076),('2018-09-01 21:20:29',1,12077),('2018-09-01 21:21:01',1,12078),('2018-09-01 23:20:31',1,12079),('2018-09-02 10:40:58',1,12080),('2018-09-02 10:50:14',1,12081),('2018-09-02 10:51:23',1,12082),('2018-09-02 10:52:33',1,12083),('2018-09-02 10:54:14',1,12084),('2018-09-02 10:57:42',1,12085),('2018-09-02 11:06:55',1,12086),('2018-09-02 11:47:39',1,12087),('2018-09-02 12:19:37',1,12088),('2018-09-02 12:26:12',1,12089),('2018-09-02 12:26:36',1,12090),('2018-09-02 12:28:37',1,12091),('2018-09-02 12:30:16',1,12092),('2018-09-02 12:43:14',1,12093),('2018-09-02 12:43:16',1,12094),('2018-09-02 12:43:59',1,12095),('2018-09-02 12:45:26',1,12096),('2018-09-02 12:45:55',1,12097),('2018-09-02 12:48:37',1,12098),('2018-09-02 12:49:42',1,12099),('2018-09-02 12:56:55',1,12100),('2018-09-02 12:58:05',1,12101),('2018-09-02 13:09:57',1,12102),('2018-09-02 13:11:37',1,12103),('2018-09-02 13:14:58',1,12104),('2018-09-02 13:39:13',1,12105),('2018-09-02 13:47:20',1,12106),('2018-09-02 14:22:45',1,12107),('2015-06-12 00:00:00',2,20),('2016-07-14 00:00:00',2,21),('2015-05-14 00:00:00',2,23),('2014-05-13 00:00:00',2,24),('2015-09-30 00:00:00',2,31),('2018-04-18 00:00:00',2,34),('2018-05-17 00:00:00',2,50),('2018-05-05 00:00:00',2,52),('2018-05-25 00:00:00',2,53),('2010-10-12 00:00:00',2,61),('2016-10-12 00:00:00',2,63),('2017-08-09 00:00:00',2,70),('2018-04-02 00:00:00',2,71),('2017-06-15 15:24:35',2,80),('2016-03-14 12:35:59',2,81),('2018-01-27 23:59:14',2,82),('2017-05-26 00:03:57',2,83),('2016-07-09 15:56:47',2,84),('2017-11-11 00:00:00',2,100),('2017-11-11 00:00:00',2,101),('2017-11-11 00:00:00',2,102),('2017-11-11 00:00:00',2,103),('2017-11-11 00:00:00',2,104),('2018-06-06 00:00:00',2,12010),('2018-02-02 00:00:00',2,12011),('2018-06-26 17:53:01',2,12016),('2018-07-13 15:55:48',2,12016),('2018-06-29 18:02:08',2,12018),('2018-07-13 16:08:35',2,12020),('2018-07-13 16:09:50',2,12021),('2018-06-27 13:41:20',2,12025),('2018-06-27 13:48:12',2,12026),('2018-06-27 13:50:32',2,12027),('2018-06-27 13:52:41',2,12028),('2018-06-27 13:53:33',2,12030),('2018-06-27 13:56:01',2,12031),('2018-09-06 10:15:19',2,12108),('2018-09-06 11:15:27',2,12109),('2018-09-06 11:23:46',2,12110),('2018-09-06 11:25:59',2,12111),('2018-01-02 00:00:00',3,22),('2014-05-28 00:00:00',3,32),('1995-10-25 00:00:00',3,60),('1987-10-12 00:00:00',3,73),('2017-09-15 15:24:35',3,80),('2017-07-09 15:56:47',3,84),('2014-06-24 00:00:00',4,33),('2013-10-12 00:00:00',4,62),('2017-10-12 00:00:00',4,64),('1996-12-03 00:00:00',4,74),('2018-05-15 22:02:45',4,81),('2018-05-05 00:00:00',4,12011),('2018-09-06 12:58:35',5,60),('0000-00-00 00:00:00',130,2018),('0000-00-00 00:00:00',131,2018),('0000-00-00 00:00:00',132,2018),('0000-00-00 00:00:00',133,2018),('0000-00-00 00:00:00',134,2018);
/*!40000 ALTER TABLE `histo_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histo_commande`
--

DROP TABLE IF EXISTS `histo_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histo_commande` (
  `date_chg_statut` datetime NOT NULL,
  `id_statut_commande` int(11) NOT NULL,
  `id_commande` int(11) NOT NULL,
  PRIMARY KEY (`id_statut_commande`,`id_commande`,`date_chg_statut`),
  KEY `FK_histo_commande_id_commande` (`id_commande`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histo_commande`
--

LOCK TABLES `histo_commande` WRITE;
/*!40000 ALTER TABLE `histo_commande` DISABLE KEYS */;
INSERT INTO `histo_commande` VALUES ('2018-06-11 12:30:00',1,1),('2018-10-05 00:00:00',1,60),('2018-10-06 00:00:00',1,61),('2017-05-26 14:00:15',1,80),('2017-06-26 14:00:15',1,81),('2018-02-20 14:25:54',1,82),('2018-01-02 23:17:32',1,110),('2018-06-12 01:12:13',1,111),('2018-06-13 10:00:00',1,12345),('2018-06-15 16:00:00',1,123456),('2018-05-27 00:00:00',2,25),('2018-06-01 00:00:00',2,31),('2017-05-26 14:02:15',2,80),('2018-02-20 14:30:54',2,82),('2017-11-11 00:00:00',2,100),('2018-01-02 23:59:32',2,110),('2018-06-12 01:14:47',2,111),('2018-01-01 00:00:00',2,12012),('2018-06-06 00:00:00',2,12014),('2018-06-13 12:00:00',2,12345),('2018-06-15 18:00:00',2,123456),('2018-07-14 19:05:34',2,123468),('2018-07-14 19:06:14',2,123469),('2018-07-14 19:07:49',2,123470),('2018-07-14 19:10:26',2,123471),('2018-07-14 19:12:42',2,123472),('2018-07-14 19:13:18',2,123473),('2018-07-14 19:15:59',2,123474),('2018-07-14 19:17:09',2,123476),('2018-07-14 19:20:20',2,123477),('2018-07-14 19:22:49',2,123478),('2018-07-14 19:23:15',2,123479),('2018-07-14 19:25:23',2,123480),('2018-07-14 19:43:45',2,123481),('2018-07-14 19:48:28',2,123482),('2018-07-15 09:20:05',2,123494),('2018-09-01 09:57:14',2,123513),('2018-09-01 23:20:31',2,123514),('2018-09-02 10:40:58',2,123515),('2018-09-02 10:50:14',2,123516),('2018-09-02 10:51:23',2,123517),('2018-09-02 10:52:33',2,123518),('2018-09-02 10:54:14',2,123519),('2018-09-02 10:57:42',2,123520),('2018-09-02 11:06:55',2,123521),('2018-09-02 11:47:39',2,123522),('2018-09-02 12:19:37',2,123523),('2018-09-02 12:26:12',2,123524),('2018-09-02 12:26:36',2,123525),('2018-09-02 12:28:37',2,123526),('2018-09-02 12:30:16',2,123527),('2018-09-02 12:43:14',2,123528),('2018-09-02 12:43:16',2,123529),('2018-09-02 12:43:59',2,123530),('2018-09-02 12:45:26',2,123531),('2018-09-02 12:45:55',2,123532),('2018-09-02 12:48:37',2,123533),('2018-09-02 12:49:42',2,123534),('2018-09-02 12:56:55',2,123535),('2018-09-02 12:58:05',2,123536),('2018-09-02 13:09:58',2,123537),('2018-09-02 13:11:37',2,123538),('2018-09-02 13:14:58',2,123539),('2018-09-02 13:39:13',2,123540),('2018-09-02 13:47:20',2,123541),('2018-09-02 14:22:45',2,123542),('2018-09-06 10:16:05',2,123543),('2018-09-06 10:16:45',2,123544),('2017-05-26 14:05:15',3,80),('2018-01-03 00:01:23',3,110),('2018-06-06 00:00:00',3,12014),('2018-06-13 14:00:00',3,12345),('2018-06-15 20:00:00',3,123456),('2018-09-06 10:15:56',3,123494),('2018-09-06 10:16:37',3,123543),('2018-09-06 10:16:53',3,123544),('2018-09-06 12:59:47',3,123544),('2018-06-12 13:20:00',4,2),('2017-12-10 00:00:00',4,27),('2018-05-19 00:00:00',4,32),('2017-05-26 14:10:15',4,80),('2018-01-03 08:47:32',4,110),('2018-06-13 16:00:00',4,12345),('2018-06-15 22:00:00',4,123456),('2018-06-12 00:00:00',5,26),('2018-06-10 00:00:00',5,30),('2017-05-27 09:00:15',5,80),('2018-01-03 12:31:36',5,110),('2018-01-03 00:00:00',5,12012),('2018-07-06 00:00:00',5,12014),('2018-02-15 00:00:00',6,34),('2017-05-28 16:00:15',6,80),('2018-01-04 08:00:00',6,110),('2018-06-12 14:50:00',7,3),('2017-08-16 00:00:00',7,33),('2017-06-27 14:00:15',7,81),('2018-06-12 01:17:12',7,111),('0000-00-00 00:00:00',130,2018),('0000-00-00 00:00:00',131,2018),('0000-00-00 00:00:00',132,2018),('0000-00-00 00:00:00',133,2018),('0000-00-00 00:00:00',134,2018),('0000-00-00 00:00:00',135,2018),('0000-00-00 00:00:00',136,2018),('0000-00-00 00:00:00',137,2018),('0000-00-00 00:00:00',138,2018),('0000-00-00 00:00:00',139,2018);
/*!40000 ALTER TABLE `histo_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histo_fournisseur`
--

DROP TABLE IF EXISTS `histo_fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histo_fournisseur` (
  `date_chg_statut` datetime DEFAULT NULL,
  `id_statut_fournisseur` int(11) NOT NULL,
  `id_fournisseur` int(11) NOT NULL,
  PRIMARY KEY (`id_statut_fournisseur`,`id_fournisseur`),
  KEY `FK_histo_fournisseur_id_fournisseur` (`id_fournisseur`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histo_fournisseur`
--

LOCK TABLES `histo_fournisseur` WRITE;
/*!40000 ALTER TABLE `histo_fournisseur` DISABLE KEYS */;
INSERT INTO `histo_fournisseur` VALUES ('2015-01-12 00:00:00',1,20),('2014-01-01 00:00:00',1,21),('0000-00-00 00:00:00',1,22),('2015-03-16 00:00:00',1,30),('2013-09-14 00:00:00',1,31),('2018-02-18 00:00:00',1,50),('2018-03-15 00:00:00',1,51),('2018-01-12 00:00:00',1,52),('2016-10-25 00:00:00',1,60),('2010-10-12 00:00:00',1,61),('2013-10-12 00:00:00',1,62),('2015-02-04 00:00:00',1,70),('2014-05-06 00:00:00',1,71),('2018-02-03 00:00:00',1,72),('2015-01-01 00:00:00',1,80),('2015-01-01 00:00:00',1,81),('2016-01-01 00:00:00',1,82),('2017-11-11 00:00:00',1,100),('2017-11-11 00:00:00',1,101),('2017-11-11 00:00:00',1,102),('2017-01-01 00:00:00',1,110),('2017-01-01 00:00:00',1,115),('1900-01-01 00:00:00',1,119),('2018-05-10 00:00:00',2,32),('2017-01-01 00:00:00',2,81),('0000-00-00 00:00:00',130,0),('0000-00-00 00:00:00',131,0),('0000-00-00 00:00:00',132,0);
/*!40000 ALTER TABLE `histo_fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histo_prix_fournisseur`
--

DROP TABLE IF EXISTS `histo_prix_fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histo_prix_fournisseur` (
  `prix_achat` decimal(15,3) DEFAULT NULL,
  `date_chg_prix` datetime NOT NULL,
  `id_fournisseur` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_fournisseur`,`id_produit`,`date_chg_prix`),
  KEY `FK_histo_prix_fournisseur_id_produit` (`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histo_prix_fournisseur`
--

LOCK TABLES `histo_prix_fournisseur` WRITE;
/*!40000 ALTER TABLE `histo_prix_fournisseur` DISABLE KEYS */;
INSERT INTO `histo_prix_fournisseur` VALUES (5.000,'2018-01-01 00:00:00',20,20),(12.000,'2017-12-01 00:00:00',20,21),(12.000,'2017-12-01 00:00:00',20,22),(10.000,'2017-10-10 00:00:00',20,29),(30.000,'2017-12-31 00:00:00',21,23),(30.000,'2018-01-01 00:00:00',21,24),(20.000,'2016-12-31 00:00:00',21,25),(10.000,'2018-02-01 00:00:00',22,26),(10.000,'2018-01-31 00:00:00',22,27),(40.000,'2017-05-01 00:00:00',22,28),(10.000,'2018-03-15 00:00:00',30,30),(14.000,'2018-03-15 00:00:00',30,31),(2.500,'2018-03-15 00:00:00',30,32),(7.000,'2018-03-15 00:00:00',30,33),(45.000,'2018-03-15 00:00:00',30,34),(14.000,'2018-05-23 00:00:00',31,35),(8.000,'2018-05-23 00:00:00',31,36),(35.000,'2018-05-23 00:00:00',31,37),(6.000,'2018-05-23 00:00:00',31,38),(7.000,'2018-05-23 00:00:00',31,39),(10.990,'2018-05-12 00:00:00',50,53),(2.990,'2018-05-12 00:00:00',50,56),(15.990,'2018-05-12 00:00:00',51,51),(15.990,'2018-05-12 00:00:00',51,52),(10.990,'2018-05-12 00:00:00',51,54),(1.990,'2018-05-12 00:00:00',51,57),(20.990,'2018-05-12 00:00:00',52,50),(5.990,'2018-05-12 00:00:00',52,55),(50.990,'2018-05-12 00:00:00',52,58),(10.990,'2018-05-12 00:00:00',52,59),(10.000,'2013-10-12 00:00:00',60,64),(8.000,'2017-10-12 00:00:00',60,66),(30.000,'2010-10-12 00:00:00',60,67),(40.000,'2016-10-25 00:00:00',60,68),(25.000,'2016-10-12 00:00:00',61,60),(45.000,'2016-10-12 00:00:00',61,62),(4.000,'2017-10-12 00:00:00',61,65),(6.000,'2017-10-12 00:00:00',62,61),(8.000,'2013-10-12 00:00:00',62,63),(12.000,'2017-10-12 00:00:00',62,69),(4.000,'2017-12-12 00:00:00',70,79),(5.000,'2018-01-01 00:00:00',71,70),(40.000,'2018-05-03 00:00:00',72,75),(5.000,'2017-01-01 00:00:00',80,82),(10.000,'2017-01-01 00:00:00',80,84),(100.000,'2017-01-01 00:00:00',80,85),(10.000,'2017-01-01 00:00:00',80,87),(8.000,'2016-01-01 00:00:00',81,80),(12.000,'2016-01-01 00:00:00',81,83),(30.000,'2016-01-01 00:00:00',81,86),(10.000,'2017-01-01 00:00:00',82,81),(15.000,'2017-01-01 00:00:00',82,88),(5.000,'2017-01-01 00:00:00',82,89),(5.000,'2017-11-11 00:00:00',100,100),(5.000,'2017-11-11 00:00:00',100,101),(5.000,'2017-11-11 00:00:00',100,102),(5.000,'2017-11-11 00:00:00',100,105),(5.000,'2017-11-11 00:00:00',100,106),(5.000,'2017-11-11 00:00:00',101,107),(5.000,'2017-11-11 00:00:00',101,108),(5.000,'2017-11-11 00:00:00',101,109),(5.000,'2017-11-11 00:00:00',102,103),(5.000,'2017-11-11 00:00:00',102,104),(15.990,'2017-01-01 00:00:00',110,111),(37.000,'2017-01-01 00:00:00',110,112),(0.990,'2017-01-01 00:00:00',110,114),(19.990,'2017-01-01 00:00:00',110,115),(2.050,'2017-01-01 00:00:00',110,116),(370.000,'2017-01-01 00:00:00',115,110),(9.990,'2017-01-01 00:00:00',119,113),(1.000,'2018-06-13 00:00:00',130,130),(1.000,'2018-06-13 00:00:00',130,131),(1.000,'2018-06-13 00:00:00',130,132),(1.000,'2018-06-13 00:00:00',130,133),(1.000,'2018-06-13 00:00:00',131,134),(1.000,'2018-06-13 00:00:00',131,135),(1.000,'2018-06-13 00:00:00',131,136),(1.000,'2018-06-13 00:00:00',132,137),(1.000,'2018-06-13 00:00:00',132,138),(1.000,'2018-06-13 00:00:00',132,139),(1.000,'2018-06-13 00:00:00',140,140),(1.000,'2018-06-13 00:00:00',140,141),(1.000,'2018-06-13 00:00:00',140,142),(1.000,'2018-06-13 00:00:00',141,143),(1.000,'2018-06-13 00:00:00',141,144),(1.000,'2018-06-13 00:00:00',141,145),(1.000,'2018-06-13 00:00:00',141,146),(1.000,'2018-06-13 00:00:00',141,147),(1.000,'2018-06-13 00:00:00',142,148),(1.000,'2018-06-13 00:00:00',142,149),(13.000,'0000-00-00 00:00:00',12010,12013),(3.000,'2018-02-02 00:00:00',12010,12018),(5.000,'2018-03-03 00:00:00',12010,12019),(8.000,'2018-06-05 00:00:00',12011,12010),(10.000,'2018-01-01 00:00:00',12011,12011),(9.000,'2018-09-15 00:00:00',12012,12012);
/*!40000 ALTER TABLE `histo_prix_fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `histo_produit`
--

DROP TABLE IF EXISTS `histo_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `histo_produit` (
  `date_chg_statut` datetime NOT NULL,
  `remise_eventuelle` decimal(5,4) DEFAULT NULL,
  `date_sortie` datetime DEFAULT NULL,
  `id_statut_produit` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_statut_produit`,`id_produit`,`date_chg_statut`),
  KEY `FK_histo_produit_id_produit` (`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `histo_produit`
--

LOCK TABLES `histo_produit` WRITE;
/*!40000 ALTER TABLE `histo_produit` DISABLE KEYS */;
INSERT INTO `histo_produit` VALUES ('2016-12-31 00:00:00',NULL,'2017-01-08 00:00:00',1,20),('2018-01-01 00:00:00',NULL,'2017-01-06 00:00:00',1,21),('2018-01-01 00:00:00',NULL,'2016-01-01 00:00:00',1,22),('2016-12-31 00:00:00',NULL,'2017-02-04 00:00:00',1,24),('2017-12-31 00:00:00',NULL,'2017-01-05 00:00:00',1,25),('2017-12-31 00:00:00',NULL,'2017-01-01 00:00:00',1,26),('2018-01-10 00:00:00',NULL,'2017-10-10 00:00:00',1,27),('2017-12-31 00:00:00',NULL,'2016-01-01 00:00:00',1,29),('2018-06-05 00:00:00',0.0000,'2018-05-15 00:00:00',1,30),('2018-06-01 00:00:00',0.0000,'2018-12-30 00:00:00',1,31),('2018-06-10 00:00:00',0.0550,'2013-12-04 00:00:00',1,33),('2018-06-12 00:00:00',0.0000,'2018-09-16 00:00:00',1,34),('2018-06-10 00:00:00',0.0000,'2018-09-15 00:00:00',1,36),('2018-06-12 00:00:00',0.0000,'2016-08-12 00:00:00',1,38),('2018-06-12 00:00:00',0.0000,'2018-06-17 00:00:00',1,39),('0000-00-00 00:00:00',NULL,NULL,1,60),('0000-00-00 00:00:00',NULL,NULL,1,61),('0000-00-00 00:00:00',NULL,NULL,1,65),('0000-00-00 00:00:00',NULL,NULL,1,66),('0000-00-00 00:00:00',NULL,NULL,1,67),('0000-00-00 00:00:00',NULL,NULL,1,68),('0000-00-00 00:00:00',NULL,NULL,1,69),('2018-06-10 00:00:00',NULL,'2017-08-13 00:00:00',1,70),('2017-05-26 15:00:00',NULL,'2017-05-26 00:00:00',1,80),('2017-05-26 00:00:00',NULL,'2017-05-26 00:00:00',1,81),('2017-05-26 00:00:00',NULL,'2017-05-26 00:00:00',1,82),('2017-05-26 00:00:00',NULL,'2017-05-26 00:00:00',1,83),('2017-05-26 00:00:00',NULL,'2017-05-26 00:00:00',1,84),('2017-05-26 00:00:00',NULL,'2017-05-26 00:00:00',1,85),('2017-05-26 00:00:00',NULL,'2017-05-26 00:00:00',1,86),('2017-05-26 00:00:00',NULL,'2017-05-26 00:00:00',1,87),('2017-05-26 00:00:00',NULL,'2017-05-26 00:00:00',1,88),('2017-05-26 00:00:00',NULL,'2017-05-26 00:00:00',1,89),('2017-11-11 00:00:00',0.0000,NULL,1,100),('2017-11-11 00:00:00',0.0000,NULL,1,101),('2017-11-11 00:00:00',0.0000,NULL,1,102),('2017-11-11 00:00:00',0.0000,NULL,1,103),('2017-11-11 00:00:00',0.0000,NULL,1,104),('2017-11-11 00:00:00',0.0000,NULL,1,105),('2017-11-11 00:00:00',0.0000,NULL,1,106),('2017-11-11 00:00:00',0.0000,NULL,1,107),('2017-11-11 00:00:00',0.0000,NULL,1,108),('2017-11-11 00:00:00',0.0000,NULL,1,109),('2017-01-01 00:00:00',0.0000,'2017-01-01 00:00:00',1,110),('2017-01-01 00:00:00',0.0000,'2017-01-01 00:00:00',1,111),('2017-01-01 00:00:00',0.0000,'2017-01-01 00:00:00',1,112),('2017-01-01 00:00:00',0.0000,'2017-01-01 00:00:00',1,113),('2017-01-01 00:00:00',0.0000,'2017-01-01 00:00:00',1,114),('2017-01-01 00:00:00',0.0000,'2017-01-01 00:00:00',1,115),('2017-01-01 00:00:00',0.0000,'2017-01-01 00:00:00',1,116),('2018-02-15 00:00:00',NULL,'2016-06-05 00:00:00',2,23),('2018-06-10 00:00:00',0.0000,'1995-04-12 00:00:00',2,32),('0000-00-00 00:00:00',NULL,NULL,2,62),('0000-00-00 00:00:00',NULL,NULL,2,63),('0000-00-00 00:00:00',NULL,NULL,2,64),('2018-06-12 00:00:00',0.0000,'1991-05-13 00:00:00',3,35),('2018-06-10 00:00:00',0.1000,'2015-05-14 00:00:00',3,76),('2018-01-18 00:00:00',NULL,'2018-08-01 00:00:00',4,28),('2018-06-10 00:00:00',0.0000,'2018-03-23 00:00:00',4,37),('2018-06-12 00:00:00',0.3000,'2018-07-14 00:00:00',4,78);
/*!40000 ALTER TABLE `histo_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit`
--

DROP TABLE IF EXISTS `produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produit` (
  `id_produit` int(11) NOT NULL AUTO_INCREMENT,
  `nom_produit` varchar(255) DEFAULT NULL,
  `prixht_produit` decimal(15,3) DEFAULT NULL,
  `stock_inventaire_produit` int(11) DEFAULT NULL,
  `stock_minimum` int(11) DEFAULT NULL,
  `stock_objectif` int(11) DEFAULT NULL,
  `tva_produit` decimal(5,4) DEFAULT NULL,
  `id_type_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_produit`),
  KEY `FK_produit_id_type_produit` (`id_type_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=12020 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit`
--

LOCK TABLES `produit` WRITE;
/*!40000 ALTER TABLE `produit` DISABLE KEYS */;
INSERT INTO `produit` VALUES (10,'Master of puppets',19.000,12,2,20,0.2000,6),(11,'Barbie divorce',30.000,6,3,10,0.2000,2),(12,'Rocky 22',22.000,12,5,25,0.2000,3),(13,'Regime vegan: comment manger un bouffeur de graines pas jour?',55.000,5,2,10,0.0550,4),(14,'Sims 122',25.000,12,10,30,0.2000,7),(15,'Star Wars 44',30.000,5,2,10,0.2000,3),(16,'Le suicide pour les nuls',50.000,25,10,50,0.0550,4),(17,'Tintin en Coree du nord',24.000,16,3,30,0.2000,5),(18,'Cuisinez avec Hannibal Lecter ',50.000,20,5,50,0.2000,4),(19,'30 ans d\'amour dans les bras d\'un manchot',25.000,25,10,30,0.0550,3),(20,'Jump on Board Digipack',7.000,15,3,20,0.2000,1),(21,'Je reviens à toi Livre-disque',14.990,12,3,15,0.2000,1),(22,'Prequelle Edition Deluxe limitée',14.990,16,3,18,0.2000,1),(23,'Pokémon Let\'s Go Pikachu Nintendo Switch',49.990,30,5,35,0.2000,7),(24,'Mario Tennis Aces Nintendo Switch',44.490,25,10,50,0.2000,7),(25,'Final Fantasy XV Edition Royale PS4',34.990,10,5,30,0.2000,7),(26,'Une aventure nommée Federer',16.900,5,2,10,0.0550,4),(27,'Je suis healthy !',14.950,6,2,10,1.0550,4),(28,'Ready Player One Coffret Exclusivité Fnac Steelbook Blu-ray 4K Ultra HD',59.990,NULL,NULL,NULL,1.2000,3),(29,'Cro Man DVD',14.990,10,5,20,1.2000,2),(30,'Avengers',22.000,5,2,20,0.2000,2),(31,'Equalizer',30.000,4,2,30,0.2000,3),(32,'Gipsy King',7.000,0,0,5,0.0550,1),(33,'ALPHA',12.000,10,5,15,0.0500,5),(34,'GOD OF WAR',60.000,14,7,30,0.2000,7),(35,'Claude François',20.000,3,1,5,0.0500,6),(36,'Le lambeau',15.000,4,2,7,0.0500,4),(37,'Fifa18',55.000,10,5,25,0.2000,7),(38,'DEADPOOL',13.000,5,2,10,0.0550,1),(39,'MI6',15.000,13,8,25,0.2000,3),(50,'FIFA_1879',1998.990,1998,1998,1998,0.2000,7),(51,'Idiocracy',20.990,5,10,15,0.2000,2),(52,'Mylene_Farmer_Tour_2015',20.000,5,2,5,0.2000,1),(53,'Salut_Fred',12.990,4,1,5,0.2000,3),(54,'L_Anaconda_Algerien',15.990,58,5,10,0.0550,3),(55,'Prison_School_Tome_1',9.990,3,1,5,0.0550,4),(56,'Elle_a_Le_Choix_Dans_La_Date',5.990,20,5,15,0.0550,3),(57,'JUL_je_me_vois_pas_briller',499.990,20,1,0,0.2000,1),(58,'Coffret_Teletubbies',89.900,65,20,50,0.2000,2),(59,'Human_Centipede',20.990,20,10,0,0.2000,7),(60,'splatoon',37.080,10,2,15,0.2000,7),(61,'La fête est finie',10.000,30,5,30,0.2000,1),(62,'LSDA-trilogie',58.000,5,3,20,0.2000,3),(63,'Hsotd - Intégrale',12.000,5,2,10,0.0550,5),(64,'Les Derniers Jedi',13.000,10,8,30,0.2000,2),(65,'La Ch\'tite famille',8.000,20,10,25,0.2000,2),(66,'Ceinture Noire 1er Dan',13.000,30,10,50,0.2000,1),(67,'God Of War',40.000,40,15,50,0.2000,7),(68,'Gears of War -U_E',10.000,10,5,15,0.2000,7),(69,'Kâma Sûtra',20.000,5,2,10,0.0550,4),(70,'Scandal',10.900,3,2,7,0.2000,1),(71,'l\'art du judo',9.990,2,1,4,0.0550,4),(72,'saint seiya',30.500,3,1,5,0.2000,2),(73,'DTC',2.990,1,0,2,0.2000,1),(74,'les gladiatrices',4.000,1,0,1,0.2000,2),(75,'ZELDA',55.000,3,2,5,0.2000,7),(76,'MARIO KART 64',40.000,1,0,2,0.2000,7),(77,'les nuls ',8.990,3,2,5,0.0550,5),(78,'THE MUSMUS',9.000,2,1,3,0.2000,1),(79,'HOSTEL 2',15.450,3,1,5,0.2000,3),(80,'tata et les tontons',10.000,5,2,4,0.2000,2),(81,'H.P  l\'ecole des sorciers',15.000,4,1,4,0.2000,3),(82,'H.P  l\'ecole des sorciers',7.000,2,1,2,0.0550,4),(83,'Gladiator',15.000,7,3,6,0.2000,3),(84,'Black Ice',12.000,6,2,6,0.2000,1),(85,'James Bond Collector',140.000,2,1,1,0.2000,2),(86,'Overwatch',35.000,7,3,6,0.2000,7),(87,'Diablo 3',16.000,2,1,1,0.2000,7),(88,'Diablo 3 extension',20.000,5,2,4,0.2000,7),(89,'les arcanes du chaos',7.000,4,1,2,0.0550,4),(100,'Fragile',10.000,100,10,500,NULL,1),(101,'Legion',10.000,100,10,500,NULL,2),(102,'Deadpool2',10.000,100,10,500,NULL,3),(103,'Game of throne',10.000,100,10,500,NULL,4),(104,'Steins;Gate',10.000,100,10,500,NULL,5),(105,'Roudabout',10.000,100,10,500,NULL,6),(106,'Y.M.C.A',10.000,100,10,500,NULL,7),(107,'Persona5',10.000,100,10,500,NULL,8),(108,'Brutal Legend',10.000,100,10,500,NULL,8),(109,'MONSTER HUNTER: WORLD ORIGINAL SOUNDTRACK',10.000,100,10,500,NULL,1),(110,'la foire a la 106 de strasbourg',370.450,20,3,20,0.2000,4),(111,'la blonde est dans la classe',15.990,20,3,20,0.2000,3),(112,'tiré dans lmile',370.450,20,3,20,0.2000,7),(113,'file edit... piaf',9.990,5,1,10,0.2000,6),(114,'vie ma vie',0.990,2,1,2,0.0550,5),(115,'francky vincent, le réveil de la clio 4',19.990,100,20,200,0.2000,2),(116,'red boule',2.050,10,1,15,0.2000,1),(130,'la vie est belle',54.250,25,5,30,0.2000,3),(131,'chanson d été',13.200,9,5,25,0.2000,1),(132,'une dernière fois',25.600,12,5,30,0.0550,4),(133,'titin au congo',12.850,20,5,20,0.0550,5),(134,'tombraider',45.900,8,18,20,0.2000,7),(135,'le soldat ryan',25.900,9,5,20,0.2000,2),(136,'usual suspect',18.900,13,4,25,0.2000,2),(137,'body count',12.900,6,5,10,0.2000,1),(138,'paris sous les bombes',21.650,9,5,10,0.2000,6),(139,'call of duty 2018',45.900,11,10,35,0.2000,7),(12010,'Zelda - Ocarina of time',20.000,18,0,13,0.0000,7),(12011,'Final fantasy VII',30.000,13,5,7,0.0000,7),(12012,'Akira',15.000,3,0,5,0.0000,3),(12013,'Ghost in the shell',15.000,2,1,5,0.0000,3),(12014,'Mr robot',25.000,3,7,10,0.0000,2),(12015,'Astérix - Mission cléopat',15.000,10,5,20,0.0000,5),(12016,'Les 12 travaux d\'Astérix',15.000,15,5,20,0.0000,5),(12017,'La fête est finie',19.000,16,15,20,0.0000,1),(12018,'One more light',19.000,3,5,15,0.0000,1),(12019,'Paranoid',15.000,2,10,35,0.0000,1);
/*!40000 ALTER TABLE `produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit_genre_produit`
--

DROP TABLE IF EXISTS `produit_genre_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produit_genre_produit` (
  `id_produit` int(11) NOT NULL,
  `id_genre_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_produit`,`id_genre_produit`),
  KEY `FK_produit_genre_produit_id_genre_produit` (`id_genre_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit_genre_produit`
--

LOCK TABLES `produit_genre_produit` WRITE;
/*!40000 ALTER TABLE `produit_genre_produit` DISABLE KEYS */;
INSERT INTO `produit_genre_produit` VALUES (10,11),(11,1),(12,1),(13,1),(14,7),(15,1),(16,1),(17,1),(18,7),(19,3),(20,10),(21,11),(22,12),(23,1),(24,1),(25,1),(26,9),(27,9),(28,2),(29,8),(30,2),(30,9),(31,1),(32,12),(33,3),(34,1),(34,2),(34,9),(35,12),(36,3),(37,7),(38,1),(38,2),(38,9),(39,1),(39,2),(50,1),(51,1),(52,7),(53,6),(54,8),(55,1),(56,6),(57,7),(58,9),(59,7),(60,1),(61,13),(62,1),(62,9),(63,1),(63,3),(63,7),(64,2),(66,13),(67,1),(67,9),(68,1),(68,9),(69,3),(70,10),(71,1),(72,2),(73,12),(74,1),(75,2),(75,9),(76,1),(77,7),(78,11),(79,7),(80,6),(80,8),(80,9),(81,9),(82,9),(83,4),(84,10),(85,1),(86,1),(87,7),(87,9),(88,7),(88,9),(89,5),(100,10),(101,9),(102,9),(103,9),(104,2),(105,10),(108,11),(109,12),(110,6),(110,8),(111,4),(111,5),(112,2),(112,3),(112,7),(113,11),(114,3),(115,1),(115,2),(116,2),(116,9),(130,3),(131,12),(132,5),(133,1),(134,1),(135,1),(136,5),(137,11),(138,13),(139,1),(140,2),(141,2),(142,2),(143,7),(144,7),(145,7),(146,7),(147,7),(148,4),(149,4);
/*!40000 ALTER TABLE `produit_genre_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `produit_info_annexe`
--

DROP TABLE IF EXISTS `produit_info_annexe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `produit_info_annexe` (
  `lib_info_annexe` varchar(255) NOT NULL,
  `id_info_annexe_produit` int(11) NOT NULL,
  `id_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_info_annexe_produit`,`id_produit`,`lib_info_annexe`),
  KEY `FK_info_annexe_produit_id_produit` (`id_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produit_info_annexe`
--

LOCK TABLES `produit_info_annexe` WRITE;
/*!40000 ALTER TABLE `produit_info_annexe` DISABLE KEYS */;
INSERT INTO `produit_info_annexe` VALUES ('Steven Spielberg',1,28),('Nick Park',1,29),('Joss Whendon',1,30),('Antoine Furqua',1,31),('EA Sports',1,37),('Tim Miller',1,38),('Christopher McQuarrie',1,39),('Peter Jackson',1,62),('Tetsurô Araki',1,63),('ELI ROTH',1,79),('Jean Fille',1,80),('Chris Colombus',1,81),('Christopher Nolan',1,83),('inspecteur derrick',1,114),('Tye Sheridan',2,28),('Tom Hiddleston',2,29),('Denzel Washington',2,31),('Frederic Souterelle : Kratos',2,34),('Ryan Reynolds',2,38),('Tom Cruise',2,39),('ANNE',2,74),('LAUREN GERMAN',2,79),('Flipper',2,80),('Lassie',2,80),('Leave Vrette',2,80),('Sam Gratte',2,80),('Daniel Radcliffe',2,81),('Emma Watson',2,81),('Russel Crow, Joaquin Phoenix',2,83),('Ben, tout les mecs qui ont joué James Bond',2,85),('Christian Slater',2,12014),('Rami Malek',2,21014),('Alain Queireix',3,33),('Philippe Lançon',3,36),(' Liv Tyler',3,62),(' Viggo Mortensen',3,62),('Elijah Wood',3,62),('DAVID DOUILLET',3,71),('CLARA MORGANE',3,73),('CONNARD',3,77),('J.K Rowling',3,82),('Maxime Chattam',3,89),('Cliff Burton',4,10),('James Hetfield',4,10),('Kirk Hammett',4,10),('Lars Ulrich',4,10),('Metallica',4,10),('texas',4,20),('Ghost ',4,21),('marc lavoine',4,22),('Gipsy King',4,32),('Claude François',4,35),('RINA SUZUKI',4,70),('CHIO',4,78),('ACDC',4,84),('nintendo',5,23),('nintendo',5,24),('Square enix',5,25),('Rocher Eds Du',5,26),('first',5,27),('Chicago 1995',5,32),('2018',5,34),('Réédition de son célèbre album de 1977',5,35),('Avril 2018',5,36),('Sept 2017',5,37),('2016',5,38),('2018',5,39),('Orelsan',5,61),('Tata rencontre Tonton et boom tata  apres flipper rencontre Lassie et Bam Lassie.',6,80),('alors, c\'est un brun un roux et une brune qui rentre dans une ecole....',6,81),('alors, c\'est un brun un roux et une brune qui rentre dans une ecole....',6,82),('gladiateur plus empereur egal scene de menage',6,83),('reuni tout les films de James Bond',6,85),('defonce du demon',6,87),('extention de diablo 3, il faut possede le premier sinon tu l\'a dans le f..',6,88),('c\'est un livre avec des pages, des mots, ca peut etre dur pour certains',6,89),('le zébre amène le courrier à maman rinoféroce',6,110),('finalement, après 2 mois de cours, une blonde intègre la 15e place de la classe',6,111),('après un malheureux tête à cul, franck se vois confié une clio 4 pendant 2 semaines',6,115),('jgjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhjhj',6,116),('un remake de la fameuse cannette',6,116),('switch',7,75),('NINTENDO 64',7,76),('nintendo switch',8,23),('nintendo switch',8,24),('playstation 4',8,25),('PS4',8,34),('PS4',8,37),('MASAMI KURUMADA',8,72),('PC, ps4',8,86),('pc, ps4',8,87),('pc',8,88),('Nintendo 64',8,12010),('Herzet',9,33),('12',9,60),('switch',9,60),('papier',10,26),('papier',10,27),('Couleur 35 mm',10,30),('Couleur',10,31),('33T',10,35),('95',10,79),('25 tours',10,113),('142 minutes',11,30),('132 minutes',11,31),('108 minutes',11,38),('Cinémascope',11,62),('259 min',11,80),('152 min',11,81),('155 min',11,83),('Tres long',11,85),('Français',12,30),('Français',12,34),('50min',12,61),('714 minutes',12,62),('300 minutes',12,63),('16',12,79),('+7',13,23),('+3',13,24),('+16',13,25),('-13',13,30),('16 ans',13,83),('12 ans',13,86),('-16',13,110);
/*!40000 ALTER TABLE `produit_info_annexe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statut_client`
--

DROP TABLE IF EXISTS `statut_client`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statut_client` (
  `id_statut_client` int(11) NOT NULL AUTO_INCREMENT,
  `lib_statut_client` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_statut_client`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statut_client`
--

LOCK TABLES `statut_client` WRITE;
/*!40000 ALTER TABLE `statut_client` DISABLE KEYS */;
INSERT INTO `statut_client` VALUES (1,'guest'),(2,'classic'),(3,'premium'),(4,'desactive'),(5,'administrateur'),(6,'magasinier'),(7,'direction');
/*!40000 ALTER TABLE `statut_client` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statut_commande`
--

DROP TABLE IF EXISTS `statut_commande`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statut_commande` (
  `id_statut_commande` int(11) NOT NULL AUTO_INCREMENT,
  `lib_statut_commande` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_statut_commande`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statut_commande`
--

LOCK TABLES `statut_commande` WRITE;
/*!40000 ALTER TABLE `statut_commande` DISABLE KEYS */;
INSERT INTO `statut_commande` VALUES (1,'selection'),(2,'panier'),(3,'payee'),(4,'en preparation'),(5,'en_livraison'),(6,'terminee'),(7,'annulee');
/*!40000 ALTER TABLE `statut_commande` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statut_fournisseur`
--

DROP TABLE IF EXISTS `statut_fournisseur`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statut_fournisseur` (
  `id_statut_fournisseur` int(11) NOT NULL AUTO_INCREMENT,
  `lib_statut_fournisseur` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_statut_fournisseur`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statut_fournisseur`
--

LOCK TABLES `statut_fournisseur` WRITE;
/*!40000 ALTER TABLE `statut_fournisseur` DISABLE KEYS */;
INSERT INTO `statut_fournisseur` VALUES (1,'actif'),(2,'inactif');
/*!40000 ALTER TABLE `statut_fournisseur` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `statut_produit`
--

DROP TABLE IF EXISTS `statut_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `statut_produit` (
  `id_statut_produit` int(11) NOT NULL AUTO_INCREMENT,
  `lib_statut_produit` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_statut_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `statut_produit`
--

LOCK TABLES `statut_produit` WRITE;
/*!40000 ALTER TABLE `statut_produit` DISABLE KEYS */;
INSERT INTO `statut_produit` VALUES (1,'en stock'),(2,'rupture'),(3,'fin de vie'),(4,'en precommande');
/*!40000 ALTER TABLE `statut_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_genre_produit`
--

DROP TABLE IF EXISTS `type_genre_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_genre_produit` (
  `id_type_produit` int(11) NOT NULL,
  `id_genre_produit` int(11) NOT NULL,
  PRIMARY KEY (`id_type_produit`,`id_genre_produit`),
  KEY `FK_type_genre_produit_id_genre_produit` (`id_genre_produit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_genre_produit`
--

LOCK TABLES `type_genre_produit` WRITE;
/*!40000 ALTER TABLE `type_genre_produit` DISABLE KEYS */;
INSERT INTO `type_genre_produit` VALUES (1,10),(1,11),(1,12),(1,13),(2,1),(2,2),(2,3),(2,4),(2,5),(2,6),(2,7),(2,8),(2,9),(3,1),(3,2),(3,3),(3,4),(3,5),(3,6),(3,7),(3,8),(3,9),(4,1),(4,2),(4,3),(4,4),(4,5),(4,6),(4,7),(4,8),(4,9),(5,1),(5,2),(5,3),(5,4),(5,5),(5,6),(5,7),(5,8),(5,9),(6,10),(6,11),(6,12),(6,13),(7,1),(7,2),(7,3),(7,4),(7,5),(7,6),(7,7),(7,8),(7,9);
/*!40000 ALTER TABLE `type_genre_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_info_annexe`
--

DROP TABLE IF EXISTS `type_info_annexe`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_info_annexe` (
  `id_info_annexe_produit` int(11) NOT NULL AUTO_INCREMENT,
  `lib_info_annexe` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_info_annexe_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_info_annexe`
--

LOCK TABLES `type_info_annexe` WRITE;
/*!40000 ALTER TABLE `type_info_annexe` DISABLE KEYS */;
INSERT INTO `type_info_annexe` VALUES (1,'realisateur'),(2,'acteur'),(3,'auteur'),(4,'interprete'),(5,'edition'),(6,'synopsis'),(7,'lien_image'),(8,'plateforme'),(9,'dessinateur'),(10,'format'),(11,'duree'),(12,'langue'),(13,'public_conseille');
/*!40000 ALTER TABLE `type_info_annexe` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `type_produit`
--

DROP TABLE IF EXISTS `type_produit`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `type_produit` (
  `id_type_produit` int(11) NOT NULL AUTO_INCREMENT,
  `lib_type_produit` varchar(255) DEFAULT NULL,
  `tva_type_produit` decimal(5,4) DEFAULT NULL,
  PRIMARY KEY (`id_type_produit`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `type_produit`
--

LOCK TABLES `type_produit` WRITE;
/*!40000 ALTER TABLE `type_produit` DISABLE KEYS */;
INSERT INTO `type_produit` VALUES (1,'cd',0.2000),(2,'dvd',0.2000),(3,'Bluray',0.2000),(4,'livre',0.0550),(5,'bd',0.0550),(6,'vinyle',0.2000),(7,'jeux',0.2000);
/*!40000 ALTER TABLE `type_produit` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Temporary table structure for view `vue_client`
--

DROP TABLE IF EXISTS `vue_client`;
/*!50001 DROP VIEW IF EXISTS `vue_client`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vue_client` (
  `id_client` tinyint NOT NULL,
  `date_inscription_client` tinyint NOT NULL,
  `nom_client` tinyint NOT NULL,
  `prenom_client` tinyint NOT NULL,
  `sexe_client` tinyint NOT NULL,
  `mail_client` tinyint NOT NULL,
  `tel_client` tinyint NOT NULL,
  `date_naissance_client` tinyint NOT NULL,
  `adresse_client` tinyint NOT NULL,
  `code_postal_client` tinyint NOT NULL,
  `ville_client` tinyint NOT NULL,
  `pays_client` tinyint NOT NULL,
  `commentaire_client` tinyint NOT NULL,
  `mdp_client` tinyint NOT NULL,
  `statut` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vue_detailCommande`
--

DROP TABLE IF EXISTS `vue_detailCommande`;
/*!50001 DROP VIEW IF EXISTS `vue_detailCommande`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vue_detailCommande` (
  `idCommande` tinyint NOT NULL,
  `dateCreation` tinyint NOT NULL,
  `idClient` tinyint NOT NULL,
  `nomClient` tinyint NOT NULL,
  `prenomClient` tinyint NOT NULL,
  `totalTTCSansRemise` tinyint NOT NULL,
  `montantRemise` tinyint NOT NULL,
  `totalTTCApresRemise` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vue_detailProduitsCommande`
--

DROP TABLE IF EXISTS `vue_detailProduitsCommande`;
/*!50001 DROP VIEW IF EXISTS `vue_detailProduitsCommande`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vue_detailProduitsCommande` (
  `idCommande` tinyint NOT NULL,
  `idProduit` tinyint NOT NULL,
  `nomProduit` tinyint NOT NULL,
  `prixProduit` tinyint NOT NULL,
  `quantiteProduit` tinyint NOT NULL,
  `totalTTCProduit` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vue_listeCommandesClient`
--

DROP TABLE IF EXISTS `vue_listeCommandesClient`;
/*!50001 DROP VIEW IF EXISTS `vue_listeCommandesClient`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vue_listeCommandesClient` (
  `id_client` tinyint NOT NULL,
  `prenomClient` tinyint NOT NULL,
  `nomClient` tinyint NOT NULL,
  `idCommande` tinyint NOT NULL,
  `dateCommande` tinyint NOT NULL,
  `totalNbProduit` tinyint NOT NULL,
  `TotalTTCCommande` tinyint NOT NULL,
  `statutCommande` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vue_listeProduits`
--

DROP TABLE IF EXISTS `vue_listeProduits`;
/*!50001 DROP VIEW IF EXISTS `vue_listeProduits`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vue_listeProduits` (
  `idProduit` tinyint NOT NULL,
  `nomProduit` tinyint NOT NULL,
  `quantiteStock` tinyint NOT NULL,
  `stockMinimum` tinyint NOT NULL,
  `StockObjectif` tinyint NOT NULL,
  `prixVenteHT` tinyint NOT NULL,
  `tauxTVA` tinyint NOT NULL,
  `prixVenteTTC` tinyint NOT NULL,
  `idtypeProduit` tinyint NOT NULL,
  `libelleTypeProduit` tinyint NOT NULL,
  `idStatutProduit` tinyint NOT NULL,
  `libelleStatutProduit` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Temporary table structure for view `vue_paniers`
--

DROP TABLE IF EXISTS `vue_paniers`;
/*!50001 DROP VIEW IF EXISTS `vue_paniers`*/;
SET @saved_cs_client     = @@character_set_client;
SET character_set_client = utf8;
/*!50001 CREATE TABLE `vue_paniers` (
  `idCommande` tinyint NOT NULL,
  `dateCreation` tinyint NOT NULL,
  `idClient` tinyint NOT NULL,
  `nomClient` tinyint NOT NULL,
  `prenomClient` tinyint NOT NULL,
  `totalTTCSansRemise` tinyint NOT NULL,
  `montantRemise` tinyint NOT NULL,
  `totalTTCApresRemise` tinyint NOT NULL
) ENGINE=MyISAM */;
SET character_set_client = @saved_cs_client;

--
-- Table structure for table `warning`
--

DROP TABLE IF EXISTS `warning`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `warning` (
  `id_warning` int(11) NOT NULL AUTO_INCREMENT,
  `lib_warning` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`id_warning`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `warning`
--

LOCK TABLES `warning` WRITE;
/*!40000 ALTER TABLE `warning` DISABLE KEYS */;
INSERT INTO `warning` VALUES (1,'Fin de série'),(2,'Production stoppée'),(3,'Ventes stoppées');
/*!40000 ALTER TABLE `warning` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'ecommerce'
--

--
-- Dumping routines for database 'ecommerce'
--
/*!50003 DROP FUNCTION IF EXISTS `func_calcul_ttc` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` FUNCTION `func_calcul_ttc`(idCommande int) RETURNS double
begin
	set @retour=0;
	if (isnull(idCommande)=false||idCommande>0) then
		set @remise=(select remise_globale from commande where id_commande=idCommande);
        set @total = (select sum(totalTTCProduit) from vue_detailProduitsCommande where vue_detailProduitsCommande.idCommande=idCommande);
        if (isnull(@remise)||@remise=0) then			
            set @retour = @total;
		else
			set @retour = @total-(@total*@remise);
		end if;
	end if;
    return @retour;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_check_id_for_connexion` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_check_id_for_connexion`(in mail varchar(255), in mdp varchar(255), out errCode integer, out errMessage varchar(255), out myCheck boolean)
begin
	declare exit handler for 1062
    begin
		set errCode=1062;
        set errMessage="Entrée déjà présente dans la BDD";
        set myCheck=false;
        rollback;
	end;
	start transaction;
    set errCode=0;
    set errMessage="";
    set myCheck=true;
    
    set @retour=0;
    set @retour=(select count(*) from client where mail_client=mail and mdp_client=mdp);
    
    if (@retour<1) then
		set myCheck=false;
	end if;
    
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_deleteGuest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_deleteGuest`(in idClient int, 
	out erreurCode int, out erreurMessage varchar(255), out isSuccess boolean)
begin
	declare exit handler for sqlexception
    begin
		get diagnostics condition 1 erreurCode= mysql_errno;
        set erreurMessage=message_text;
        set isSuccess=false;
        rollback;
	end;
	declare exit handler for 1106
    begin
		get diagnostics condition 1 erreurCode=mysql_errno;
        set erreurMessage="paramètres incorrects";
        set isSuccess=false;
        rollback;
	end;
	declare exit handler for 1146
    begin
		get diagnostics condition 1 erreurCode=mysql_errno;
        set erreurMessage="table inexistante";
        set isSuccess=false;
        rollback;
	end;
    declare exit handler for 20005
    begin
		get diagnostics condition 1 erreurCode=mysql_errno;
        set erreurMessage="id client non valide";
        set isSuccess=false;
        rollback;
	end;
    start transaction;
    set erreurCode=0;
    set erreurMessage='';
    set isSuccess=true;
    if (idClient =0 || isnull(idClient)) then
		signal sqlstate '20005';
	end if;
    
    delete from client where client.id_client=idClient;
    
	commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_get_libStatutClient_by_idclient` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_get_libStatutClient_by_idclient`(in idClient int, out errCode int, out errMessage varchar(255), out idStatut int, out libelle varchar(255))
begin
	declare exit handler for sqlexception
    begin
		get diagnostics condition 1 errCode=mysql_errno, errMessage=message_text;
        -- set errMessage='Erreur survenue dans le traitement';
        set libelle='';
        set idStatut=0;
        rollback;
	end;
    declare exit handler for 20002
    begin
		get diagnostics condition 1 errCode=mysql_errno;
        set errCode=20002;
        set errMessage='Id client non reconnu';
        set libelle='';
        set idStatut=0;
	end;
    start transaction;
    set errcode=0;
    set errMessage='';
    set libelle=(select lib_statut_client from statut_client, client, histo_client
					where client.id_client=histo_client.id_client
					and histo_client.id_statut_client=statut_client.id_statut_client
                    and client.id_client=idClient
                    order by histo_client.date_chg_statut desc limit 1);
	set idStatut=(select statut_client.id_statut_client from statut_client, client, histo_client
					where client.id_client=histo_client.id_client
					and histo_client.id_statut_client=statut_client.id_statut_client
                    and client.id_client=idClient
                    order by histo_client.date_chg_statut desc limit 1);
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_insert_client`(
	in date_inscription datetime, 
    in nom varchar(255), 
    in prenom varchar(255), 
    in sexe char(1), 
    in mail varchar(255), 
    in tel varchar(25),
    in date_naissance datetime, 
    in adresse varchar(255), 
    in cp int, 
    in ville varchar(255), 
    in pays varchar(255), 
    in commentaire varchar(1000), 
    in mdp varchar(25), 
    out err_code int, 
    out err_mess varchar(255), 
    out id_insert int)
begin
	declare nomVide condition for sqlstate '20001';
    declare mailVide condition for sqlstate '20002';
    declare mdpVide condition for sqlstate '20003';
    declare exit handler for nomVide, mailVide, mdpVide, 1062, 1022
    begin
		get diagnostics condition 1 err_code=mysql_errno;
        set id_insert=0;
        case err_code
			when '20001' then set err_mess = 'le nom est vide';
            when '20002' then set err_mess = 'le mail est vide';
            when '20003' then set err_mess = 'le mot de passe est vide';
            when '1062' then set err_mess = 'le mail est déjà enregistré';
            when '1022' then set err_mess = 'le mail est déjà enregistré';
		rollback;
        end case;
    end;
    declare exit handler for sqlexception
    begin
		get diagnostics condition 1 err_code=mysql_errno;
        set id_insert=0;
        set err_mess='Une erreur inattendue est arrivée';
		rollback;
    end;
    start transaction;
    set err_code=0;
    set err_mess='';
    set id_insert=0;
    -- Si la date est vide --> now()
    if (isnull(date_inscription)||date_inscription=0) then
		set date_inscription=now();
    end if;    
    -- si nom vide -->signal
    if (isnull(nom)||nom='') then
		signal nomVide set mysql_errno=20001;
	end if;
    -- si mail vide -->signal, si le mail existe déjà une erreur se lancera toute seule
    if (isnull(mail)||mail='') then
		signal mailVide set mysql_errno=20002;
	end if;
    -- si mdp vide -->signal
    if (isnull(mdp)||mdp='') then
		signal mdpVide set mysql_errno=20003;
	end if;
    -- Insertion
    insert into client (`date_inscription_client`,`nom_client`,`prenom_client`,`sexe_client`,`mail_client`,`tel_client`,`date_naissance_client`,
	`adresse_client`,`code_postal_client`,`ville_client`,`pays_client`,`commentaire_client`,`mdp_client`)
    values(date_inscription, nom, prenom, sexe, mail, tel, date_naissance, adresse, cp, ville, pays, commentaire, mdp);
    set id_insert=(select last_insert_id());
    -- Maj de la table histo_client auto via trigger
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_client_guest` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_insert_client_guest`(
    out err_code integer,
    out err_mess varchar(255),
    out id_insert integer)
begin
	-- Erreur personnalisée lancée si le client n'est pas un guest
    declare client_non_guest condition for sqlstate '20001';
	-- Gestion de l'erreur personnalisée
    declare exit handler for client_non_guest
    begin
		get diagnostics condition 1
		err_code=mysql_errno;
        set err_mess='Le client n\'est pas un guest';
        set id_insert=0;
        rollback;
	end;
	-- Erreur générale non gérée dans les autres handlers
	declare exit handler for sqlexception    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO, err_mess=MESSAGE_TEXT;
        set id_insert=0;
        rollback;
	end;
    -- Erreur de paramètres
    declare exit handler for 1106    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Paramètres passés incorrects';
        set id_insert=0;
        rollback;
	end;
    -- Table inexistante
    declare exit handler for 1146    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Table inexistante dans la bdd';
        set id_insert=0;
        rollback;
	end;
    -- Contrainte non respectée
    declare exit handler for 1452    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Une contrainte de clés étrangère n\'est pas respectée';
        set id_insert=0;
        rollback;
	end;
    start transaction;
    set err_code=0;
    set err_mess='';
    
    -- date, nom, mdp, mail
    insert into client(date_inscription_client, nom_client, mdp_client, mail_client)values(now(), (concat('guest_',curdate(), "_", curtime())), 'guest_mdp', (concat('guest_',curdate(), "_", curtime())));
    set id_insert=(select last_insert_id());
    
    -- le trigger est modifié pour prendre en compte le statut du client lors de la création (classic ou guest)
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_commande` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_insert_commande`(
	in remise_globale decimal(5,4),
    in date_creation datetime,
    in idClient integer,
    out err_code integer,
    out err_mess varchar(255),
    out id_insert integer)
begin
	-- Erreur personnalisée lancée si le client n'est pas un guest
    declare client_non_guest condition for sqlstate '20001';
	-- Gestion de l'erreur personnalisée
    declare exit handler for client_non_guest
    begin
		get diagnostics condition 1
		err_code=mysql_errno;
        set err_mess='Le client n\'est pas un guest';
        set id_insert=0;
        rollback;
	end;
	-- Erreur générale non gérée dans les autres handlers
	declare exit handler for sqlexception    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO, err_mess=MESSAGE_TEXT;
        set id_insert=0;
        rollback;
	end;
    -- Erreur de paramètres
    declare exit handler for 1106    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Paramètres passés incorrects';
        set id_insert=0;
        rollback;
	end;
    -- Erreur de doublons
    declare exit handler for 1062, 1022    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Données déjà présentes dans la BDD, doublons interdits';
        set id_insert=0;
        rollback;
	end;
    -- Table inexistante
    declare exit handler for 1146    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Table inexistante dans la bdd';
        set id_insert=0;
        rollback;
	end;
    -- Contrainte non respectée
    declare exit handler for 1452    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Une contrainte de clés étrangère n\'est pas respectée';
        set id_insert=0;
        rollback;
	end;
    start transaction;
    set err_code=0;
	set err_mess='';
    
    -- 1. Obtenir le statut du client via son ID et vérifier qu'il est bien guest
    set @statut_client = (select lib_statut_client from client, histo_client, statut_client where
				client.id_client= idClient
				and client.id_client=histo_client.id_client
                and histo_client.id_statut_client=statut_client.id_statut_client
                );
	if (isnul(date_creation)) then
		set date_creation=(concat(curdate(), "_", curtime()));
    end if;
	-- 2. Si oui, insertion
	-- if (@statut_client='guest') then
		INSERT INTO commande(`remise_globale`,`date_creation_commande`,`id_client`)VALUES(remise_globale,date_creation,idClient);
		set id_insert=(select last_insert_id());
		commit;
	/* else
		-- 2.1. Déclenche une erreur perso pour avertir
        signal client_non_guest set mysql_errno=20001;
	end if; */
    -- 3. Le statut de la commande est changé par une procédure stockée, lancée par un trigger 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_commande_facultatif` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_insert_commande_facultatif`(
	in remise_globale decimal(5,4),
    in date_creation datetime,
    in idClient integer,
    out err_code integer,
    out err_mess varchar(255),
    out id_insert_client_guest integer,
    out id_commande_insert int)
begin
	-- Erreurs personnalisées lancée si le client n'est pas un guest
    declare client_non_guest condition for sqlstate '20001';
    declare erreur_insertion_guest condition for sqlstate '20004';
	-- Gestion de l'erreur personnalisée
    declare exit handler for client_non_guest
    begin
		get diagnostics condition 1
		err_code=mysql_errno;
        set err_mess='Le client n\'est pas un guest';
        set id_insert_client_guest=0;
        rollback;
	end;
    -- Gestion de l'erreur d'insertion de guest
    declare exit handler for erreur_insertion_guest
    begin
		get diagnostics condition 1
		err_code=mysql_errno;
        set err_mess='Erreur dans l\'insertion d\'un guest';
        set id_insert_client_guest=0;
        rollback;
	end;
	-- Erreur générale non gérée dans les autres handlers
	declare exit handler for sqlexception    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO, err_mess=MESSAGE_TEXT;
        set id_insert_client_guest=0;
        rollback;
	end;
    -- Erreur de paramètres
    declare exit handler for 1106    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Paramètres passés incorrects';
        set id_insert_client_guest=0;
        rollback;
	end;
    -- Erreur de doublons
    declare exit handler for 1062, 1022    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Données déjà présentes dans la BDD, doublons interdits';
        set id_insert_client_guest=0;
        rollback;
	end;
    -- Table inexistante
    declare exit handler for 1146    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Table inexistante dans la bdd';
        set id_insert_client_guest=0;
        rollback;
	end;
    -- Contrainte non respectée
    declare exit handler for 1452    
    begin
		get diagnostics condition 1
		err_code=MYSQL_ERRNO;
        set err_mess='Une contrainte de clés étrangère n\'est pas respectée';
        set id_insert_client_guest=0;
        rollback;
	end;
    start transaction;
    set err_code=0;
	set err_mess='';
    
    -- 0. Déterminer si le client doit être enregistré (guest)
    if (idClient=-1) then
		set @err_code=-1;
		call sp_insert_client_facultatif(@err_code, @err_mess, @id_retour);
        set idClient = @id_retour;
        set id_insert_client_guest=@id_retour;
        if (@err_code= -1) then
			signal erreur_insertion_guest set mysql_errno=20004;
		end if;
    end if;
    
    -- 1. Obtenir le statut du client via son ID et vérifier qu'il est bien guest
    set @statut_client = (select lib_statut_client from client, histo_client, statut_client where
				client.id_client= idClient
				and client.id_client=histo_client.id_client
                and histo_client.id_statut_client=statut_client.id_statut_client
                );
	-- 2. Si oui, insertion
	if (@statut_client='guest') then
		INSERT INTO commande(`remise_globale`,`date_creation_commande`,`id_client`)VALUES(remise_globale,date_creation,idClient);
		set id_commande_insert=(select last_insert_id());
		commit;
	else
		-- 2.1. Déclenche une erreur perso pour avertir
        signal client_non_guest set mysql_errno=20001;
	end if;
    -- 3. Le statut de la commande est changé par une procédure stockée, lancée par un trigger 
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_histo_client` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_insert_histo_client`(my_id_client int, my_id_statut_client int)
begin
    -- Si l'id_statut est incorrect
    if (my_id_statut_client=null || my_id_statut_client=0) then
		signal sqlstate '20002' set mysql_errno=20002, message_text='Statut de client invalide';
	end if;
    insert into histo_client values(now(), my_id_statut_client, my_id_client);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_histo_commande` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_insert_histo_commande`(my_id_commande int, my_id_statut_commande int)
begin
    -- Si l'id_statut est incorrect
    if (isnull(my_id_statut_commande) || my_id_statut_commande=0) then
		signal sqlstate '20002' set mysql_errno=20002, message_text='Statut de commande invalide';
	end if;
    insert into histo_commande values(now(), my_id_statut_commande, my_id_commande);
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_insert_produit_commande` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_insert_produit_commande`(
	in idCommande int,
	in idClient int, 
    in idProduit int,
	in quantiteProduit int, 
    in prixHT decimal(15,3), 
    in remise decimal (5,4), 
    in tauxTVA decimal (5,4),
    out erreurCode int, 
    out erreurMessage varchar(255), 
    out idCommandePanier int)
begin
	declare idProduitVide condition for sqlstate '20006';
    declare idClientVide condition for sqlstate '20007';
    declare quantiteVide condition for sqlstate '20008';
    declare idCommandeInvalide condition for sqlstate '20009';
    declare majCommandeProduit condition for sqlstate '20010';
	declare exit handler for idProduitVide, quantiteVide, idClientVide, idCommandeInvalide, majCommandeProduit
    begin
		get diagnostics condition 1 erreurCode=mysql_errno;
        case erreurCode
			when '20006' then set erreurMessage = 'id produit invalide';
            when '20007' then set erreurMessage = 'id client invalide';
			when '20008' then set erreurMessage = 'quantité produit vide';
            when '20009' then set erreurMessage = 'id commande ni en paramètre ni retrouvé';
            when '20010' then set erreurMessage = 'table commande_produit mise à jour';
        end case;
        set idCommandePanier=-1;
        rollback;
	end;  
	start transaction; 
    set @flag=-1;
    set idCommandePanier=-1;
    set @idCommande=0;
    set @totalQuantite=0;
    set @id_dernier_statut_commande=0;
    set @id_panier=0;
    set @qteTemp=0;
    set @temp=0;
    set @retour=0;
    set erreurCode=-1;
    set erreurMessage="";
    if (isnull(idProduit)||idProduit=0) then
		signal idProduitVide set mysql_errno=20006;
    end if;
    if (isnull(quantiteProduit)||quantiteProduit=0) then
		signal quantiteVide set mysql_errno=20008;
	end if;
    if (isnull(idClient)||idClient=0) then
		signal idClientVide set mysql_errno=20007;
	end if;
    -- Test idcommande
    set @idCommande=-1;
    if (isnull(idCommande)||idCommande<=0) then
		-- Récupère l'id de la dernière commande passée par le client
        set @idCommande=(select commande.id_commande 
			from histo_commande, commande
			where histo_commande.id_commande=commande.id_commande
			and commande.id_client=idClient
			order by date_chg_statut desc limit 1);
		-- si on a un client n'ayant pas passer de commande
        if (isnull(@idCommande))then
			insert into commande(date_creation_commande, id_client)values(now(), idClient);
            set @idCommande=(select last_insert_id());
		else
			-- Récupère le dernier statut de cette commande
			set @id_dernier_statut_commande = (select max(histo_commande.id_statut_commande) as max
				from statut_commande, histo_commande
				where histo_commande.id_statut_commande=statut_commande.id_statut_commande
				and id_commande=@idCommande);
			-- Id de la catégorie panier
			set @id_panier = (select id_statut_commande
				from statut_commande
				where lib_statut_commande='panier');
			-- Si la dernière commande enregistrée n'est pas un panier
			if (@id_dernier_statut_commande!=@id_panier) then
				insert into commande(date_creation_commande, id_client)values(now(), idClient);
				set @idCommande=(select last_insert_id());
			end if;
        end if;
	else	
		set @idCommande=idCommande;
    end if;
	-- si le prixHT est vide, on voit si il y en a dans produit
	if (isnull(prixHT)||prixHT=0) then
		set prixHT=(select prixht_produit from produit where id_produit=idProduit);
	end if;
	-- si aucune remise précisé, on voit si il y en a dans histo_produit
	if (isnull(remise)||remise=0.0) then
		set @temp=(select remise_eventuelle from histo_produit where id_produit=idProduit);
		if (isnull(@temp)||@temp=0)then 
			set remise=0;
		else 
			set remise=@temp;
		end if;
	end if;
	if (isnull(tauxTVA)||tauxTVA=0.0) then
		set @temp= (select tva_produit from produit where id_produit=idProduit);
		if (isnull(@temp)||@temp=0) then
			set tauxTVA= 0;
		else 
			set tauxTVA= @temp;
		end if;
	end if;        
	if (isnull(remise)||remise=0) then
		set @prixTTC=prixHT*(1+tauxTVA);
	else
		set @prixTTC=(prixHT*(1+tauxTVA))*(1-remise);
	end if; 
	set @qteTemp = (select quantite_produit from commande_produit
					where id_produit=idProduit
					and id_commande=@idCommande);
	if (@qteTemp>0||!isnull(@qteTemp)) then
		set @totalQuantite=@qteTemp+quantiteProduit;
		update commande_produit set quantite_produit=@totalQuantite where id_commande=@idCommande and id_produit=idProduit;
        set idCommandePanier = @idCommande;
        commit;
        signal majCommandeProduit set mysql_errno=20010;
	else 
		insert into commande_produit(quantite_produit, prix_HT_unitaire_debut, remise_appliquee, tva_appliquee, prix_TTC_unitaire_final, id_commande, id_produit)
		values(quantiteProduit, prixHT, remise, tauxTVA, @prixTTC, @idCommande, idProduit);
		set idCommandePanier=(select last_insert_id()); 
		set @retour=idCommandePanier;
	end if;		
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_lib_dernier_statut_produit` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_lib_dernier_statut_produit`(in id_produit_recherche int, 
	in nom_table varchar(255),
	out id_retour int,
	out lib_statut_demande varchar(255),
    out err_code int,
    out err_mess varchar(255))
begin	
	declare nom_table_invalide condition for sqlstate '20003';
    declare exit handler for nom_table_invalide
    begin
		get diagnostics condition 1 err_code=mysql_errno;
        set id_retour=0;
        set lib_statut_demande='';
        set err_mess='Nom de table invalide';
        rollback;
	end;
    declare exit handler for sqlexception
    begin
		get diagnostics condition 1 err_code=mysql_errno , err_mess=message_text;
        -- set err_mess='Erreur survenue dans le traitement';
        set id_retour=0;
        set lib_statut_demande='';
        rollback;
	end;
    if (id_produit_recherche=0 || isnull(id_produit_recherche)) then
		signal sqlstate '20002' set mysql_errno=20002, message_text='identifiant de produit invalide'; 
	end if;
    if (nom_table<>'histo_produit' && nom_table<>'histo_client' && nom_table<>'histo_commande' && nom_table<>'histo_fournisseur') then
        signal nom_table_invalide set mysql_errno=20003;
	end if;
    start transaction;
    set err_code=0;
    set err_mess='';
    if (nom_table='histo_produit') then
		select statut_produit.lib_statut_produit, statut_produit.id_statut_produit into lib_statut_demande, id_retour
							from produit, histo_produit, statut_produit
                            where produit.id_produit=histo_produit.id_produit
                            and histo_produit.id_statut_produit=statut_produit.id_statut_produit
                            and produit.id_produit=id_produit_recherche
                            order by histo_produit.date_chg_statut desc
                            limit 1;
	end if;
    if (nom_table='histo_client') then
		select statut_client.lib_statut_client, statut_client.id_statut_client into lib_statut_demande, id_retour
							from client, histo_client, statut_client
                            where client.id_client=histo_client.id_client
                            and histo_client.id_statut_client=statut_client.id_statut_client
                            and client.id_client=id_produit_recherche
                            order by histo_client.date_chg_statut desc
                            limit 1;
	end if;
    if (nom_table='histo_commande') then
		select statut_commande.lib_statut_commande, statut_commande.id_statut_commande into lib_statut_demande, id_retour
							from commande, histo_commande, statut_commande
                            where commande.id_commande=histo_commande.id_commande
                            and histo_commande.id_statut_commande=statut_commande.id_statut_commande
                            and commande.id_commande=id_produit_recherche
                            order by histo_commande.date_chg_statut desc
                            limit 1;
	end if;
    if (nom_table='histo_fournisseur') then
		select statut_fournisseur.lib_statut_fournisseur, statut_fournisseur.id_statut_fournisseur into lib_statut_demande, id_retour
							from fournisseur, histo_fournisseur, statut_fournisseur
                            where fournisseur.id_fournisseur=histo_fournisseur.id_fournisseur
                            and histo_fournisseur.id_statut_fournisseur=statut_fournisseur.id_statut_fournisseur
                            and fournisseur.id_fournisseur=id_produit_recherche
                            order by histo_fournisseur.date_chg_statut desc
                            limit 1;
	end if;
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;
/*!50003 DROP PROCEDURE IF EXISTS `sp_validation_panier` */;
/*!50003 SET @saved_cs_client      = @@character_set_client */ ;
/*!50003 SET @saved_cs_results     = @@character_set_results */ ;
/*!50003 SET @saved_col_connection = @@collation_connection */ ;
/*!50003 SET character_set_client  = utf8 */ ;
/*!50003 SET character_set_results = utf8 */ ;
/*!50003 SET collation_connection  = utf8_general_ci */ ;
/*!50003 SET @saved_sql_mode       = @@sql_mode */ ;
/*!50003 SET sql_mode              = 'NO_AUTO_CREATE_USER,NO_ENGINE_SUBSTITUTION' */ ;
DELIMITER ;;
CREATE DEFINER=`jojo`@`localhost` PROCEDURE `sp_validation_panier`(in idCommande int, out errMessage varchar(255), out errCode int, out success boolean)
begin
	declare idCommande_invalide condition for sqlstate '20001';
	declare exit handler for sqlexception, idCommande_invalide
    begin
		get diagnostics condition 1 errCode=mysql_errno;
        case mysql_errno
			when '20001' then set errMessage = 'id commande invalide';
            when 'sqlexception' then set errMessage='Erreur inattendue lors du changement de statut';
        end case;
        set success=false;
        rollback;
	end;
    start transaction;
    set errCode=0;
    set errMessage='';
    set success=true;
    -- Si l'id de la commande en paramètre est invalide
    if (!idCommande>0) then
		signal idCommande_invalide set mysql_errno = 2001;
	end if;
    -- insertion
    
    insert into histo_commande(date_chg_statut, id_statut_commande, id_commande)values(now(), (select (id_statut_commande+1)from statut_commande where lib_statut_commande='panier'), idCommande);
    commit;
end ;;
DELIMITER ;
/*!50003 SET sql_mode              = @saved_sql_mode */ ;
/*!50003 SET character_set_client  = @saved_cs_client */ ;
/*!50003 SET character_set_results = @saved_cs_results */ ;
/*!50003 SET collation_connection  = @saved_col_connection */ ;

--
-- Final view structure for view `vue_client`
--

/*!50001 DROP TABLE IF EXISTS `vue_client`*/;
/*!50001 DROP VIEW IF EXISTS `vue_client`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jojo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_client` AS select `client`.`id_client` AS `id_client`,`client`.`date_inscription_client` AS `date_inscription_client`,`client`.`nom_client` AS `nom_client`,`client`.`prenom_client` AS `prenom_client`,`client`.`sexe_client` AS `sexe_client`,`client`.`mail_client` AS `mail_client`,`client`.`tel_client` AS `tel_client`,`client`.`date_naissance_client` AS `date_naissance_client`,`client`.`adresse_client` AS `adresse_client`,`client`.`code_postal_client` AS `code_postal_client`,`client`.`ville_client` AS `ville_client`,`client`.`pays_client` AS `pays_client`,`client`.`commentaire_client` AS `commentaire_client`,`client`.`mdp_client` AS `mdp_client`,`statut_client`.`lib_statut_client` AS `statut` from ((`client` join `statut_client`) join `histo_client`) where ((`client`.`id_client` = `histo_client`.`id_client`) and (`histo_client`.`id_statut_client` = `statut_client`.`id_statut_client`) and (`statut_client`.`lib_statut_client` = (select `statut_client`.`lib_statut_client` from (`histo_client` join `statut_client`) where ((`histo_client`.`id_statut_client` = `statut_client`.`id_statut_client`) and (`histo_client`.`id_client` = `client`.`id_client`)) order by `histo_client`.`date_chg_statut` desc limit 1))) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_detailCommande`
--

/*!50001 DROP TABLE IF EXISTS `vue_detailCommande`*/;
/*!50001 DROP VIEW IF EXISTS `vue_detailCommande`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jojo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_detailCommande` AS select `commande`.`id_commande` AS `idCommande`,date_format(`commande`.`date_creation_commande`,'%d/%m/%Y') AS `dateCreation`,`client`.`id_client` AS `idClient`,`client`.`nom_client` AS `nomClient`,`client`.`prenom_client` AS `prenomClient`,sum((`commande_produit`.`quantite_produit` * `commande_produit`.`prix_TTC_unitaire_final`)) AS `totalTTCSansRemise`,(sum((`commande_produit`.`quantite_produit` * `commande_produit`.`prix_TTC_unitaire_final`)) * `commande_produit`.`remise_appliquee`) AS `montantRemise`,(sum((`commande_produit`.`quantite_produit` * `commande_produit`.`prix_TTC_unitaire_final`)) - (sum((`commande_produit`.`quantite_produit` * `commande_produit`.`prix_TTC_unitaire_final`)) * `commande_produit`.`remise_appliquee`)) AS `totalTTCApresRemise` from (((`produit` join `commande_produit`) join `commande`) join `client`) where ((`produit`.`id_produit` = `commande_produit`.`id_produit`) and (`commande`.`id_commande` = `commande_produit`.`id_commande`) and (`client`.`id_client` = `commande`.`id_client`)) group by `commande`.`id_commande` */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_detailProduitsCommande`
--

/*!50001 DROP TABLE IF EXISTS `vue_detailProduitsCommande`*/;
/*!50001 DROP VIEW IF EXISTS `vue_detailProduitsCommande`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jojo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_detailProduitsCommande` AS select `commande_produit`.`id_commande` AS `idCommande`,`produit`.`id_produit` AS `idProduit`,`produit`.`nom_produit` AS `nomProduit`,`commande_produit`.`prix_TTC_unitaire_final` AS `prixProduit`,`commande_produit`.`quantite_produit` AS `quantiteProduit`,(`commande_produit`.`quantite_produit` * `commande_produit`.`prix_TTC_unitaire_final`) AS `totalTTCProduit` from (`produit` join `commande_produit`) where (`produit`.`id_produit` = `commande_produit`.`id_produit`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_listeCommandesClient`
--

/*!50001 DROP TABLE IF EXISTS `vue_listeCommandesClient`*/;
/*!50001 DROP VIEW IF EXISTS `vue_listeCommandesClient`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jojo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_listeCommandesClient` AS select `client`.`id_client` AS `id_client`,`client`.`prenom_client` AS `prenomClient`,`client`.`nom_client` AS `nomClient`,`commande`.`id_commande` AS `idCommande`,date_format(`commande`.`date_creation_commande`,'%d/%m/%Y') AS `dateCommande`,(select sum(`commande_produit`.`quantite_produit`) from `commande_produit` where (`commande_produit`.`id_commande` = `idCommande`)) AS `totalNbProduit`,(select `func_calcul_ttc`(`idCommande`) group by `idCommande`) AS `TotalTTCCommande`,(select `statut_commande`.`lib_statut_commande` from (`statut_commande` join `histo_commande`) where ((`statut_commande`.`id_statut_commande` = `histo_commande`.`id_statut_commande`) and (`histo_commande`.`id_commande` = `idCommande`)) order by `histo_commande`.`date_chg_statut` desc limit 1) AS `statutCommande` from (`client` join `commande`) where (`client`.`id_client` = `commande`.`id_client`) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_listeProduits`
--

/*!50001 DROP TABLE IF EXISTS `vue_listeProduits`*/;
/*!50001 DROP VIEW IF EXISTS `vue_listeProduits`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jojo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_listeProduits` AS select `produit`.`id_produit` AS `idProduit`,`produit`.`nom_produit` AS `nomProduit`,`produit`.`stock_inventaire_produit` AS `quantiteStock`,`produit`.`stock_minimum` AS `stockMinimum`,`produit`.`stock_objectif` AS `StockObjectif`,`produit`.`prixht_produit` AS `prixVenteHT`,`produit`.`tva_produit` AS `tauxTVA`,(`produit`.`prixht_produit` * (1 + `produit`.`tva_produit`)) AS `prixVenteTTC`,`produit`.`id_type_produit` AS `idtypeProduit`,`type_produit`.`lib_type_produit` AS `libelleTypeProduit`,(select `statut_produit`.`id_statut_produit` from ((`statut_produit` join `histo_produit`) join `produit`) where ((`statut_produit`.`id_statut_produit` = `histo_produit`.`id_statut_produit`) and (`histo_produit`.`id_produit` = `produit`.`id_produit`) and (`produit`.`id_produit` = `idProduit`)) order by `histo_produit`.`date_chg_statut` desc limit 1) AS `idStatutProduit`,(select `statut_produit`.`lib_statut_produit` from ((`statut_produit` join `histo_produit`) join `produit`) where ((`statut_produit`.`id_statut_produit` = `histo_produit`.`id_statut_produit`) and (`histo_produit`.`id_produit` = `produit`.`id_produit`) and (`produit`.`id_produit` = `idProduit`)) order by `histo_produit`.`date_chg_statut` desc limit 1) AS `libelleStatutProduit` from (((`produit` join `type_produit`) join `histo_produit`) join `statut_produit`) where ((`produit`.`id_type_produit` = `type_produit`.`id_type_produit`) and (`produit`.`id_produit` = `histo_produit`.`id_produit`) and (`histo_produit`.`id_statut_produit` = `statut_produit`.`id_statut_produit`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;

--
-- Final view structure for view `vue_paniers`
--

/*!50001 DROP TABLE IF EXISTS `vue_paniers`*/;
/*!50001 DROP VIEW IF EXISTS `vue_paniers`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8 */;
/*!50001 SET character_set_results     = utf8 */;
/*!50001 SET collation_connection      = utf8_general_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`jojo`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `vue_paniers` AS select `vue_detailCommande`.`idCommande` AS `idCommande`,`vue_detailCommande`.`dateCreation` AS `dateCreation`,`vue_detailCommande`.`idClient` AS `idClient`,`vue_detailCommande`.`nomClient` AS `nomClient`,`vue_detailCommande`.`prenomClient` AS `prenomClient`,`vue_detailCommande`.`totalTTCSansRemise` AS `totalTTCSansRemise`,`vue_detailCommande`.`montantRemise` AS `montantRemise`,`vue_detailCommande`.`totalTTCApresRemise` AS `totalTTCApresRemise` from ((`vue_detailCommande` join `histo_commande`) join `statut_commande`) where ((`statut_commande`.`lib_statut_commande` = 'panier') and (`histo_commande`.`id_statut_commande` = `statut_commande`.`id_statut_commande`) and (`histo_commande`.`id_commande` = `vue_detailCommande`.`idCommande`)) */;
/*!50001 SET character_set_client      = @saved_cs_client */;
/*!50001 SET character_set_results     = @saved_cs_results */;
/*!50001 SET collation_connection      = @saved_col_connection */;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2018-09-06 13:01:14
