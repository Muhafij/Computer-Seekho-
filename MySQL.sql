CREATE DATABASE  IF NOT EXISTS `computerseekhoapp` /*!40100 DEFAULT CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci */ /*!80016 DEFAULT ENCRYPTION='N' */;
USE `computerseekhoapp`;
-- MySQL dump 10.13  Distrib 8.0.42, for Win64 (x86_64)
--
-- Host: localhost    Database: computerseekhoapp
-- ------------------------------------------------------
-- Server version	8.0.42

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
-- Table structure for table `albums`
--

DROP TABLE IF EXISTS `albums`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `albums` (
  `album_id` int NOT NULL AUTO_INCREMENT,
  `album_description` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `album_name` varchar(255) NOT NULL,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  PRIMARY KEY (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `albums`
--

LOCK TABLES `albums` WRITE;
/*!40000 ALTER TABLE `albums` DISABLE KEYS */;
/*!40000 ALTER TABLE `albums` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `batch`
--

DROP TABLE IF EXISTS `batch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `batch` (
  `batch_id` int NOT NULL AUTO_INCREMENT,
  `batch_end_time` date DEFAULT NULL,
  `batch_is_active` bit(1) DEFAULT NULL,
  `batch_name` varchar(255) DEFAULT NULL,
  `batch_photo_url` varchar(255) DEFAULT NULL,
  `batch_start_time` date DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`batch_id`),
  KEY `FKlyo26rvg0hs090cwqxgxrw0xn` (`course_id`),
  CONSTRAINT `FKlyo26rvg0hs090cwqxgxrw0xn` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `batch`
--

LOCK TABLES `batch` WRITE;
/*!40000 ALTER TABLE `batch` DISABLE KEYS */;
INSERT INTO `batch` VALUES (2,NULL,_binary '','Batch A',NULL,NULL,1),(3,NULL,_binary '','Batch A',NULL,NULL,2),(4,NULL,_binary '','Batch A',NULL,NULL,5),(5,NULL,_binary '','Batch A',NULL,NULL,8);
/*!40000 ALTER TABLE `batch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `closure_reason`
--

DROP TABLE IF EXISTS `closure_reason`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `closure_reason` (
  `closure_reason_id` int NOT NULL AUTO_INCREMENT,
  `closure_reason_desc` varchar(255) DEFAULT NULL,
  `enquirer_name` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`closure_reason_id`)
) ENGINE=InnoDB AUTO_INCREMENT=18 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `closure_reason`
--

LOCK TABLES `closure_reason` WRITE;
/*!40000 ALTER TABLE `closure_reason` DISABLE KEYS */;
INSERT INTO `closure_reason` VALUES (1,'Admitted Successfully','Koustubh'),(2,'Admitted Successfully','Koustubh'),(3,'Admitted Successfully','Neha More'),(4,'Admitted Successfully','Tarun'),(5,'Admitted Successfully','shreyash'),(6,'Closed by Admin','muhafij'),(7,'Admitted Successfully','muhafij'),(8,'Admitted Successfully','Daksha'),(9,'Testing auto-assign','PublicUser_Test'),(10,'Admitted Successfully','Daksha2'),(11,'Admitted Successfully','dfdf'),(12,'dfdf','rohit'),(13,'Admitted Successfully','rohit'),(14,'Admitted Successfully','John Doe'),(15,'Hi Admin','Muhafij Naikawadi'),(16,'Admitted Successfully','raj'),(17,'Admitted Successfully','pratham');
/*!40000 ALTER TABLE `closure_reason` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `course`
--

DROP TABLE IF EXISTS `course`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `course` (
  `course_id` int NOT NULL AUTO_INCREMENT,
  `course_descriptor` varchar(500) DEFAULT NULL,
  `course_duration` int DEFAULT NULL,
  `course_fee` double DEFAULT NULL,
  `course_is_active` bit(1) DEFAULT NULL,
  `course_name` varchar(100) DEFAULT NULL,
  `course_syllabus` varchar(200) DEFAULT NULL,
  `cover_photo` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `course`
--

LOCK TABLES `course` WRITE;
/*!40000 ALTER TABLE `course` DISABLE KEYS */;
INSERT INTO `course` VALUES (1,NULL,6,600000,_binary '','Java Full-Stack ',NULL,'/images/6fe316a4-ca16-4a9d-8596-8881084fb387.png'),(2,NULL,6,40000,_binary '','Python Full-Stack',NULL,'/images/e86448d6-f35e-4604-b15d-7257710e558d.png'),(5,NULL,6,30000,_binary '','Software Testing',NULL,'/images/dcf811b9-0f75-43b3-a1de-e29a5cb3ea21.png'),(8,NULL,6,10000,_binary '','cpp',NULL,'http://localhost:8080/images/2d0628af-0055-4d88-b65c-9326c995743c_Python Full-Stack.png');
/*!40000 ALTER TABLE `course` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `enquiry`
--

DROP TABLE IF EXISTS `enquiry`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `enquiry` (
  `enquiry_id` int NOT NULL AUTO_INCREMENT,
  `closure_reason` varchar(255) DEFAULT NULL,
  `course_name` varchar(255) DEFAULT NULL,
  `enquirer_address` varchar(255) DEFAULT NULL,
  `enquirer_email_id` varchar(255) DEFAULT NULL,
  `enquirer_mobile` varchar(255) DEFAULT NULL,
  `enquirer_name` varchar(255) DEFAULT NULL,
  `enquirer_query` varchar(255) DEFAULT NULL,
  `enquiry_counter` int DEFAULT NULL,
  `enquiry_date` date DEFAULT NULL,
  `enquiry_is_active` tinyint(1) DEFAULT '1',
  `follow_up_date` date DEFAULT NULL,
  `student_name` varchar(255) DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  PRIMARY KEY (`enquiry_id`),
  KEY `FKeud7g3l135dchk6imapeqd5ih` (`staff_id`),
  CONSTRAINT `FKeud7g3l135dchk6imapeqd5ih` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=25 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `enquiry`
--

LOCK TABLES `enquiry` WRITE;
/*!40000 ALTER TABLE `enquiry` DISABLE KEYS */;
INSERT INTO `enquiry` VALUES (1,'Admitted','Java Full Stack',NULL,'koustubhsadavarte378@gmail.com','9130054016','Koustubh','looking for java full stack course',0,'2026-01-27',0,NULL,NULL,1),(2,'Admitted','python full stack',NULL,'tarunaswal201@gmail.com','9082223080','Tarun','looking for pyton',0,'2026-01-27',0,NULL,NULL,1),(3,'Admitted','General Enquiry',NULL,'nehamore31jan@gmail.com','9356704588','Neha More','looking for python',NULL,NULL,0,NULL,NULL,1),(4,'Admitted','General Enquiry',NULL,'shreyash6216@gmail.com','3344556677','shreyash','looking for testing course',NULL,NULL,0,NULL,NULL,1),(5,'Admitted','testing',NULL,'muhafijnaikawadi786@gmail.com','884771786','muhafij','still open',NULL,NULL,0,NULL,NULL,1),(6,'Admitted','General Enquiry',NULL,'dakshapatil960@gmail.com','7841022630','Daksha','looking for java ',NULL,NULL,0,NULL,NULL,5),(7,'Admitted','General Enquiry',NULL,'daksha.patil.work@gmail.com','9975422039','Daksha2','looking for testing course\n',NULL,NULL,0,NULL,NULL,1),(8,'Testing auto-assign','CDAC',NULL,'public@test.com','9998887776','PublicUser_Test','Testing auto-assign',NULL,'2026-01-30',0,NULL,NULL,1),(9,'Admitted','CDAC',NULL,'public@test.com','9998887776','PublicUser_Test','Testing auto-assign',NULL,'2026-01-30',0,NULL,NULL,1),(10,'Admitted','java',NULL,'raj@gmail.com','7463836565','raj','fjefsdjfndjklfne',NULL,NULL,0,NULL,NULL,1),(11,'Admitted','General Enquiry',NULL,'zz@gmail.com','4645364536','ram','sddfdfdf',NULL,NULL,0,NULL,NULL,1),(12,'Admitted','testing',NULL,'edd@gmail.com','3434342323','dfdf','sdfdfd',NULL,NULL,0,NULL,NULL,5),(13,'Admitted','java',NULL,'rhit@gmail.com','3434343434','rohit','dfdf',NULL,NULL,0,NULL,NULL,5),(14,'Admitted','Java Full Stack',NULL,'john@example.com','9876543210','John Doe','Interested in Java Course',0,'2026-02-02',0,NULL,NULL,5),(15,NULL,'General Enquiry',NULL,'myhafijnaikawadi39@gmail.com','8847771786','Muhafij','Course is not there',NULL,NULL,1,NULL,NULL,1),(16,'Hi Admin','General Enquiry',NULL,'muhafijnaikawadi39@gmail.com','8847771786','Muhafij Naikawadi','Hi Admin',NULL,NULL,0,NULL,NULL,1),(17,'Admitted','Java Full Stack',NULL,'john@example.com','9876543210','John Doe','Interested in Java Course',0,'2026-02-02',0,NULL,NULL,NULL),(18,'java','java',NULL,'rohitkhamkar012@gmail.com','5443334533','rohit','java',NULL,'2026-02-03',0,NULL,NULL,5),(19,'Registered as Student','java',NULL,'rohitkhamkar012@gmail.com','1212121212','ram','dfdf',NULL,'2026-02-03',0,NULL,NULL,5),(20,'Admitted','java',NULL,'rohitkhamkar012@gmail.com','3434343434','suhas','fdf',NULL,'2026-02-03',0,NULL,NULL,1),(21,'Admitted','General Enquiry',NULL,'shiv@gmail.com','9876545642','Shiv','hello word',NULL,'2026-02-03',0,NULL,NULL,8),(22,'Admitted','Sales',NULL,'rohit@gmail.com','8989898989','Rohit','i love sales',NULL,'2026-02-03',0,NULL,NULL,5),(23,'hello','Dac',NULL,'tarun@gmail.com','9898989819','jAY','hello',NULL,'2026-02-03',0,'2026-02-05',NULL,1),(24,'Admitted','java',NULL,'mahajanprathamesh337@gmail.com','4534236787','pratham','dfd',NULL,NULL,0,NULL,NULL,5);
/*!40000 ALTER TABLE `enquiry` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `followup`
--

DROP TABLE IF EXISTS `followup`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `followup` (
  `followup_id` int NOT NULL AUTO_INCREMENT,
  `followup_date` date DEFAULT NULL,
  `followup_msg` varchar(255) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `enquiry_id` int DEFAULT NULL,
  `staff_id` int DEFAULT NULL,
  PRIMARY KEY (`followup_id`),
  KEY `FKpymeqs8lf6wkwp9lsqjj08gy7` (`enquiry_id`),
  KEY `FK50e1swkfgoljn0b96r2kxh5t9` (`staff_id`),
  CONSTRAINT `FK50e1swkfgoljn0b96r2kxh5t9` FOREIGN KEY (`staff_id`) REFERENCES `staff` (`staff_id`),
  CONSTRAINT `FKpymeqs8lf6wkwp9lsqjj08gy7` FOREIGN KEY (`enquiry_id`) REFERENCES `enquiry` (`enquiry_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `followup`
--

LOCK TABLES `followup` WRITE;
/*!40000 ALTER TABLE `followup` DISABLE KEYS */;
/*!40000 ALTER TABLE `followup` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `get_in_touch`
--

DROP TABLE IF EXISTS `get_in_touch`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `get_in_touch` (
  `get_in_touch_id` int NOT NULL AUTO_INCREMENT,
  `course_name` varchar(255) DEFAULT NULL,
  `enquirer_email` varchar(255) NOT NULL,
  `enquirer_name` varchar(255) DEFAULT NULL,
  `enquirer_message` varchar(255) DEFAULT NULL,
  `enquirer_mobile` varchar(255) NOT NULL,
  PRIMARY KEY (`get_in_touch_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `get_in_touch`
--

LOCK TABLES `get_in_touch` WRITE;
/*!40000 ALTER TABLE `get_in_touch` DISABLE KEYS */;
/*!40000 ALTER TABLE `get_in_touch` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `images`
--

DROP TABLE IF EXISTS `images`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `images` (
  `image_id` int NOT NULL AUTO_INCREMENT,
  `image_description` varchar(255) NOT NULL,
  `image_title` varchar(255) NOT NULL,
  `image_url` varchar(255) NOT NULL,
  `album_id` int DEFAULT NULL,
  PRIMARY KEY (`image_id`),
  KEY `FK724cv7ds8vwsp7mpi6e5s7keq` (`album_id`),
  CONSTRAINT `FK724cv7ds8vwsp7mpi6e5s7keq` FOREIGN KEY (`album_id`) REFERENCES `albums` (`album_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `images`
--

LOCK TABLES `images` WRITE;
/*!40000 ALTER TABLE `images` DISABLE KEYS */;
/*!40000 ALTER TABLE `images` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `news`
--

DROP TABLE IF EXISTS `news`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `news` (
  `news_id` int NOT NULL AUTO_INCREMENT,
  `news_description` varchar(255) NOT NULL,
  `news_title` varchar(255) NOT NULL,
  `news_url` varchar(255) NOT NULL,
  PRIMARY KEY (`news_id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `news`
--

LOCK TABLES `news` WRITE;
/*!40000 ALTER TABLE `news` DISABLE KEYS */;
INSERT INTO `news` VALUES (1,'New batches starting from next Monday. Enroll now!','Welcome to Computer Seekho','http://example.com'),(2,'welcome to new batch','New News ','http://default.url'),(3,'New batch is starting from 24 Feb','Shreyash landddddd','http://default.url'),(4,'starting new batch','DAC ','http://default.url');
/*!40000 ALTER TABLE `news` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment_type`
--

DROP TABLE IF EXISTS `payment_type`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment_type` (
  `payment_type_id` int NOT NULL AUTO_INCREMENT,
  `payment_type_desc` varchar(255) DEFAULT NULL,
  PRIMARY KEY (`payment_type_id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment_type`
--

LOCK TABLES `payment_type` WRITE;
/*!40000 ALTER TABLE `payment_type` DISABLE KEYS */;
INSERT INTO `payment_type` VALUES (1,'Cash'),(2,'Cheque'),(3,'Online Transfer'),(4,'UPI'),(5,'Bank Transfer');
/*!40000 ALTER TABLE `payment_type` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payments`
--

DROP TABLE IF EXISTS `payments`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payments` (
  `payment_id` int NOT NULL AUTO_INCREMENT,
  `amount` double DEFAULT NULL,
  `payment_date` date DEFAULT NULL,
  `payment_type_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  PRIMARY KEY (`payment_id`),
  KEY `FKik05b744ogv4a8llk3cdlh2vl` (`payment_type_id`),
  KEY `FKo0lgt74t3bsgmnfq54pcdew7y` (`student_id`),
  CONSTRAINT `FKik05b744ogv4a8llk3cdlh2vl` FOREIGN KEY (`payment_type_id`) REFERENCES `payment_type` (`payment_type_id`),
  CONSTRAINT `FKo0lgt74t3bsgmnfq54pcdew7y` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payments`
--

LOCK TABLES `payments` WRITE;
/*!40000 ALTER TABLE `payments` DISABLE KEYS */;
INSERT INTO `payments` VALUES (2,600000,'2026-01-27',3,2),(3,40000,'2026-01-27',3,3),(4,40000,'2026-01-27',3,4),(5,40000,'2026-01-28',3,5),(6,30000,'2026-01-28',3,6),(7,600000,'2026-01-30',3,7),(8,40000,'2026-01-30',3,8),(9,40000,'2026-01-30',3,9),(10,30000,'2026-01-30',3,10),(11,600000,'2026-02-02',3,11),(12,600000,'2026-02-02',3,12),(13,600000,'2026-02-03',3,16),(14,600000,'2026-02-03',2,1),(15,40000,'2026-02-03',3,17),(16,10000,'2026-02-03',3,18),(17,600000,'2026-02-04',3,19),(18,10000,'2026-02-04',5,20),(19,590000,'2026-02-04',1,20);
/*!40000 ALTER TABLE `payments` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `placement`
--

DROP TABLE IF EXISTS `placement`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `placement` (
  `placement_id` int NOT NULL AUTO_INCREMENT,
  `batch_id` int DEFAULT NULL,
  `recruiter_id` int DEFAULT NULL,
  `student_id` int DEFAULT NULL,
  PRIMARY KEY (`placement_id`),
  UNIQUE KEY `UKburs792scucffx16rarw5dijl` (`student_id`),
  KEY `FKfjp90ouyl79cs2u450vca7ip9` (`batch_id`),
  KEY `FKmeq262aa8o8iqkv0m6jpj9wog` (`recruiter_id`),
  CONSTRAINT `FKfjp90ouyl79cs2u450vca7ip9` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`),
  CONSTRAINT `FKmeq262aa8o8iqkv0m6jpj9wog` FOREIGN KEY (`recruiter_id`) REFERENCES `recruiter` (`recruiter_id`),
  CONSTRAINT `FKtnlbpdla0lw8qpqb9pq0wfwvj` FOREIGN KEY (`student_id`) REFERENCES `student` (`student_id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `placement`
--

LOCK TABLES `placement` WRITE;
/*!40000 ALTER TABLE `placement` DISABLE KEYS */;
INSERT INTO `placement` VALUES (1,2,1,2),(2,3,4,3),(3,3,2,4),(4,3,3,5),(5,2,3,7),(6,3,1,8),(7,3,2,9),(8,4,3,10),(9,2,3,11),(10,2,1,12),(11,2,2,16),(12,4,4,6),(13,2,4,1),(14,3,4,17),(15,2,3,20),(16,2,3,19);
/*!40000 ALTER TABLE `placement` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `receipt`
--

DROP TABLE IF EXISTS `receipt`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `receipt` (
  `receipt_id` int NOT NULL AUTO_INCREMENT,
  `receipt_amount` double NOT NULL,
  `receipt_date` date NOT NULL,
  `payment_id` int DEFAULT NULL,
  PRIMARY KEY (`receipt_id`),
  UNIQUE KEY `UKkcnr2bq3p17a3ur8d6h9dfl6t` (`payment_id`),
  CONSTRAINT `FKpj1qn6plxs457bis4afrydj5` FOREIGN KEY (`payment_id`) REFERENCES `payments` (`payment_id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `receipt`
--

LOCK TABLES `receipt` WRITE;
/*!40000 ALTER TABLE `receipt` DISABLE KEYS */;
INSERT INTO `receipt` VALUES (1,600000,'2026-01-27',2),(2,40000,'2026-01-27',3),(3,40000,'2026-01-27',4),(4,40000,'2026-01-28',5),(5,30000,'2026-01-28',6),(6,600000,'2026-01-30',7),(7,40000,'2026-01-30',8),(8,40000,'2026-01-30',9),(9,30000,'2026-01-30',10),(10,600000,'2026-02-02',11),(11,600000,'2026-02-02',12),(12,600000,'2026-02-03',13),(13,600000,'2026-02-03',14),(14,40000,'2026-02-03',15),(15,10000,'2026-02-03',16),(16,600000,'2026-02-04',17),(17,10000,'2026-02-04',18),(18,590000,'2026-02-04',19);
/*!40000 ALTER TABLE `receipt` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `recruiter`
--

DROP TABLE IF EXISTS `recruiter`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `recruiter` (
  `recruiter_id` int NOT NULL AUTO_INCREMENT,
  `recruiter_location` varchar(255) NOT NULL,
  `recruiter_name` varchar(255) NOT NULL,
  `recruiter_image` varchar(255) NOT NULL,
  PRIMARY KEY (`recruiter_id`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `recruiter`
--

LOCK TABLES `recruiter` WRITE;
/*!40000 ALTER TABLE `recruiter` DISABLE KEYS */;
INSERT INTO `recruiter` VALUES (1,'Mumbai','Google','/images/b4a5b2bd-3958-4ba8-8433-fa81163987f9.png'),(2,'Hyderabad','Microsoft','/images/15d47ebb-a3be-490e-920a-03c2cf98e557.png'),(3,'Pune','Infosys','/images/329d5a45-62d6-4316-8d24-41e19106fc05.png'),(4,'Pune','TCS','/images/594438af-e204-47bd-8c20-794591bed83f.png');
/*!40000 ALTER TABLE `recruiter` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `staff`
--

DROP TABLE IF EXISTS `staff`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `staff` (
  `staff_id` int NOT NULL AUTO_INCREMENT,
  `photo_url` varchar(255) NOT NULL,
  `staff_email` varchar(255) NOT NULL,
  `staff_gender` varchar(255) NOT NULL,
  `staff_mobile` varchar(255) NOT NULL,
  `staff_name` varchar(255) NOT NULL,
  `staff_password` varchar(255) NOT NULL,
  `staff_role` varchar(255) DEFAULT NULL,
  `staff_username` varchar(30) NOT NULL,
  PRIMARY KEY (`staff_id`)
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `staff`
--

LOCK TABLES `staff` WRITE;
/*!40000 ALTER TABLE `staff` DISABLE KEYS */;
INSERT INTO `staff` VALUES (1,'http://img.com/admin.jpg','admin@example.com','Male','9999999999','Admin User','$2a$10$fIxvSduLjEkwtN.YpVol8.kuI37y5AsOp5rQhn9WAwbiUC2KqqpOG','ROLE_ADMIN','admin'),(2,'/images/6da583ab-b9f7-4467-9148-9b1e65571dbb.png','ketki@gmail.com','Not Specified','9769201036','Ketki Acharya','$2a$10$934UtbEWEOf9rlwW8LHuweWCLYswe2s0Xcfudlahp573yjGxYLQMi','ROLE_TEACHER','ketki'),(3,'/images/fd508cd2-6c5f-493e-96ed-fba540a110ee.png','nitin@gmail.com','Not Specified','9270682272','Nitin Vijaykar','$2a$10$SxmjwkbzyeJ0u.3wymG1jeyhCmRQvrvz4EyfkdPCD/SUOeyanH/vi','ROLE_TEACHER','nitin'),(4,'/images/3f7a3668-f96c-462b-b18c-ad9f83023258.png','Jayant@gmail.com','Not Specified','1234567890','Jayant Ponkshe','$2a$10$SSGPgTrwU.w2vGyM5pLrzewwTdJ55bl868nJR3wchjQaFg6.TGf1C','ROLE_TEACHER','jayant'),(5,'/images/3db13b8c-809a-4439-a5c9-585cee6af6cc.jfif','rohitkhamkar012@gmail.com','Not Specified','7249523827','Rohit Khamkar','$2a$10$4bae52R/udPI7IVSsroFq.64w1T8I3EezRYHwq77XRjhoKtzYpK9.','ROLE_ADMIN','rohit'),(6,'/images/65019030-feda-46db-ba94-fc167b37d0d3.jpeg','amar@gmail.com','Not Specified','8877665544','Amar apnvdf','$2a$10$./XSf0ydITecEsxdBoVfHOqQYI8qH0PlglK.mZayYSYlxlor7XpXm','ROLE_TEACHER','amarpanchal'),(8,'http://localhost:8080/images/2cc7d768-e33a-4f5a-8090-2fe79313f628_shreyash.png.jpeg','tarun@gmail.com','Not Specified','3039384573','tarun','$2a$11$WZQwaqGBsh4WUU7Ziilhyu8aaQZBrngET.OJmMadFJcNO6U/6ogJm','ROLE_ADMIN','tarun');
/*!40000 ALTER TABLE `staff` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `student`
--

DROP TABLE IF EXISTS `student`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `student` (
  `student_id` int NOT NULL AUTO_INCREMENT,
  `payment_due` double DEFAULT NULL,
  `photo_url` varchar(255) DEFAULT NULL,
  `student_address` varchar(60) DEFAULT NULL,
  `student_dob` date DEFAULT NULL,
  `student_email` varchar(30) DEFAULT NULL,
  `student_gender` varchar(10) DEFAULT NULL,
  `student_mobile` varchar(255) DEFAULT NULL,
  `student_name` varchar(30) NOT NULL,
  `student_qualification` varchar(20) DEFAULT NULL,
  `batch_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`student_id`),
  KEY `FK17mfv6a26cwnmli2b6vm00dn7` (`batch_id`),
  KEY `FKdfypyqt0stgfc0aij9kcxm99s` (`course_id`),
  CONSTRAINT `FK17mfv6a26cwnmli2b6vm00dn7` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`),
  CONSTRAINT `FKdfypyqt0stgfc0aij9kcxm99s` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`)
) ENGINE=InnoDB AUTO_INCREMENT=21 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `student`
--

LOCK TABLES `student` WRITE;
/*!40000 ALTER TABLE `student` DISABLE KEYS */;
INSERT INTO `student` VALUES (1,0,'/images/0f1a0279-eb16-41ec-bb03-3a99ec078c79.jpeg','Nanded',NULL,'koustubhsadavarte378@gmail.com','Male','9130054016','Koustubh','',2,1),(2,0,'/images/afc69ee3-5013-42c9-8fb1-edcf1dcc3503.jpeg','Nanded',NULL,'koustubhsadavarte378@gmail.com','Male','9130054016','Koustubh','',2,1),(3,0,'/images/e8bee7b8-1c17-4186-9020-3cc0af2ec3b4.jpeg','Mumbai',NULL,'nehamore31jan@gmail.com','Female','9356704588','Neha More','',3,2),(4,0,'/images/23d76f71-b843-486b-b32c-0e04a6bdd584.png','Panvel',NULL,'tarunaswal201@gmail.com','Male','9082223080','Tarun','',3,2),(5,0,'/images/668692c5-e506-4e5d-98a0-f0e532bac2bc.jpeg','Nagpur',NULL,'shreyash6216@gmail.com','Male','3344556677','shreyash','',3,2),(6,0,'/images/008575d7-a65e-4cf4-a900-7acd9afbd084.jpeg','kolhapur',NULL,'muhafijnaikawadi786@gmail.com','Male','884771786','muhafij','',4,5),(7,0,'/images/3579982b-cf2f-49f9-bd22-1e82185d77c6.png','mumbai',NULL,'dakshapatil960@gmail.com','Female','7841022630','Daksha','',2,1),(8,0,'/images/10b9c12e-7c97-4bfd-b505-7098f70389ad.jfif','jalgaon',NULL,'daksha.patil.work@gmail.com','Female','9975422039','Daksha2','',3,2),(9,0,'/images/8f3d0176-6186-4305-afa1-1dc0dfeb9423.png','mumbai',NULL,'edd@gmail.com','Male','3434342323','dfdf','',3,2),(10,0,'/images/3ff22642-8b32-4e33-8875-46d1190cd155.jpg','juhu',NULL,'rhit@gmail.com','Male','3434343434','rohit','',4,5),(11,0,'/images/ceff8fd4-f177-4f4e-97eb-5be91ad48eed.jpg','adsd',NULL,'john@example.com','Male','9876543210','John Doe','',2,1),(12,0,'/images/b7b19ad0-4230-4ddb-b795-9c903d1b35f3.jpeg','Mumbai',NULL,'raj@gmail.com','Male','7463836565','raj','',2,1),(13,600000,'/images/2f555ee0-0fa8-4148-a146-3411bf5b8722_download.jpeg','mumbai',NULL,'rohitkhamkar012@gmail.com','Male','1212121212','ram','',2,1),(14,600000,'/images/9a13fba3-d10b-4050-bc5c-e7d3619ac365_campus-1.jpeg','mumbai',NULL,'rohitkhamkar012@gmail.com','Male','3434343434','suhas','',2,1),(15,600000,'/images/505bf685-e479-46a5-a717-715a00b2c7fa_Software Testing.png','mumbai',NULL,'rohitkhamkar012@gmail.com','Male','4645364536','ram','',2,1),(16,0,'/images/f9590116-2c77-495a-a4bf-92d5d1b26c6d_Software Testing.png','sds',NULL,'john@example.com','Male','9876543210','John Doe','',2,1),(17,0,'http://localhost:8080/images/87b3bae0-aa0d-4e69-8810-a00bc9135f11_r.jpg.jpeg','Cpp course student added',NULL,'shiv@gmail.com','Male','9876545642','Shiv','',3,2),(18,0,'http://localhost:8080/images/98f19208-038b-4945-ab7e-3524b5a572b0_WhatsApp Image 2025-06-09 at 2.31.54 PM.jpeg','want to change my course',NULL,'rohit@gmail.com','Male','8989898989','Rohit','',5,8),(19,0,'http://localhost:8080/images/cf3cdd30-fea2-482f-a129-3284e9711dc6_unnamed.jpg','mumbai',NULL,'rohitkhamkar012@gmail.com','Male','9998887776','PublicUser_Test','',2,1),(20,0,'/images/714a54e9-9795-4cdc-8d71-88c473aadc7b.jpeg','ss',NULL,'mahajanprathamesh337@gmail.com','Male','4534236787','pratham','',2,1);
/*!40000 ALTER TABLE `student` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `video_master`
--

DROP TABLE IF EXISTS `video_master`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `video_master` (
  `video_id` int NOT NULL AUTO_INCREMENT,
  `end_date` date DEFAULT NULL,
  `start_date` date DEFAULT NULL,
  `video_description` varchar(60) DEFAULT NULL,
  `is_active` bit(1) DEFAULT NULL,
  `video_url` varchar(255) DEFAULT NULL,
  `batch_id` int DEFAULT NULL,
  `course_id` int DEFAULT NULL,
  PRIMARY KEY (`video_id`),
  KEY `FKpml7p8oa2sjadyfxuigwqywj0` (`batch_id`),
  KEY `FK1rnanwb6rkh6lqgxwv904gm7r` (`course_id`),
  CONSTRAINT `FK1rnanwb6rkh6lqgxwv904gm7r` FOREIGN KEY (`course_id`) REFERENCES `course` (`course_id`),
  CONSTRAINT `FKpml7p8oa2sjadyfxuigwqywj0` FOREIGN KEY (`batch_id`) REFERENCES `batch` (`batch_id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `video_master`
--

LOCK TABLES `video_master` WRITE;
/*!40000 ALTER TABLE `video_master` DISABLE KEYS */;
/*!40000 ALTER TABLE `video_master` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Dumping events for database 'computerseekhoapp'
--

--
-- Dumping routines for database 'computerseekhoapp'
--
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2026-02-04 13:54:42
