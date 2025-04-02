CREATE DATABASE GestionVentas;


USE GestionVentas;



CREATE TABLE Clientes (
    ClienteID INT PRIMARY KEY IDENTITY,
    Nombre VARCHAR(50) NOT NULL,
    Direccion VARCHAR(100),
    Telefono VARCHAR(15),
    Email VARCHAR(50)
);


CREATE TABLE Empleados (
    EmpleadoID INT PRIMARY KEY IDENTITY,
    NombreEmpleado VARCHAR(50) NOT NULL,
    Cargo VARCHAR(50),
    FechaContratacion DATE
);

CREATE TABLE Productos (
    ProductoID INT PRIMARY KEY IDENTITY,
    NombreProducto VARCHAR(50) NOT NULL,
    Precio DECIMAL(10, 2) NOT NULL,
    Stock INT DEFAULT 0
);


CREATE TABLE Ventas (
    VentaID INT PRIMARY KEY IDENTITY,
    ClienteID INT,
    EmpleadoID INT,
    Fecha DATETIME DEFAULT GETDATE(),
    Total DECIMAL(10, 2),
    FOREIGN KEY (ClienteID) REFERENCES Clientes(ClienteID),
    FOREIGN KEY (EmpleadoID) REFERENCES Empleados(EmpleadoID)
);


CREATE TABLE DetalleVentas (
    DetalleID INT PRIMARY KEY IDENTITY,
    VentaID INT,
    ProductoID INT,
    Cantidad INT,
    PrecioUnitario DECIMAL(10, 2),
    FOREIGN KEY (VentaID) REFERENCES Ventas(VentaID),
	FOREIGN KEY (ProductoID) REFERENCES Productos(ProductoID)
);



INSERT INTO Clientes (Nombre, Direccion, Telefono, Email)
VALUES 
('Juan Perez', 'Calle 123', '3001234567', 'juan@mail.com'),
('Ana García', 'Avenida 45', '3109876543', 'ana@mail.com'),
('Carlos Rojas', 'Carrera 50', '3012345678', 'carlosr@mail.com'),
('María Torres', 'Calle 90', '3156789012', 'maria.t@mail.com'),
('Jorge Muñoz', 'Diagonal 20', '3112345678', 'jorge.m@mail.com'),
('Paula Gutiérrez', 'Transversal 15', '3208765432', 'paula.g@mail.com'),
('Daniela Ruiz', 'Autopista Norte', '3123456789', 'daniela.r@mail.com'),
('Fernando López', 'Calle 10', '3198765432', 'fernando.l@mail.com'),
('Gabriela Mendoza', 'Avenida 68', '3145678901', 'gabriela.m@mail.com'),
('Ricardo Gómez', 'Calle 25', '3187654321', 'ricardo.g@mail.com');


INSERT INTO Empleados (NombreEmpleado, Cargo, FechaContratacion)
VALUES 
('Carlos Ruiz', 'Vendedor', '2023-01-15'),
('Luis Fernández', 'Gerente', '2022-03-10'),
('Andrea Morales', 'Cajera', '2021-05-20'),
('Pedro Valencia', 'Supervisor', '2022-07-30'),
('Diana Ortiz', 'Asistente', '2023-03-01'),
('Roberto Ríos', 'Vendedor', '2023-06-10'),
('Laura Peña', 'Vendedora', '2024-01-25'),
('Javier González', 'Supervisor', '2023-02-15'),
('Carmen Silva', 'Cajera', '2022-08-18'),
('Esteban Pardo', 'Asistente', '2023-04-22');


INSERT INTO Productos (NombreProducto, Precio, Stock)
VALUES 
('Laptop', 1500.00, 20),
('Teclado', 50.00, 100),
('Mouse', 25.00, 150),
('Monitor', 300.00, 50),
('Impresora', 250.00, 30),
('USB 16GB', 20.00, 200),
('Auriculares', 40.00, 80),
('Webcam', 60.00, 40),
('Disco Duro', 100.00, 60),
('Tablet', 400.00, 25);


INSERT INTO Ventas (ClienteID, EmpleadoID, Total)
VALUES 
(1, 1, 1550.00),  -- Venta de Laptop y Teclado
(2, 2, 75.00),    -- Venta de 3 Mouse
(3, 3, 300.00),   -- Venta de Monitor
(4, 4, 500.00),   -- Venta de Impresora y USB
(5, 5, 400.00),   -- Venta de Tablet
(6, 6, 40.00),    -- Venta de Auriculares
(7, 7, 60.00),    -- Venta de Webcam
(8, 8, 100.00),   -- Venta de Disco Duro
(9, 9, 20.00),    -- Venta de USB 16GB
(10, 10, 80.00);  -- Venta de Auriculares y Teclado


INSERT INTO DetalleVentas (VentaID, ProductoID, Cantidad, PrecioUnitario)
VALUES 
(1, 1, 1, 1500.00),  -- Laptop
(1, 2, 1, 50.00),    -- Teclado
(2, 3, 3, 25.00),    -- Mouse
(3, 4, 1, 300.00),   -- Monitor
(4, 5, 1, 250.00),   -- Impresora
(4, 6, 5, 20.00),    -- USB 16GB
(5, 10, 1, 400.00),  -- Tablet
(6, 7, 1, 40.00),    -- Auriculares
(7, 8, 1, 60.00),    -- Webcam
(8, 9, 1, 100.00);   -- Disco Duro


-- Seleccionar tablas

SELECT * FROM Clientes
SELECT * FROM Empleados
SELECT * FROM Productos
SELECT * FROM Ventas
SELECT * FROM DetalleVentas