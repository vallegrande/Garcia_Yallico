USE Garcia_Yallico;
GO

--maestras  

CREATE SCHEMA maestras 
GO

--maestras 
ALTER SCHEMA maestras
TRANSFER dbo.campus
GO
ALTER SCHEMA maestras
TRANSFER dbo.student
GO
ALTER SCHEMA maestras
TRANSFER dbo.seller
GO
ALTER SCHEMA maestras
TRANSFER dbo.course
GO
ALTER SCHEMA maestras
TRANSFER dbo.teachers
GO




--schemas  

CREATE SCHEMA transacional 
GO


--transacional 
ALTER SCHEMA transacional
TRANSFER dbo.enrollment
GO
ALTER SCHEMA transacional
TRANSFER dbo.careers
GO
ALTER SCHEMA transacional
TRANSFER dbo.creers_detail
GO


select*from sys.schemas;

--inserciones 

INSERT INTO maestras.campus (id, register_date, name, direction, place, status)
VALUES  
(1, '2024-01-15 10:00:00', 'Campus A', 'Calle Falsa 123', 'Ciudad A', 'A'),  
(2, '2024-01-16 11:00:00', 'Campus B', 'Avenida Siempre Viva 742', 'Ciudad B', 'A'),  
(3, '2024-01-17 12:00:00', 'Campus C', 'Boulevard de los Sueños 456', 'Ciudad C', 'A'),  
(4, '2024-01-18 09:30:00', 'Campus D', 'Calle de la Paz 789', 'Ciudad D', 'A'),  
(5, '2024-01-19 08:45:00', 'Campus E', 'Avenida Libertad 321', 'Ciudad E', 'A');
GO


SELECT * FROM maestras.campus
GO


INSERT INTO transacional.careers (id, names, descriptions, durations, register_date, status) VALUES  
(1, 'Ingeniería en Sistemas', 'Formación en desarrollo de software', 4, '2024-01-20 10:00:00', 'A'),  
(2, 'Administración de Empresas', 'Gestión empresarial y finanzas', 4, '2024-01-21 11:00:00', 'A'),  
(3, 'Psicología', 'Estudio del comportamiento humano', 5, '2024-01-22 12:00:00', 'A'),  
(4, 'Arquitectura', 'Diseño y planificación de edificaciones', 5, '2024-01-23 09:30:00', 'A'),  
(5, 'Biología', 'Estudio de los seres vivos', 4, '2024-01-24 08:45:00', 'A');
GO

SELECT * FROM transacional.careers
GO


INSERT INTO maestras.course (id, name, credits, status) VALUES  
(1, 'Programación I', 4, 'A'),  
(2, 'Contabilidad Básica', 3, 'A'),  
(3, 'Introducción a la Psicología', 4, 'A'),  
(4, 'Dibujo Técnico', 3, 'A'),  
(5, 'Biología General', 4, 'A');
GO

SELECT * FROM maestras.course
GO


INSERT INTO maestras.seller (id, names, last_name, email, birthday, place, salary, status) VALUES  
(1, 'Sofía', 'Jiménez', 'sofia.jimenez@example.com', '1995-02-20', 'Tienda A', 2500.00, 'A'),  
(2, 'Diego', 'Ríos', 'diego.rios@example.com', '1988-04-15', 'Tienda B', 2700.00, 'A'),  
(3, 'Valeria', 'Morales', 'valeria.morales@example.com', '1992-07-30', 'Tienda C', 2300.00, 'A'),  
(4, 'Andrés', 'Cruz', 'andres.cruz@example.com', '1990-09-10', 'Tienda D', 2600.00, 'A'),  
(5, 'Camila', 'Vásquez', 'camila.vasquez@example.com', '1993-12-05', 'Tienda E', 2400.00, 'A');

SELECT * FROM maestras.seller
GO


INSERT INTO maestras.student (id, names, last_name, email, register_date, birthday, status) VALUES  
(1, 'Juan', 'Pérez', 'juan.perez@example.com', '2024-01-10 10:00:00', '2000-05-15', 'A'),  
(2, 'Ana', 'Gómez', 'ana.gomez@example.com', '2024-01-12 11:30:00', '1999-08-22', 'A'),  
(3, 'Luis', 'Martínez', 'luis.martinez@example.com', '2024-01-15 09:45:00', '2001-03-30', 'A'),  
(4, 'Marta', 'López', 'marta.lopez@example.com', '2024-01-20 14:20:00', '2002-11-05', 'A'),  
(5, 'Carlos', 'Hernández', 'carlos.hernandez@example.com', '2024-01-25 16:00:00', '2000-12-12', 'A');

SELECT * FROM maestras.student
GO

INSERT INTO maestras.teachers (id, register_date, names, last_names, speciality, phone, email, status) VALUES  
(1, '2024-01-10 10:00:00', 'Pedro', 'Sánchez', 'Matemáticas', '123456789', 'pedro.sanchez@example.com', 'A'),  
(2, '2024-01-12 11:30:00', 'Laura', 'Martínez', 'Historia', '987654321', 'laura.martinez@example.com', 'A'),  
(3, '2024-01-15 09:45:00', 'Jorge', 'Ramírez', 'Ciencias', '123123123', 'jorge.ramirez@example.com', 'A'),  
(4, '2024-01-20 14:20:00', 'Clara', 'González', 'Literatura', '321321321', 'clara.gonzalez@example.com', 'A'),  
(5, '2024-01-25 16:00:00', 'Fernando', 'Torres', 'Física', '456456456', 'fernando.torres@example.com', 'A');

SELECT * FROM maestras.teachers
GO