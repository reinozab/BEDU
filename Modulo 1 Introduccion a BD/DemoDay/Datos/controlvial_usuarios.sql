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
-- Table structure for table `usuarios`
--

DROP TABLE IF EXISTS `usuarios`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!50503 SET character_set_client = utf8mb4 */;
CREATE TABLE `usuarios` (
  `Id` varchar(256) CHARACTER SET utf8 COLLATE utf8_general_ci NOT NULL,
  `Codigo` text,
  `Nombre` text,
  `Apellidos` text,
  PRIMARY KEY (`Id`)
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `usuarios`
--

LOCK TABLES `usuarios` WRITE;
/*!40000 ALTER TABLE `usuarios` DISABLE KEYS */;
INSERT INTO `usuarios` VALUES ('016d5d2b-8f92-4109-bd25-01d24f8ed61c','C53','David Vaca','Corona '),('03d0485b-1c16-4a85-8443-d63a4bc761ca','C86','Cesar Armando','Garcia Morales'),('0a8c12c2-7520-428a-97b4-93b9f9f5f043','C62','Enrrique Zarate','Perez '),('0a8d7186-790c-48c3-a5e0-788c59a09b33','M2','Jose Juan','Mendoza Ortiz'),('15199492-4723-4850-9268-48bb47653df5','C31','Jose Eduardo','Castellano Legiorreta'),('173792e1-0e90-4609-8195-3b333b6edc0b','C81','Raul Velasco','Jacome '),('1754cbbb-fa6c-45e4-8055-90a724ad1f99','c60','Israel Robles','Garcia '),('23cba848-aa35-4537-a02a-e4772ae9dbf5','C70','Abraham Medina','Lopez '),('23cebf04-20ec-43ac-869e-60a00d7fb552','C50','Adrian Hernandez','Martinez '),('2f2217f8-124d-4124-9f45-82d4368685f0','C34','Juan Enrrique','Ramirez Perez'),('3111d6fe-e93d-4e44-947e-85668480d5e9','CH','Carlos ','Hernandez '),('32090d06-76b1-4785-969e-8ed781a31758','C16','Aparicio Valerio','Arturo '),('3331d18a-0711-4382-ab42-e6a80c659288','C20','Eduardo Emanuel','Dominguez Moran'),('33c044c1-3125-4c55-8a31-ea440de69329','VC','Victor Comonfort',' '),('3d0fde80-7425-4bf0-936d-dab8de9bbae6','C49','Hector Manuel','Reyes Valdes'),('40490d8c-bcfe-422c-a382-e303349b2bef','C55','Angel Alexis','Orozco Hernandez'),('405754e1-d8e0-43ea-9b78-c1aa85797982','C23','Luis Enrique','Anaya Rivas'),('5101eec3-1469-4b73-b71e-d1da719365e2','M6','Juan Medina','Martinez '),('5936bc9e-8f2d-4467-b166-8d8ebf456d76','C57','Alberto Trinidad','Leyva Trejo'),('594903c9-211d-49ab-a636-eefedbec44b9','C77','David Alejandro','Cervantes Monroy'),('595f2e82-f467-44af-8ede-bf044c097e39','C79','Daniel Orlando','Sanchez '),('59f944be-5960-4265-989b-775bdab107ac','C52','Abraham Torres','Alfonso '),('5ef7dc97-6884-43fb-b5b9-137d376b3935','M4','ROBERTO GALLEGOS','RiOS '),('61287f18-c21e-48ad-91bc-349b132a841a','C25','Jose Amparo','Miranda Perez'),('642b90e8-8f9a-45cf-aa4e-1a028be17937','C54','Ariel Solanco','Camacho '),('65cd7003-dd59-48be-a335-4597fb55b5f3','C43','Juan Carlos','Garcia Garcia'),('6ad0b0b6-a567-44f8-b876-6cc0978e2c5f','C58','Rodolfo Aaron','Orta Flores'),('6f188db5-f0c7-46ad-9755-32df8a51a467','C78','MOISES PONCE','GARCIA '),('7011916b-759a-4ca6-8269-e2d6f0fc0292','C36','Jose Angel','Chavez Ramirez'),('71db6e59-5b8c-430e-a770-e165faa4abee','C80','Alan Joaquin','Ortiz Dominguez'),('75e2b6f3-01d6-421d-b16b-0d8f1ced7d3b','AAA','Themis ',' '),('76d4596b-b229-48b4-bd63-d51f1e167d15','C45','Oscar Alejandro','Morales Patino'),('771e5679-3296-423a-a719-3a30377dc6c1','C94','Edgar Luis','Ibarra Cedillo'),('772f4611-fd4d-4c1c-8e97-13fe48f03db0','MODULO1','Vanesa ','Romero '),('7a58c61c-c74f-4966-b3d9-90119f38d2cc','SI','Sebatian','Isla '),('7f4d79a1-4102-4320-aa6c-184d736095bd','C18','Jorge Eduardo','Velazquez Cruz'),('8321e6fb-8538-46af-a22e-066705a06786','C37','Pedro Damian','Perez Ramirez'),('876c4ed5-5f7e-45c7-a78a-3637086849bb','MLA','Montserrat','lopez Alvarado'),('8846a8c2-f5a8-45ba-bc02-d0053831461f','M3','Issac Islas','Monjaraz '),('8a83efce-e0e7-4ebe-a1cc-125218190f1c','C38','Christian Alan','Moreno Barrera'),('8a8b34a6-9ea0-4f92-8be7-4ce5c360f60e','C27','Edgar Buenfil','Ramirez '),('8b77226f-c10e-4cb3-9101-34a313888418','LC','Lince ','Perez'),('91a2290e-a635-45aa-9231-32039e26b61c','MODULO 2','Mariana Salcedo','Perez '),('945dbc2c-bb46-49e8-b589-315e15103608','C33','Luis Gregorio','Camacho Pena'),('9f2b8d59-2b2d-43f8-bca7-24d1dc87b053','KY','Kyros ','Perez'),('9fa2efee-bfbc-4747-b470-7e1c342a542e','C40','Luis David','Silis Perez'),('a211cbcb-cab7-4165-b07b-cc688bf335ca','C71','Sergi Humberto','Hernandez Cardenas'),('a42cbd57-d12d-4e56-9208-f73c3f64c188','C48','marco Montiel','Bernal '),('a51c8bd9-dfa8-4951-addd-fa480047ea52','AA','Argos ','Hernandez '),('a5f4b4b8-37f1-496d-908b-81c4fea992d3','C82','Brian Eduardo','Estrada Romero'),('a7dc03ec-6447-4d4b-9114-113298572145','C28','Jorge Enrrique','Carriozoza Velazquez'),('a8e9939e-96ec-40d5-90d9-66a79bc35281','C83','Manuel Madrid','Hernandez '),('b14ce1d6-3eb4-459e-a76e-8d4182e0b80c','M9','Noe Galicia','Garcia '),('b87a8393-10b1-4b82-8659-7cf98c088917','JR','Jonathan Ricardo','Valerio Solis'),('b88af515-737d-434f-ae98-a6780801795c','AO','Aramzu Antonio','Olivares Hernandez'),('be14246f-3c8d-49bb-ae97-fef51a761cf6','C19','Angel Axel','Arriaga Lara'),('beeb1cc5-bce3-45b8-9f0c-b13d726fc223','AP','Arcangel ','Perez '),('c1aaa13e-8a22-4ecc-9b21-8758b7d45717','C15','Luis Arturo','Davila Gutierrez'),('c2e69280-7159-4a54-b453-66aa3cb14703','RA','rafael Angel','gonzalez '),('c4c2ca0d-7bb9-4403-9e42-067329094005','C44','Marco Antonio','Perez Rosario'),('c4e5b38c-c0c1-416e-9769-1bb417212278','C32','Andres Sajid','Landa Ble'),('d9fc4322-50c0-47b9-992d-4fcac1a7a687','BL17','Waldo Ruben','Rodriguez Mendeola'),('dca6e964-93a0-43d9-843d-b31694dd2b4a','TM','Tania Monserrat','Martinez Camarena'),('def9aaff-3a1a-49be-bc9b-bc1d481b29f9','MODULO 3','Erandi Lizbeth','Perez Fragoso'),('e0b9e31a-14a1-4362-a438-12067c6a2a99','C35','Ladislao Eduardo','Santoyo '),('e4c646e3-590b-4e6c-8434-ba86f15016be','C21','ALFONSO ACEVEDO','AVENDAniO '),('ea5de134-da6e-48d7-9192-95ffc39243cf','AA','Delta ','Contreras'),('f0bb37cc-20c2-49bc-b088-d71e8c3bab61','BL5','Leonardo Cruz','Perez '),('f3411943-c2e1-4db2-a4fe-c171c6e54f38','C73','Guillermo ','Gomez '),('f371eb04-d388-41f6-af85-b203364b2f3c','AL','Angel ','Rivas '),('f5e81902-a9b0-4ccb-bce5-c4ebb3843fa7','C47','Juan Sebastian','Galicia Ruiz'),('f948f738-98e9-455d-b581-8756b82341ba','C85','Luis Pineda','Gonzales '),('fc854342-2d50-4d9d-b6d7-7c554722f69a','C61','Juan Jose','Perez Ordonez'),('fe38ebb4-40f1-4bc3-a2c4-00ce177fb403','C14','Arenas Castro','Jesus Antonio'),('fe8425ff-10b9-4211-ac55-2f8fe0fddac5','RA','Roberto Arturo','Villarreal nvila');
/*!40000 ALTER TABLE `usuarios` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2022-01-27 20:20:16
