-- MySQL dump 10.13  Distrib 8.0.27, for Win64 (x86_64)
--
-- Host: 127.0.0.1    Database: controlvial
-- ------------------------------------------------------
-- Server version	8.0.27

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
-- Table structure for table `motivos`
--

DROP TABLE IF EXISTS `motivos`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `motivos` (
  `Id` varchar(256) NOT NULL,
  `Code` text,
  `Note` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `motivos`
--

LOCK TABLES `motivos` WRITE;
/*!40000 ALTER TABLE `motivos` DISABLE KEYS */;
INSERT INTO `motivos` VALUES ('115B0864C9C74332AAB9F04CAC49B218','TNOVISIBLE','ticket no visible'),('137ECF0415074F2CADCCE3C2C09DDC61','SCOTRAZONATCK','ticket de otra zona'),('3774CC901E7C4DBEBDF29F0EAB4B8302','SCLUGARPROHIBIDO','estacionado en lugar prohibido'),('3A9D28B1A7DC45BDA16B9614A32AE4E7','OTRAZONATCK','ticket de otra zona'),('4104B0B780494813A4315D30E12D0F19','SCDOBLEFILA','ArtÃ­culo 30. En cada Zona de ParquÃ­metros, se conformarÃ¡ un ComitÃ© de Transparencia y RendiciÃ³n de Cuentas integrado por representantes de: \nI.- La SecretarÃ­a de Movilidad, quien fungirÃ¡ como Coordinador del ComitÃ©; \nII.- La DemarcaciÃ³n o AlcaldÃ­a a la que correspondan las colonias que comprenda la Zona de ParquÃ­metros, quien fungirÃ¡ como Secretario TÃ©cnico; \nIII.- La SecretarÃ­a de Seguridad PÃºblica; y \nIV.- El ComitÃ© Ciudadano de la colonia o colonias que comprenda la Zona de '),('5296EC0A9D1E4912B6A0CA6476181182','PRU-AS-123','asd'),('5CEFD845109F4E358811973F06B093F2','Z6FUERACAJON','EL VEHICULO ESTA FUERA DE CAJONDE PAGO '),('627916C434B044BF9255207D90517E34','1000','Tiempo vencido'),('6F4E191B1087426194E498F7FF100BC5','BORRAR-A','sad'),('8F83FCE0406C45D6B9C46418D5272599','SCTNOVISIBLE','ticket no visble'),('9603A52211EC49B28B7EA293951F85EF','SCPLACAMALDIG','placa mal digitada\n'),('984B5E29C160414AB461B012CCE86E26','TIEMPOVENCIDO','tiempo vencido'),('A7C1E9365C85403492ED795DE8C72707','MOTOFUERACAJON','moto fuera de cajon'),('ADC2C15CE5FB492985C08F630CB262B0','1234567890123456','Pruba del codigo de los 16 digitos asds'),('AFF812203A474275B2420F5D7CC89DC8','SCTIEMPOVENCIDO','tiempo vencido'),('B972E9D6EC5E49FA946D2468FCC84036','PLACAMALD','placa mal digitada'),('BE440D9FF27C49E28527AE52FB60A289','Z6FUECAJSINCANDA','EL VEHICULO NO CUENTA CON CANDADO Y ESTA FUERA DE CAJON'),('C954235FDFEC4B778DD927FCDB1398CE','LUGARPROHIBIDO','estacionado en lugar prohibido'),('D33328BD10844A72994654174961420B','TICKETVOLTEADO','ticket volteado'),('D3B12DF8936643D8B1A083B3921AC01F','SCTICKETVOLTEADO','ticket volteado'),('E6B5163DDC1C4F90BAAAB968F153C430','SINTICKET','sin ticket de pago '),('E960CDED490540469F7D74C6347BFBF0','10','FUERA DE CAJON'),('E9D637A96E3E45288B01B723D1D5BD0E','SCSINTICKET','sin ticket de pago sin candado'),('EEDE68E6AEB84F80A608205386E2E93A','DOBLECAJON','el vehÃ­culo se encuentra ocupando dos cajones'),('F1ED5B06D08A4A3FB0DE82C78C40709E','DOBLEFILA','El VehÃ­culo estÃ¡ estacionado en doble fila '),('F3117C8CBF6749E88D839838FF0C5414','SCMOTOFUERACAJON','moto fuera de cajon'),('FD5E21E369BE4D8199BFC07A24AA885B','SINCANDADODF','VehÃ­culo con placa de CDMX sin candado pero con infraccion  '),('FFBD0B9E471C41EAB3ECDFD7345034E8','SCDOBLECAJON','el vehÃ­culo se encuentra ocupando dos cajones');
/*!40000 ALTER TABLE `motivos` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-27 20:20:33