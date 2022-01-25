# Seccion 02

## Reto 01:  Agrupamientos y subconsultas

Usando la base de datos  `tienda`, escribe consultas que permitan responder las siguientes preguntas.

-   ¿Qué artículos incluyen la palabra  `Pasta`  en su nombre?

`select * FROM articulo WHERE nombre like '%Pasta%';`

![](https://github.com/reinozab/BEDU/blob/a406d7f392e0f300bd20820ba63b84a0d75223ce/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt01.png)

-   ¿Qué artículos incluyen la palabra  `Cannelloni`  en su nombre?

`select * FROM articulo WHERE nombre like '%Cannelloni%'`

![](https://github.com/reinozab/BEDU/blob/a406d7f392e0f300bd20820ba63b84a0d75223ce/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt01_2.png)

-   ¿Qué nombres están separados por un guión (`-`) por ejemplo  `Puree - Kiwi`?

`select * FROM articulo WHERE nombre like '%Cannelloni%'`

![](https://github.com/reinozab/BEDU/blob/a406d7f392e0f300bd20820ba63b84a0d75223ce/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt01_3.png)

## Reto 02:  Funciones de agrupamiento
Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.

- ¿Cuál es el promedio de salario de los puestos?

`select avg(salario) FROM puesto;`

![](https://github.com/reinozab/BEDU/blob/23b81bd487509121340ec1d1e25891a1b8638bfa/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt02_1.png)

- ¿Cuántos artículos incluyen la palabra Pasta en su nombre?

`SELECT count(*) as total FROM articulo WHERE nombre like '%Pasta%';`

![](https://github.com/reinozab/BEDU/blob/23b81bd487509121340ec1d1e25891a1b8638bfa/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt02_2.png)

- ¿Cuál es el salario mínimo y máximo?

`SELECT min(salario),max(salario) FROM puesto;`

![](https://github.com/reinozab/BEDU/blob/23b81bd487509121340ec1d1e25891a1b8638bfa/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt02_3.png)

- ¿Cuál es la suma del salario de los últimos cinco puestos agregados?

`SELECT salario,id_puesto from puesto order by id_puesto desc limit 5;`

![](https://github.com/reinozab/BEDU/blob/23b81bd487509121340ec1d1e25891a1b8638bfa/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt02_4.png)

# Reto 03: Agrupamientos

Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.

- ¿Cuántos registros hay por cada uno de los puestos?

`SELECT count(*) as total, nombre FROM puesto group by nombre order by total;`

![](https://github.com/reinozab/BEDU/blob/6459ac17ad730b22247349553007372d91eecd91/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt03_1.png)

- ¿Cuánto dinero se paga en total por puesto?

`SELECT sum(salario) as salario, nombre  FROM puesto group by nombre order by salario;`

![](https://github.com/reinozab/BEDU/blob/6459ac17ad730b22247349553007372d91eecd91/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt03_2.png)

- ¿Cuál es el número total de ventas por vendedor?

`SELECT count(*),id_empleado as total FROM venta group by id_empleado;`

![](https://github.com/reinozab/BEDU/blob/6459ac17ad730b22247349553007372d91eecd91/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt03_3.png)

- ¿Cuál es el número total de ventas por artículo?

`SELECT count(*),id_articulo as total FROM venta group by id_articulo;`

![](https://github.com/reinozab/BEDU/blob/6459ac17ad730b22247349553007372d91eecd91/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt03_4.png)

## Reto 04:  Subconsultas

Usando la base de datos tienda, escribe consultas que permitan responder las siguientes preguntas.

- ¿Cuál es el nombre de los empleados cuyo sueldo es menor a $10,000?

`SELECT * FROM empleado WHERE id_puesto IN (SELECT id_puesto FROM puesto WHERE salario<10000);`

![](https://github.com/reinozab/BEDU/blob/872b0591c3d8f08501188bb415587b6288a4122c/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt04_1.png)

- ¿Cuál es la cantidad mínima y máxima de ventas de cada empleado?

`SELECT v.id_empleado, max(total_ventas),min(total_ventas) FROM (SELECT clave,id_empleado,count(*) as total_ventas FROM venta group by clave,id_empleado) as v group by 
v.id_empleado;`

![](https://github.com/reinozab/BEDU/blob/872b0591c3d8f08501188bb415587b6288a4122c/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt04_2.png)

- ¿Cuál es el nombre del puesto de cada empleado?

`SELECT * FROM empleado as e INNER JOIN puesto as p ON e.id_puesto=p.id_puesto;`

![](https://github.com/reinozab/BEDU/blob/872b0591c3d8f08501188bb415587b6288a4122c/Modulo%201%20Introduccion%20a%20BD/Img/sec02rt04_3.png)

# Reto Final

[**Reto Final](https://github.com/reinozab/BEDU/blob/2c6a4d9d0dbe073b55135ebfb570239d79ab84f5/Modulo%201%20Introduccion%20a%20BD/Script/Seccion2retofinal.sql)

