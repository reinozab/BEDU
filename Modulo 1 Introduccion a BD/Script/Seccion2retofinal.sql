Use tienda;
-- Reto 01
select * FROM articulo WHERE nombre like '%Pasta%';
select * FROM articulo WHERE nombre like '%Cannelloni%';
select * FROM articulo WHERE nombre like '% - %';
-- Reto 02
Select avg(salario) FROM puesto;
SELECT count(*) as total FROM articulo WHERE nombre like '%Pasta%';
SELECT min(salario),max(salario) FROM puesto;
SELECT sum(s.salario) from ( SELECT salario from puesto order by id_puesto desc limit 5 ) as s;

-- Reto 03
SELECT count(*) as total, nombre FROM puesto group by nombre order by total;
SELECT sum(salario) as salario, nombre  FROM puesto group by nombre order by salario;
SELECT count(*) as total  ,id_empleado FROM venta group by id_empleado;
SELECT count(*)as total  ,id_articulo FROM venta group by id_articulo;

-- Reto 04
SELECT * FROM empleado WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE salario<10000);
SELECT v.id_empleado, max(total_ventas),min(total_ventas) FROM (SELECT clave,id_empleado,count(*) as total_ventas FROM venta group by clave,id_empleado) as v group by v.id_empleado;
SELECT * FROM empleado as e INNER JOIN puesto as p ON e.id_puesto=p.id_puesto;

-- Reto Final
USE `classicmodels`;
-- Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre empiece con A.
SELECT `customerNumber`,`contactLastName`,`customerName` FROM `customers` WHERE customerName like 'A%';

-- Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo apellido termina con on.
SELECT `customerNumber`,`contactLastName`,`customerName` FROM `customers` WHERE contactLastName like '%on';

-- Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre incluye la cadena on.
SELECT `customerNumber`,`contactLastName`,`customerName` FROM `customers` WHERE customerName like '%on%';

-- Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyos nombres tienen seis letras e inician con G.
SELECT `customerNumber`,`contactLastName`,`customerName` FROM `customers` WHERE length(customerName)=6 and customerName like 'G%';

-- Dentro de la tabla employees, obten el número de empleado, apellido y nombre de todos los empleados cuyo nombre no inicia con B.
SELECT `customerNumber`,`contactLastName`,`customerName` FROM `customers` WHERE customerName not like 'B%' order by customerName;

-- Dentro de la tabla products, obten el código de producto y nombre de los productos cuyo código incluye la cadena _20.
Select `productCode`, `productName` FROM `products` WHERE productCode LIKE '%_20%';

-- Dentro de la tabla orderdetails, obten el total de cada orden.
select `orderNumber`, sum(`quantityOrdered`) as cantidad, sum(`priceEach`) as total FROM orderdetails group by orderNumber;

-- Dentro de la tabla orders obten el número de órdenes por año.
select year(orderDate) as anio ,count(*) as cantidad FROM orders group by anio;

-- Obten el apellido y nombre de los empleados cuya oficina está ubicada en USA.
select lastName,firstName,country FROM employees as e INNER JOIN offices as o ON e.officeCode=o.officeCode WHERE o.country='USA';

-- Obten el número de cliente, número de cheque y cantidad del cliente que ha realizado el pago más alto.
select customerNumber, checkNumber, amount FROM payments order by amount desc limit 1;

-- Obten el número de cliente, número de cheque y cantidad de aquellos clientes cuyo pago es más alto que el promedio.
select customerNumber, checkNumber, amount FROM payments WHERE amount > ( select AVG(amount) FROM payments ) order by amount;

-- Obten el nombre de aquellos clientes que no han hecho ninguna orden.
select c.customerNumber FROM customers as c left join orders as o ON c.customerNumber=o.customerNumber where o.orderNumber is null;

-- Obten el máximo, mínimo y promedio del número de productos en las órdenes de venta.
select max(`quantityOrdered`), min(`quantityOrdered`), avg(`quantityOrdered`) from orderdetails;

-- Dentro de la tabla orders, obten el número de órdenes que hay por cada estado.
Select count(*) as cantidad, status from orders group by status;
