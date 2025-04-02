# Gestión de Ventas con SQL

Este proyecto implementa un sistema de gestión de ventas utilizando SQL Server. El objetivo es demostrar el diseño y manejo de bases de datos relacionales, 
realizando consultas avanzadas y aplicando buenas prácticas en la organización y estructuración de los datos.

## 🚀 Funcionalidades

- Creación de la base de datos `GestionVentas`.
- Creación de tablas relacionadas:
  - Clientes
  - Empleados
  - Productos
  - Ventas
  - DetalleVentas
- Inserción de registros en cada tabla.
- Consultas SQL avanzadas utilizando:
  - JOIN
  - SUM
  - MIN
  - COUNT
  - ORDER BY
  - GROUP BY
- Relación entre tablas mediante claves foráneas.
- Análisis de datos para obtener estadísticas y métricas relevantes.

## 🗃️ Estructura de la Base de Datos

Las tablas del proyecto se relacionan de la siguiente manera:

- **Clientes**: Almacena la información de los clientes.
- **Empleados**: Registra los datos de los empleados que realizan las ventas.
- **Productos**: Contiene información sobre los productos disponibles para la venta.
- **Ventas**: Registra las transacciones realizadas, incluyendo el cliente y el empleado asociado.
- **DetalleVentas**: Almacena el detalle de cada venta, incluyendo el producto vendido y la cantidad.

## 📝 Consultas Realizadas

1. **Empleados con más ventas**: Lista los empleados con la cantidad de ventas realizadas y el total vendido.
2. **Productos más vendidos**: Muestra los productos ordenados según el total de unidades vendidas.
3. **Venta mínima por empleado**: Encuentra la venta de menor valor realizada por cada empleado.
4. **Clientes con más compras**: Muestra los clientes ordenados según el monto total gastado.

## 💾 Requisitos

- SQL Server o cualquier gestor compatible.
- Herramienta de administración (como SQL Server Management Studio).

## 🚀 Ejecución del Proyecto

1. Crear la base de datos y las tablas ejecutando el script SQL.
2. Insertar los registros de ejemplo en cada tabla.
3. Realizar las consultas avanzadas para obtener estadísticas y métricas.


¡Gracias por revisar este proyecto! 😄

