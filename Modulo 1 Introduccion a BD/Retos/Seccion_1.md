# Seccion 01

## Reto 01: Estructura de una tabla
Usando la base de datos tienda, muestra la descripción de las tablas articulo, puesto y venta. Por cada tipo de dato que encuentres llena la siguiente tabla (a mano, puedes dibujarla en un cuaderno o donde tu prefieras). Usa la Documentación de MySQL como referencia si no recuerdas como se usa un comando por supuesto puedes preguntarle al experto.
Realizando ingeria inversa podemos visualizar los tipo de datos que contiene cada tabla.

![](https://github.com/reinozab/BEDU/blob/db92e971da3a62fd0919b35f6dac49eb5dcbc020/Modulo%201%20Introduccion%20a%20BD/Img/sec01rt01.png)

## Reto 02: Estructura básica de una consulta
Usando la tabla empleados, escribe consultas que permitan responder las siguientes preguntas.

-  ¿Cuál es el nombre de los empleados con el puesto 4?

`USE tienda;
SELECT nombre
FROM empleado
WHERE id_puesto= 4 ;`

|  Nombre |
| ------------|
|  Norrie |
| Maxy|

- ¿Qué puestos tienen un salario mayor a $10,000?


`SELECT nombre
FROM puesto
WHERE salario>10000
GROUP BY nombre
ORDER BY nombre;`

![](https://github.com/reinozab/BEDU/blob/091200916bcd7b8b392d9b04dc8957ebf2e0fbdd/Modulo%201%20Introduccion%20a%20BD/Img/sec01rt02.png)

- ¿Qué articulos tienen un precio mayor a $1,000 y un iva mayor a 100?


`   select nombre 
    FROM articulo
    WHERE precio>1000 and iva>100
    ORDER BY nombre;`
    
    
![](https://github.com/reinozab/BEDU/blob/94871c09049626179103b938ccf66ca069f6671c/Modulo%201%20Introduccion%20a%20BD/Img/sec01rt02_2.png)


- ¿Qué ventas incluyen los artículos 135 o 963 y fueron hechas por los empleados 835 o 369?


`select *
FROM venta as v
INNER JOIN articulo a
ON v.id_articulo= a.id_articulo
INNER JOIN empleado e
ON e.id_empleado = v.id_empleado
WHERE a.id_articulo IN (135,963) and e.id_empleado IN (835,396)`

![](https://github.com/reinozab/BEDU/blob/a493aae7a578a87305d0a5124b83f2210fa2f2eb/Modulo%201%20Introduccion%20a%20BD/Img/sec01rt02_3.png)

## Reto 03: Ordenamientos y Límites

Usando la base de datos tienda, escribe una consulta que permita obtener el top 5 de puestos por salarios.

`select * FROM puesto 
order by salario desc
limit 5;`

![](https://github.com/reinozab/BEDU/blob/80f2439fb93504d0a2ba6b3660defc96a8e23ed2/Modulo%201%20Introduccion%20a%20BD/Img/sec01rt03.png)


## Reto Final

Todas las consultas que realices deberás mantenerlas dentro del editor de textos de MySQL Workbench. Al finalizar, guarda este archivo, llendo al menú `File` > `Save script`. Recuerda que para hacer consultas a una tabla debes conocer primero su estructura.

**Deberás entregar el archivo `.sql` correspondiente**



[Reto final](https://github.com/reinozab/BEDU/blob/a3e5fd464758e9ccba6d19e117c7fe51c001f93b/Modulo%201%20Introduccion%20a%20BD/Script/Seccion1retofinal.sql)
