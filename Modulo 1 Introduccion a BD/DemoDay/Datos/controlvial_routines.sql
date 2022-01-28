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
-- Temporary view structure for view `reporte_infraciones`
--

DROP TABLE IF EXISTS `reporte_infraciones`;
/*!50001 DROP VIEW IF EXISTS `reporte_infraciones`*/;
SET @saved_cs_client     = @@character_set_client;
/*!50503 SET character_set_client = utf8mb4 */;
/*!50001 CREATE VIEW `reporte_infraciones` AS SELECT 
 1 AS `id`,
 1 AS `motivo`,
 1 AS `Brand`,
 1 AS `Model`,
 1 AS `color`,
 1 AS `Codigo`,
 1 AS `Nombre`,
 1 AS `PlaceOfPayment`,
 1 AS `Latitude`,
 1 AS `Longitude`,
 1 AS `IdClamp01`,
 1 AS `dia`,
 1 AS `mes`,
 1 AS `anio`,
 1 AS `hora`,
 1 AS `minuto`,
 1 AS `segundo`,
 1 AS `CreationDate`,
 1 AS `dia_close`,
 1 AS `mes_close`,
 1 AS `anio_close`,
 1 AS `hora_close`,
 1 AS `minuto_close`,
 1 AS `segundo_close`,
 1 AS `CloseDate`*/;
SET character_set_client = @saved_cs_client;

--
-- Final view structure for view `reporte_infraciones`
--

/*!50001 DROP VIEW IF EXISTS `reporte_infraciones`*/;
/*!50001 SET @saved_cs_client          = @@character_set_client */;
/*!50001 SET @saved_cs_results         = @@character_set_results */;
/*!50001 SET @saved_col_connection     = @@collation_connection */;
/*!50001 SET character_set_client      = utf8mb4 */;
/*!50001 SET character_set_results     = utf8mb4 */;
/*!50001 SET collation_connection      = utf8mb4_0900_ai_ci */;
/*!50001 CREATE ALGORITHM=UNDEFINED */
/*!50013 DEFINER=`root`@`localhost` SQL SECURITY DEFINER */
/*!50001 VIEW `reporte_infraciones` AS select `i`.`Id` AS `id`,`m`.`Code` AS `motivo`,`v`.`Brand` AS `Brand`,`v`.`Model` AS `Model`,`v`.`color` AS `color`,`u`.`Codigo` AS `Codigo`,`u`.`Nombre` AS `Nombre`,`i`.`PlaceOfPayment` AS `PlaceOfPayment`,`i`.`Latitude` AS `Latitude`,`i`.`Longitude` AS `Longitude`,`i`.`IdClamp01` AS `IdClamp01`,(select dayofmonth(str_to_date(`i`.`CreationDate`,'%m/%d/%Y %H:%i:%s'))) AS `dia`,(select month(str_to_date(`i`.`CreationDate`,'%m/%d/%Y %H:%i:%s'))) AS `mes`,(select year(str_to_date(`i`.`CreationDate`,'%m/%d/%Y %H:%i:%s'))) AS `anio`,(select hour(str_to_date(`i`.`CreationDate`,'%m/%d/%Y %H:%i:%s'))) AS `hora`,(select minute(str_to_date(`i`.`CreationDate`,'%m/%d/%Y %H:%i:%s'))) AS `minuto`,(select second(str_to_date(`i`.`CreationDate`,'%m/%d/%Y %H:%i:%s'))) AS `segundo`,`i`.`CreationDate` AS `CreationDate`,(select dayofmonth(str_to_date(`i`.`CloseDate`,'%m/%d/%Y %H:%i:%s'))) AS `dia_close`,(select month(str_to_date(`i`.`CloseDate`,'%m/%d/%Y %H:%i:%s'))) AS `mes_close`,(select year(str_to_date(`i`.`CloseDate`,'%m/%d/%Y %H:%i:%s'))) AS `anio_close`,(select hour(str_to_date(`i`.`CloseDate`,'%m/%d/%Y %H:%i:%s'))) AS `hora_close`,(select minute(str_to_date(`i`.`CloseDate`,'%m/%d/%Y %H:%i:%s'))) AS `minuto_close`,(select second(str_to_date(`i`.`CloseDate`,'%m/%d/%Y %H:%i:%s'))) AS `segundo_close`,`i`.`CloseDate` AS `CloseDate` from (((`infracciones` `i` join `motivos` `m` on((`i`.`idInfringementReason` = `m`.`Id`))) join (select `v`.`Id` AS `Id`,`c`.`Brand` AS `Brand`,`c`.`Model` AS `Model`,`v`.`Color` AS `color` from (`vehiculos` `v` join `catalogo` `c` on((`c`.`Id` = `v`.`IdVehicleCatalog`)))) `v` on((`i`.`IdVehicle` = `v`.`Id`))) join `usuarios` `u`) */;
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

-- Dump completed on 2022-01-27 20:20:47
