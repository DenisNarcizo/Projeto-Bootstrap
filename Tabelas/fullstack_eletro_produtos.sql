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
-- Table structure for table `produtos`
--

DROP TABLE IF EXISTS `produtos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `produtos` (
  `idprodutos` int NOT NULL AUTO_INCREMENT,
  `nome` varchar(45) NOT NULL,
  `descricao` varchar(70) NOT NULL,
  `preco` double NOT NULL,
  `nome_imagem` varchar(45) NOT NULL,
  PRIMARY KEY (`idprodutos`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `produtos`
--

LOCK TABLES `produtos` WRITE;
/*!40000 ALTER TABLE `produtos` DISABLE KEYS */;
INSERT INTO `produtos` VALUES (1,'Geladeira Brastemp','Geladeira Frost Free Brastemp Side Inverse 540 litros',5019,'geladeira_brastemp'),(2,'Geladeira Eleltrolux','Geladeira Electrolux Cycle Defrost 362 Litros DC44 Branco - 127V',1850,'geladeira_eletrolux'),(3,'Geladeira Samsung','Geladeira Samsung Family Hub Frost Free',19000,'geladeira_samsung'),(4,'Fogão Brastemp','Fogão Brastemp 5 Bocas Inox Com Botões Removíveis',1199,'fogao_brastemp'),(5,'Fogão Eletrolux','Fogão 5 Bocas Electrolux Branco Automático com Tripla Chama',1099,'fogao_eletrolux'),(6,'Forno microondas eletrolux','Forno micro-ondas Electrolux Mdiv30 20 litros 220v',299,'microondas_eletrolux'),(7,'Microondas Midea','Micro-ondas Midea 20L MTFB21 - Branco',377.91,'microondas_midea'),(8,'Lavadora Samsung','Lavadora Samsung com Motor Digital Inverter',2294.1,'lavadora_samsung'),(9,'Lavadora Eletrolux','Lavadora Turbo Electrolux 17 Kg Branca',1709.05,'lavadora_eletrolux'),(10,'Microondas Philco','Micro-ondas Philco Pmo21',399.99,'microoondas_philco');
/*!40000 ALTER TABLE `produtos` ENABLE KEYS */;
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
