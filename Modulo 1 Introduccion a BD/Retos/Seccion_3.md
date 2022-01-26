# Sección 03

## Reto 01:  Agrupamientos y subconsultas

Usando la base de datos  `tienda`, escribe consultas que permitan responder las siguientes preguntas.

-   ¿Cuál es el nombre de los empleados que realizaron cada venta?

`select e.nombre FROM empleado as e JOIN venta as v ON e.id_empleado=v.id_empleado group by v.id_empleado;`

![](https://github.com/reinozab/BEDU/blob/fdae01fe68027ec4c19832a17a0f9b2b8f2c63ed/Modulo%201%20Introduccion%20a%20BD/Img/sec03rt01_1.png)

-   ¿Cuál es el nombre de los artículos que se han vendido?

`select a.nombre FROM articulo as a JOIN venta as v on a.id_articulo=v.id_articulo group by v.id_articulo order by a.nombre;`

![](https://github.com/reinozab/BEDU/blob/fdae01fe68027ec4c19832a17a0f9b2b8f2c63ed/Modulo%201%20Introduccion%20a%20BD/Img/sec03rt01_2.png)

-   ¿Cuál es el total de cada venta?

`select v.clave,sum(a.precio) as total FROM articulo as a JOIN venta as v on a.id_articulo=v.id_articulo group by v.clave ;`

![](https://github.com/reinozab/BEDU/blob/fdae01fe68027ec4c19832a17a0f9b2b8f2c63ed/Modulo%201%20Introduccion%20a%20BD/Img/sec03rt01_3.png)

## Reto 02: Definición de vistas
Usando la base de datos tienda, define las siguientes vistas que permitan obtener la siguiente información.

AÑADE A TODOS LOS NOMBRES DE TUS VISTAS EL SUFIJO _<tu identificador>. Por ejemplo mi_vista_hermosa_123

- Obtener el puesto de un empleado

`CREATE VIEW puesto_538 AS SELECT * FROM puesto;
SELECT * FROM puesto_538;`

![](https://github.com/reinozab/BEDU/blob/116bf302e44726e849db28f6d9a0dc40b6e263b1/Modulo%201%20Introduccion%20a%20BD/Img/sec03rt02_1.png)

- Saber qué artículos ha vendido cada empleado

`CREATE VIEW articulos_vendidos_538 AS select a.nombre FROM articulo as a JOIN venta as v on a.id_articulo=v.id_articulo group by v.id_articulo order by a.nombre;
select * FROM articulos_vendidos_538;`

![](https://github.com/reinozab/BEDU/blob/116bf302e44726e849db28f6d9a0dc40b6e263b1/Modulo%201%20Introduccion%20a%20BD/Img/sec03rt02_2.png)

- Saber qué puesto ha tenido más ventas

`CREATE VIEW puesto_venta_538 AS select count(*) as ventas, p.nombre FROM empleado as e JOIN puesto as p ON e.id_puesto=p.id_puesto JOIN venta as v ON e.id_empleado=v.id_empleado group by p.id_puesto order by ventas desc;
select * FROM puesto_venta_538 limit 1;`

![](https://github.com/reinozab/BEDU/blob/116bf302e44726e849db28f6d9a0dc40b6e263b1/Modulo%201%20Introduccion%20a%20BD/Img/sec03rt02_3.png)

# Reto Final
 [Reto Final]()

