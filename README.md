# PanaderiaDonDonas_MVC
Proyecto desarrollado para la simulación de ventas de donas en una panadería.
Para llevarlo acabo se realizó el diseño y creación de la BD, desarrollo del Backend y la información se presenta a través de un proyecto de Aplicación Web ASP.NET

Dentro del proyecto se considera lo siguiente:

* Por cada venta se debe llenar un formulario en donde se indique Nombre del cliente, dirección, nombre de la dona y cantidad de la misma. La información se debe almacenar en la BD

* En una vista, se debe poder consultar el total de ventas.

* Por medio de una consulta LINQ se debe poder filtrar aquellas ventas que solo pertenezcan a un tipo especifico de donas(Glaseada_Original, Carlos_V_Blanco, Crunch, Larin_Almendra, etc) y el número de ellas sea mayor a 10 piezas.


## Tecnologías utilizadas:
* .NET Framework 4.7
* .ORM Entity Framework Core 6

## Tipos de proyectos generados:
* .ASP.NET (.NET Framework) MVC 5
* .Proyecto de BD SQL Server
	-Uso de Stored Procedures para consulta e inserción de la información.
---
Para el proyecto, se consideró el siguiente diagrama ER

    ![Diagrama ER](https://github.com/ivan3911/PanaderiaDonDonas_MVC/blob/main/assets/RegistroDeVenta.png)

Funcionamiento:

    ![Diagrama ER](https://github.com/ivan3911/PanaderiaDonDonas_MVC/blob/main/assets/RegistroDeVenta.png)


    ![Diagrama ER](https://github.com/ivan3911/PanaderiaDonDonas_MVC/blob/main/assets/VentasTotales.png)


    ![Diagrama ER](https://github.com/ivan3911/PanaderiaDonDonas_MVC/blob/main/assets/VentasPorTipoDona.png)

