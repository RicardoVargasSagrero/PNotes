-- MySQL dump 10.13  Distrib 8.0.13, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: notes
-- ------------------------------------------------------
-- Server version	8.0.13

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
 SET NAMES utf8 ;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `cliente`
--

DROP TABLE IF EXISTS `cliente`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
 SET character_set_client = utf8mb4 ;
CREATE TABLE `cliente` (
  `id_Cliente` int(11) NOT NULL AUTO_INCREMENT,
  `cliente` varchar(100) NOT NULL,
  `domicilio` varchar(100) DEFAULT NULL,
  `num_casa` varchar(10) DEFAULT NULL,
  `num_oficina` varchar(45) DEFAULT NULL,
  `fecha_evento` date NOT NULL,
  `num_evento` varchar(45) DEFAULT NULL,
  `fecha_pedido` date NOT NULL,
  `detalles_pedido` varchar(300) NOT NULL,
  `subtotal` double NOT NULL,
  `deposito` double NOT NULL,
  `total` double NOT NULL,
  `correoE` varchar(45) DEFAULT NULL,
  PRIMARY KEY (`id_Cliente`)
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `cliente`
--

LOCK TABLES `cliente` WRITE;
/*!40000 ALTER TABLE `cliente` DISABLE KEYS */;
INSERT INTO `cliente` VALUES (1,'aad','asdf','563453','','2019-01-31',NULL,'2019-01-28','',1000,500,1500,''),(2,'Ricardo Vargas ','Margarita Maza de Juarez #168 ','5520622514','S/N','2019-01-31',NULL,'2019-01-28','Artículos 	Precio unitario 	\n10 silllas 	1000',1000,500,1500,'r.sagrero1@gmail.com'),(3,'Ricardo','Margarita Maza de Juarez #168 ','5520622514','S/N','2019-01-31',NULL,'2019-01-28','Artículos 	Precio unitario 	\n50 silllas 	1000',5000,500,5500,'r.sagrero1@gmail.com'),(4,'Gerardo Guituerrez','centro de salud #13','5520622514','S/N','2019-01-31',NULL,'2019-01-28','Artículos 	Precio unitario 	\n50 mesas 	400',20000,5000,25000,'centro_14@gmail.com'),(5,'Gerardo Sagrero','centro de salud #13','552159754','S/N','2019-01-31',NULL,'2019-01-28','Artículos 	Precio unitario 	\n50 mesas 	400',20000,5000,25000,'centro_12@gmail.com'),(6,'Alfredo López ','calle #13, Azcapotzalco','5514392574','S/N','2019-01-31',NULL,'2019-01-28','Artículos 	Precio unitario 	\n50 banquetes 	$500',25000,5000,30000,'as_124@gmail.com'),(7,'Rene','calle #13, Azcapotzalco','5514392574','S/N','2019-01-31',NULL,'2019-01-28','Artículos 	Precio unitario 	\n50 banquetes 	$500',25000,5000,30000,'as_124@gmail.com'),(8,'Ricardo de jesus ','calle #13, Azcapotzalco','5514392574','S/N','2019-01-31',NULL,'2019-01-28','Artículos 	Precio unitario 	\n50 banquetes 	$500',25000,5000,30000,'as_124@gmail.com'),(9,'Jorge Vargas Sagrero','Estadio azul #33','5521648254','5521347944','2019-01-31',NULL,'2019-01-29','Arituculos 	Precio Unitario \n10 sillas 	$100',1000,500,1500,'jvargas@gmail.com'),(10,'Ernesto Cuesta Torres','calle azul #33','5521648254','5521347944','2019-01-31',NULL,'2019-01-29','Arituculos 	Precio Unitario \n10 sillas 	$100',1000,500,1500,'jvargas@gmail.com'),(11,'Encarnación ','calle azul #33','5521648254','5521347944','2019-01-31',NULL,'2019-01-29','Arituculos 	Precio Unitario \n10 sillas 	$100',1000,500,1500,'jvargas@gmail.com'),(12,'asdf','asdf','5520622514','5520622514','2019-01-31',NULL,'2019-01-29','a',54,454,508,'r@hotmail.com'),(13,'Ricardo Vargas','Adolfo Lopez Mateos #566','9212654489','5520622514','2019-01-31',NULL,'2019-01-30','Articulos	Precio unitario\n10 sillas 	$100\n5 mesas 	$400',5000,1000,6000,'selecccion@gmail.com'),(14,'Prueba numero 100','Domicilio de prueba en la base de datos ','5520635948','6594546844','2019-01-31',NULL,'2019-01-30','Articulos 	Detalles	Precio unitario\n10	Mesas	100\n20 	Sillas 	100\n',3000,500,3500,'k.Asgfj@hotmail.com'),(15,'Ricardo Vargas Sagrero','Margarita Maza de Juarez #168','5520622514','2266554411','2019-01-31',NULL,'2019-01-30','Articulos 	Detalles 	Precio Unitario	\n10	sillas	100\n2	Bocinas	500	\n',2000,500,2500,'a@ipn.mx');
/*!40000 ALTER TABLE `cliente` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2019-02-06 10:06:11
