CREATE 
    ALGORITHM = UNDEFINED 
    DEFINER = `root`@`localhost` 
    SQL SECURITY DEFINER
VIEW `reporte_infraciones` AS
    SELECT 
        `i`.`Id` AS `id`,
        `m`.`Code` AS `motivo`,
        `v`.`Brand` AS `Brand`,
        `v`.`Model` AS `Model`,
        `v`.`color` AS `color`,
        `u`.`Codigo` AS `Codigo`,
        `u`.`Nombre` AS `Nombre`,
        `i`.`PlaceOfPayment` AS `PlaceOfPayment`,
        `i`.`Latitude` AS `Latitude`,
        `i`.`Longitude` AS `Longitude`,
        `i`.`IdClamp01` AS `IdClamp01`,
        (SELECT DAYOFMONTH(STR_TO_DATE(`i`.`CreationDate`, '%m/%d/%Y %H:%i:%s'))) AS `dia`,
        (SELECT MONTH(STR_TO_DATE(`i`.`CreationDate`, '%m/%d/%Y %H:%i:%s'))) AS `mes`,
        (SELECT YEAR(STR_TO_DATE(`i`.`CreationDate`, '%m/%d/%Y %H:%i:%s'))) AS `anio`,
        (SELECT HOUR(STR_TO_DATE(`i`.`CreationDate`, '%m/%d/%Y %H:%i:%s'))) AS `hora`,
        (SELECT MINUTE(STR_TO_DATE(`i`.`CreationDate`, '%m/%d/%Y %H:%i:%s'))) AS `minuto`,
        (SELECT SECOND(STR_TO_DATE(`i`.`CreationDate`, '%m/%d/%Y %H:%i:%s'))) AS `segundo`,
        `i`.`CreationDate` AS `CreationDate`,
        (SELECT DAYOFMONTH(STR_TO_DATE(`i`.`CloseDate`, '%m/%d/%Y %H:%i:%s'))) AS `dia_close`,
        (SELECT MONTH(STR_TO_DATE(`i`.`CloseDate`, '%m/%d/%Y %H:%i:%s'))) AS `mes_close`,
        (SELECT YEAR(STR_TO_DATE(`i`.`CloseDate`, '%m/%d/%Y %H:%i:%s'))) AS `anio_close`,
        (SELECT HOUR(STR_TO_DATE(`i`.`CloseDate`, '%m/%d/%Y %H:%i:%s'))) AS `hora_close`,
        (SELECT MINUTE(STR_TO_DATE(`i`.`CloseDate`, '%m/%d/%Y %H:%i:%s'))) AS `minuto_close`,
        (SELECT SECOND(STR_TO_DATE(`i`.`CloseDate`, '%m/%d/%Y %H:%i:%s'))) AS `segundo_close`,
        `i`.`CloseDate` AS `CloseDate`
    FROM
        (((`infracciones` `i`
        JOIN `motivos` `m` ON ((`i`.`idInfringementReason` = `m`.`Id`)))
        JOIN (SELECT 
            `v`.`Id` AS `Id`,
                `c`.`Brand` AS `Brand`,
                `c`.`Model` AS `Model`,
                `v`.`Color` AS `color`
        FROM
            (`vehiculos` `v`
        JOIN `catalogo` `c` ON ((`c`.`Id` = `v`.`IdVehicleCatalog`)))) `v` ON ((`i`.`IdVehicle` = `v`.`Id`)))
        JOIN `usuarios` `u`)