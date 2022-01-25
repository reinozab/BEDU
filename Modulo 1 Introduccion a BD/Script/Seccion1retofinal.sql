-- Dentro del mismo servidor de bases de datos, conéctate al esquema `classicmodels`.
USE classicmodels;

-- Dentro de la tabla `employees`, obtén el apellido de todos los empleados.
select lastName FROM employees ORDER BY lastName;

-- Dentro de la tabla `employees`, obtén el apellido, nombre y puesto de todos los empleados.
select lastName, firstName,jobTitle FROM employees ORDER BY lastName;

-- Dentro de la tabla `employees`, obtén todos los datos de cada empleado.
select * FROM employees;

-- Dentro de la tabla `employees`, obtén el apellido, nombre y puesto de todos los empleados que tengan el puesto `Sales Rep`.
select lastName, firstName,jobTitle FROM employees WHERE jobTitle='Sales Rep';

-- Dentro de la tabla `employees`, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto `Sales Rep` y código de oficina `1`.
select lastName, firstName,jobTitle,officeCode FROM employees WHERE jobTitle='Sales Rep' and officeCode=1;

-- Dentro de la tabla `employees`, obtén el apellido, nombre, puesto y código de oficina de todos los empleados que tengan el puesto `Sales Rep` o código de oficina `1`.
select lastName, firstName,jobTitle,officeCode FROM employees WHERE jobTitle='Sales Rep' or officeCode=1;

-- Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados que tenga código de oficina `1`, `2` o `3`.
select lastName, firstName,officeCode FROM employees WHERE officeCode IN(1,2,3);

-- Dentro de la tabla `employees`, obten el apellido, nombre y puesto de todos los empleados que tengan un puesto distinto a `Sales Rep`.
select lastName, firstName,jobTitle FROM employees WHERE jobTitle <>'Sales Rep' ;

-- Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados cuyo código de oficina sea mayor a `5`.
select lastName, firstName,officeCode FROM employees WHERE officeCode>5  ;

-- Dentro de la tabla `employees`, obtén el apellido, nombre y código de oficina de todos los empleados cuyo cdigo de oficina sea menor o igual `4`.
select lastName, firstName,officeCode FROM employees WHERE officeCode<=4  ;

-- Dentro de la tabla `customers`, obtén el nombre, país y estado de todos los clientes cuyo país sea `USA` y cuyo estado sea `CA`.
SELECT customerName, country,state  FROM customers WHERE country='USA' and state='CA';

-- Dentro de la tabla `customers`, obtén el nombre, país, estado y límite de crédito de todos los clientes cuyo país sea, `USA`, cuyo estado sea `CA` y cuyo límite de crédito sea mayor a `100000`.
SELECT customerName, country,state,creditLimit  FROM customers WHERE country='USA' and state='CA' and creditLimit>100000;

-- Dentro de la tabla `customers`, obtén el nombre y país de todos los clientes cuyo país sea `USA` o `France`.
SELECT customerName, country  FROM customers WHERE country='USA' or country='France';

-- Dentro de la tabla `customers`, obtén el nombre, pas y límite de crédito de todos los clientes cuyo país sea `USA` o `France` y cuyo límite de crédito sea mayor a `100000`. Para este ejercicio ten cuidado con los paréntesis.
SELECT customerName, country,creditLimit  FROM customers WHERE (country='USA' or country='France') and creditLimit>100000;

-- Dentro de la tabla `offices`, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que se encuentren en `USA` o `France`.
SELECT officeCode, city,phone,country FROM offices Where country='USA' or country='France' ;

-- Dentro de la tabla `offices`, obtén el código de la oficina, ciudad, teléfono y país de aquellas oficinas que *no* se encuentren en `USA` o `France`.
SELECT officeCode, city,phone,country FROM offices Where country NOT IN('USA','France');

-- Dentro de la tabla `orders`, obtén el número de orden, número de cliente, estado y fecha de envío de todas las órdenes con el número `10165`, `10287` o `10310`.
SELECT orderNumber,customerNumber,status,orderDAte FROM orders WHERE orderNumber IN('10165', '10287','10310');

-- Dentro de la tabla `customers`, obtén el apellido de contacto y nombre de cada cliente y ordena los resultados por apellido de forma ascendente.
SELECT contactLastName, customerName  FROM customers ORDER BY contactLAstName asc;

-- Dentro de la tabla `customers`, obtén el apellido de contacto y nombre de cada cliente y ordena los resultados por apellido de forma descendente.
SELECT contactLastName, customerName  FROM customers ORDER BY contactLAstName desc;

-- Dentro de la tabla `customers`, obtén el apellido y nombre de cada cliente y ordena los resultados por apellido de forma descendente y luego por nombre de forma ascendente.
SELECT contactLastName, customerName  FROM customers ORDER BY contactLAstName desc, customerName asc;

-- Dentro de la tabla `customers`, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más alto (top 5).
SELECT customerNumber, customerName, creditLimit  FROM customers ORDER BY creditLimit desc limit 5;

-- Dentro de la tabla `customers`, obtén el número de cliente, nombre de cliente y el límite de crédito de los cinco clientes con el límite de crédito más bajo diferente de 0.
SELECT customerNumber, customerName, creditLimit  FROM customers WHERE creditLimit <>0  ORDER BY creditLimit asc limit 5;
