-- MySQL dump 10.13  Distrib 8.0.21, for Win64 (x86_64)
--
-- Host: localhost    Database: fullstack_eletro
-- ------------------------------------------------------
-- Server version	8.0.21

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
-- Table structure for table `pedidos`
--

DROP TABLE IF EXISTS `pedidos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `pedidos` (
  `numero_pedido` int NOT NULL AUTO_INCREMENT,
  `nome_cliente` varchar(45) NOT NULL,
  `endereco` varchar(45) NOT NULL,
  `telefone` varchar(45) NOT NULL,
  `nome_produto` varchar(45) NOT NULL,
  `valor_unitario` double NOT NULL,
  `quantidade` decimal(10,0) NOT NULL,
  `valor_total` double NOT NULL,
  `Bairro` varchar(45) NOT NULL,
  `Cep` varchar(45) NOT NULL,
  `Estado` varchar(45) NOT NULL,
  PRIMARY KEY (`numero_pedido`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `pedidos`
--

LOCK TABLES `pedidos` WRITE;
/*!40000 ALTER TABLE `pedidos` DISABLE KEYS */;
INSERT INTO `pedidos` VALUES (1,'Denis Moreira','Rua A','99999-9999','Microondas Philco',399.99,1,399.99,'Duque de Caxias','25025-115','RJ'),(2,'Anna Carolina','Rua B','2220-5707','Geladeira Samsung',19000,1,19000,'Gramacho','26026-116','RJ'),(3,'Anna Surya','Rua C','2672-1140','Forno microondas eletrolux',299,3,897,'25 de Agosto','27027-117','RJ'),(4,'Anna Luiza','Faria Lima','8888-8888','Microondas Philco',399.99,4,1599.06,'Largo Batata','31031-130','SP'),(5,'Eduarda Maria','Rua Amelia','1234-12369','Microondas Midea',377.91,2,755.82,'Arthur Alvim','55055-115','SP'),(6,'Jorgete Santana','Travessa do Tranco','9876-5216','Lavadora Eletrolux',1709.05,1,1709.05,'Guaianases','26190-265','SP'),(7,'Heitor Pimentel','Rua Antonio David','2365-9854','Geladeira Brastemp',5019,1,5019,'Lafayete','26190-300','RJ'),(8,'Denis Trindade','Rua Natal','2771-9178','Geladeira Eleltrolux',1850,10,18500,'Pantanal','55654-171','RJ'),(9,'Carlos Eduardo','Marcilio Dias','3159-1456','Forno microondas eletrolux',299,2,598,'Florianopolis','85497-328','SC'),(10,'Mirian Silva','Donato Calabrez','5649-9852','Lavadora Samsung',2294.1,1,2294.1,'Guaianases','08411-120','SP');
/*!40000 ALTER TABLE `pedidos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2020-10-21 23:13:47
