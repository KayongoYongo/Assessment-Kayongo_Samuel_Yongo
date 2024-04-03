-- MySQL dump 10.13  Distrib 8.0.31, for Win64 (x86_64)
--
-- Host: localhost    Database: utibu_health
-- ------------------------------------------------------
-- Server version	8.0.31

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!50503 SET NAMES utf8mb4 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `customer`
--

DROP TABLE IF EXISTS `customer`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `customer` (
  `email` varchar(128) NOT NULL,
  `password` varchar(128) NOT NULL,
  `first_name` varchar(128) DEFAULT NULL,
  `last_name` varchar(128) DEFAULT NULL,
  `age` int NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `customer`
--

LOCK TABLES `customer` WRITE;
/*!40000 ALTER TABLE `customer` DISABLE KEYS */;
INSERT INTO `customer` VALUES ('notbrucewayne@gmail.com','password123','Bruce','Wayne',40,'5aa89f2a-5304-4dc1-950b-9541e58806f6','2024-03-30 05:23:08','2024-03-30 05:23:08'),('janedoe15@gmail.com','password123','Jane','Doe',32,'a94dcb89-2bb6-4a9f-a79a-93c3056f7206','2024-03-30 05:21:38','2024-03-30 05:21:38'),('angeline81@gmail.com','password123','Angeline','Doe',32,'bd1fefa7-0796-4d22-89d4-6186943c9813','2024-03-30 05:22:15','2024-03-30 05:22:15'),('example@example.com','password123','John','Doe',30,'c57b2bf4-eba2-43ed-be2b-767ee67f4fcd','2024-03-30 05:19:52','2024-03-30 05:19:52'),('sknsammie10@gmail.com','password123','Samuel','Kayongo',25,'d66ca98b-c9fb-4c0e-81e2-45622f2aadfe','2024-03-30 05:21:01','2024-03-30 05:21:01');
/*!40000 ALTER TABLE `customer` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `inventory`
--

DROP TABLE IF EXISTS `inventory`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `inventory` (
  `medicine_id` varchar(60) NOT NULL,
  `quantity` int NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medicine_id` (`medicine_id`),
  CONSTRAINT `inventory_ibfk_1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `inventory`
--

LOCK TABLES `inventory` WRITE;
/*!40000 ALTER TABLE `inventory` DISABLE KEYS */;
INSERT INTO `inventory` VALUES ('38f73abd-895c-41f4-b46f-bfc4beb81fcc',50,'51d0571d-c2f3-42ac-b543-e336574c677e','2024-03-31 14:32:40','2024-03-31 14:32:40'),('91ade942-c0a2-4e3e-9072-337f468e7fc0',75,'5f9d3c5d-7835-4875-9d9c-4f59822ffba1','2024-03-31 14:36:02','2024-03-31 14:36:02'),('86c47e29-7616-4288-8eb4-d60b7335493b',150,'6ce280ec-427a-4cce-b7a2-cd061623b487','2024-03-31 14:35:41','2024-03-31 14:35:41'),('c88eb53f-0375-4a16-8e9f-b3f52ceea7a2',100,'8628c3aa-76f0-404a-b928-e356b9a1fd59','2024-03-31 14:36:22','2024-03-31 14:36:22'),('653f4f75-5c10-443b-8728-cec697bd9026',120,'9d90744b-38f2-437f-8a2a-a6403abd4e23','2024-03-31 14:37:26','2024-03-31 14:37:26'),('6750967b-d537-436f-9ca3-9e21a303731a',100,'b0c8f7ce-8996-4d40-a0e4-7aae9fe0e804','2024-03-31 14:35:22','2024-03-31 14:35:22');
/*!40000 ALTER TABLE `inventory` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `medicine`
--

DROP TABLE IF EXISTS `medicine`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `medicine` (
  `name` varchar(255) NOT NULL,
  `dosage` varchar(255) NOT NULL,
  `cost` int NOT NULL,
  `description` text,
  `storage_conditions` varchar(255) NOT NULL,
  `manufacturer` varchar(255) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `medicine`
--

LOCK TABLES `medicine` WRITE;
/*!40000 ALTER TABLE `medicine` DISABLE KEYS */;
INSERT INTO `medicine` VALUES ('Metformin','500mg tablets',6,'Metformin is an oral medication used to treat type 2 diabetes. It works by decreasing glucose production in the liver and improving insulin sensitivity in the body. Metformin is often prescribed alongside diet and exercise to help control blood sugar levels in individuals with diabetes.','Store at room temperature away from moisture and heat.','Various pharmaceutical companies','38f73abd-895c-41f4-b46f-bfc4beb81fcc','2024-03-30 06:13:17','2024-03-30 06:13:17'),('Diclofenac','50mg tablets',5,'Diclofenac is a nonsteroidal anti-inflammatory drug (NSAID) used to relieve pain and reduce inflammation in conditions such as arthritis or acute injury.','Store at room temperature away from moisture and heat.','Various pharmaceutical companies','653f4f75-5c10-443b-8728-cec697bd9026','2024-03-30 06:09:49','2024-03-30 06:09:49'),('Panadol','500mg tablets',3,'Panadol is a common over-the-counter pain reliever and fever reducer. It contains the active ingredient paracetamol (acetaminophen), which is effective for treating mild to moderate pain and reducing fever.','Store at room temperature away from moisture and heat.','GlaxoSmithKline','6750967b-d537-436f-9ca3-9e21a303731a','2024-03-30 06:10:32','2024-03-30 06:10:32'),('Perindopril','4mg tablets',8,'Perindopril is an angiotensin-converting enzyme (ACE) inhibitor used to treat high blood pressure (hypertension) and heart failure. It works by relaxing blood vessels, which helps lower blood pressure and improve heart function. Perindopril may also be prescribed to reduce the risk of heart attack and stroke in individuals with cardiovascular disease.','Store at room temperature away from moisture and heat.','Various pharmaceutical companies','86c47e29-7616-4288-8eb4-d60b7335493b','2024-03-30 06:14:39','2024-03-30 06:14:39'),('Ibuprofen','200mg tablets',4,'Ibuprofen is a nonsteroidal anti-inflammatory drug (NSAID) used to relieve pain, reduce inflammation, and lower fever. It is commonly used to treat conditions such as headaches, toothaches, menstrual cramps, muscle aches, arthritis, and minor injuries.','Store at room temperature away from moisture and heat.','Various pharmaceutical companies','91ade942-c0a2-4e3e-9072-337f468e7fc0','2024-03-30 06:11:39','2024-03-30 06:11:39'),('Emtricitabine','200mg tablets',10,'Emtricitabine is a nucleoside reverse transcriptase inhibitor (NRTI) used in the treatment of HIV (human immunodeficiency virus) infection. It is often prescribed in combination with other antiretroviral medications to control the progression of HIV and reduce the risk of developing AIDS (acquired immunodeficiency syndrome). Emtricitabine works by blocking the action of the HIV enzyme reverse transcriptase, which is necessary for the virus to replicate.','Store at room temperature away from moisture and heat.','Various pharmaceutical companies','c88eb53f-0375-4a16-8e9f-b3f52ceea7a2','2024-03-30 06:16:01','2024-03-30 06:16:01');
/*!40000 ALTER TABLE `medicine` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `order`
--

DROP TABLE IF EXISTS `order`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `order` (
  `medicine_id` varchar(60) NOT NULL,
  `customer_id` varchar(60) NOT NULL,
  `quantity` int NOT NULL,
  `total_amount` int NOT NULL,
  `status` varchar(255) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `medicine_id` (`medicine_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `order_ibfk_1` FOREIGN KEY (`medicine_id`) REFERENCES `medicine` (`id`),
  CONSTRAINT `order_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `order`
--

LOCK TABLES `order` WRITE;
/*!40000 ALTER TABLE `order` DISABLE KEYS */;
INSERT INTO `order` VALUES ('38f73abd-895c-41f4-b46f-bfc4beb81fcc','5aa89f2a-5304-4dc1-950b-9541e58806f6',1,200,'pending','d85ee639-2e92-4def-b247-13f557f09666','2024-04-03 02:59:00','2024-04-03 02:59:00');
/*!40000 ALTER TABLE `order` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `payment`
--

DROP TABLE IF EXISTS `payment`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `payment` (
  `order_id` varchar(60) NOT NULL,
  `customer_id` varchar(60) NOT NULL,
  `quantity` int NOT NULL,
  `total_amount` int NOT NULL,
  `delivery_trype` varchar(255) NOT NULL,
  `status` varchar(255) NOT NULL,
  `id` varchar(60) NOT NULL,
  `created_at` datetime DEFAULT NULL,
  `updated_at` datetime DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `order_id` (`order_id`),
  KEY `customer_id` (`customer_id`),
  CONSTRAINT `payment_ibfk_1` FOREIGN KEY (`order_id`) REFERENCES `order` (`id`),
  CONSTRAINT `payment_ibfk_2` FOREIGN KEY (`customer_id`) REFERENCES `customer` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `payment`
--

LOCK TABLES `payment` WRITE;
/*!40000 ALTER TABLE `payment` DISABLE KEYS */;
/*!40000 ALTER TABLE `payment` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2024-04-03  3:21:36
