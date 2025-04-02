USE GestionVentas


-- empleados con mas ventas

SELECT e.NombreEmpleado, COUNT(v.VentaID) AS VentasRealizadas, SUM(v.Total) AS TotalVendido
FROM Ventas v
JOIN Empleados e ON v.EmpleadoID = e.EmpleadoID
GROUP BY e.NombreEmpleado;


--Productos Más Vendido

SELECT p.NombreProducto, SUM(d.Cantidad) AS TotalVendido
FROM DetalleVentas d
JOIN Productos p ON d.ProductoID = p.ProductoID
GROUP BY p.NombreProducto
ORDER BY TotalVendido DESC;


-- Venta mas baja de cada empleado

SELECT e.NombreEmpleado, MIN(v.Total) AS VentaMinima
FROM Ventas v
JOIN Empleados e ON v.EmpleadoID = e.EmpleadoID
GROUP BY e.NombreEmpleado;


-- Clientes con mas compras

SELECT c.Nombre AS NombreCliente, SUM(v.Total) AS TotalCompras
FROM Clientes c
JOIN Ventas v ON c.ClienteID = v.ClienteID
GROUP BY c.Nombre
ORDER BY TotalCompras DESC;