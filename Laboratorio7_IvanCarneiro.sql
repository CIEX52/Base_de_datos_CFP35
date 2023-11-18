-- CREATE DB NEGOCIO
    drop database if exists negocio;
    create database negocio;
    use negocio;
    create table clientes(
        codigo integer auto_increment primary key,
        nombre varchar(20) not null,
        apellido varchar(20) not null,
        cuit char(11),
        direccion varchar(50),
        comentarios varchar(255)
    );
    create table facturas(
        letra char(1),									
        numero int,
        fecha date,
        monto double,
        primary key(letra,numero) -- clave primaria compuesta
    );
    create table articulos(
        codigo int primary key,
        descripcion varchar(150) not null,
        precio double,
        stock int
    );
    INSERT INTO clientes (nombre, apellido, cuit, direccion, comentarios) VALUES
    ('Juan', 'Pérez', '12345678901', 'Calle 123', 'Cliente frecuente'),
    ('María', 'Gómez', '23456789012', 'Avenida 456', 'Cliente nuevo'),
    ('Carlos', 'López', '34567890123', 'Plaza Principal', ''),
    ('Laura', 'Martínez', '45678901234', 'Calle 789', ''),
    ('Pedro', 'Rodríguez', '56789012345', 'Avenida 012', ''),
    ('Ana', 'Hernández', '67890123456', 'Calle 345', ''),
    ('Luis', 'García', '78901234567', 'Avenida 678', ''),
    ('Silvia', 'Fernández', '89012345678', 'Calle 901', ''),
    ('Diego', 'Torres', '90123456789', 'Avenida 234', ''),
    ('Marta', 'Sánchez', '01234567890', 'Calle 567', ''),
    ('Roberto', 'Romero', '12345678901', 'Avenida 890', ''),
    ('Elena', 'Ortega', '23456789012', 'Calle 123', ''),
    ('Andrés', 'Vargas', '34567890123', 'Avenida 456', ''),
    ('Carolina', 'Molina', '45678901234', 'Calle 789', ''),
    ('Fernando', 'Rojas', '56789012345', 'Avenida 012', ''),
    ('Gabriela', 'Paredes', '67890123456', 'Calle 345', ''),
    ('Héctor', 'Navarro', '78901234567', 'Avenida 678', ''),
    ('Lucía', 'Sosa', '89012345678', 'Calle 901', ''),
    ('Ricardo', 'Cabrera', '90123456789', 'Avenida 234', ''),
    ('Natalia', 'Ríos', '01234567890', 'Calle 567', '');
    insert into clientes     (nombre, apellido, cuit, direccion) values
                            ('Juan', 'Correti', '123456789', 'Lima 222');
    INSERT INTO clientes (nombre, apellido, cuit, direccion, comentarios) VALUES
    ('Juan', 'Gomez', '20345678901', 'Calle 123', 'Cliente regular'),
    ('María', 'López', '30456789012', 'Avenida 456', 'Nuevo cliente'),
    ('Pedro', 'Martínez', '40567890123', 'Calle Principal', 'Cliente preferente'),
    ('Laura', 'Rodríguez', '50678901234', 'Avenida Central', 'Cliente VIP'),
    ('Carlos', 'Fernández', '60789012345', 'Calle Secundaria', 'Cliente ocasional'),
    ('Ana', 'Pérez', '70890123456', 'Avenida 789', 'Cliente frecuente'),
    ('Miguel', 'González', '80901234567', 'Calle 456', 'Cliente nuevo'),
    ('Sofía', 'Ramírez', '91012345678', 'Avenida 123', 'Cliente importante'),
    ('Diego', 'Silva', '01123456789', 'Calle 789', 'Cliente regular'),
    ('Carolina', 'Torres', '12134567890', 'Avenida 234', 'Cliente preferente'),
    ('José', 'Hernández', '23145678901', 'Calle Principal', 'Cliente frecuente'),
    ('Andrea', 'Paz', '34156789012', 'Avenida Central', 'Cliente nuevo'),
    ('Mario', 'Moreno', '45167890123', 'Calle Secundaria', 'Cliente VIP'),
    ('Fernanda', 'Rojas', '56178901234', 'Avenida 456', 'Cliente importante'),
    ('Javier', 'García', '67189012345', 'Calle 789', 'Cliente frecuente'),
    ('Gabriela', 'Luna', '78190123456', 'Avenida 123', 'Cliente ocasional'),
    ('Luis', 'Vargas', '89101234567', 'Calle 234', 'Cliente preferente'),
    ('Carla', 'Cruz', '90112345678', 'Avenida 789', 'Cliente regular'),
    ('Ricardo', 'Santos', '01123456789', 'Calle Principal', 'Cliente nuevo'),
    ('Valeria', 'Ortega', '12134567890', 'Avenida Central', 'Cliente VIP'),
    ('Daniel', 'Mendoza', '23145678901', 'Calle Secundaria', 'Cliente importante'),
    ('Lucía', 'Guerrero', '34156789012', 'Avenida 456', 'Cliente frecuente'),
    ('Pablo', 'Navarro', '45167890123', 'Calle 789', 'Cliente nuevo'),
    ('Alejandra', 'Ríos', '56178901234', 'Avenida 123', 'Cliente preferente'),
    ('Hugo', 'Cordero', '67189012345', 'Calle 234', 'Cliente ocasional');
    INSERT INTO clientes (nombre, apellido, cuit, direccion, comentarios) VALUES
    ('Giovanni', 'Rossi', '20345678901', 'Via Roma 123', 'Cliente regular'),
    ('Francesca', 'Bianchi', '30456789012', 'Piazza Dante 456', 'Nuevo cliente'),
    ('Antonio', 'Ferrari', '40567890123', 'Corso Italia 789', 'Cliente preferente'),
    ('Maria', 'Ricci', '50678901234', 'Via Verdi 234', 'Cliente VIP'),
    ('Marco', 'Marini', '60789012345', 'Largo Garibaldi 567', 'Cliente ocasional'),
    ('Luca', 'Conti', '70890123456', 'Via Milano 890', 'Cliente frecuente'),
    ('Alessia', 'Galli', '80901234567', 'Piazza Garibaldi 123', 'Cliente nuevo'),
    ('Simone', 'Moretti', '91012345678', 'Corso Vittorio Emanuele 456', 'Cliente importante'),
    ('Giulia', 'Barbieri', '01123456789', 'Via Dante 789', 'Cliente regular'),
    ('Matteo', 'Mancini', '12134567890', 'Piazza San Pietro 012', 'Cliente preferente'),
    ('Sara', 'Leone', '23145678901', 'Corso Umberto 345', 'Cliente frecuente'),
    ('Lorenzo', 'Rizzo', '34156789012', 'Via Garibaldi 678', 'Cliente nuevo');
    INSERT INTO clientes (nombre, apellido, cuit, direccion, comentarios) VALUES
    ('Aleksandr', 'Ivanov', '20345678901', 'ul. Lenina 123', 'Cliente regular'),
    ('Elena', 'Kovač', '30456789012', 'Trg Slobode 456', 'Nuevo cliente'),
    ('Mihai', 'Popescu', '40567890123', 'Strada Victoriei 789', 'Cliente preferente'),
    ('Anastasia', 'Kuznetsova', '50678901234', 'ul. Gorkogo 234', 'Cliente VIP'),
    ('Pavel', 'Novák', '60789012345', 'Náměstí Republiky 567', 'Cliente ocasional');

    INSERT INTO facturas (letra, numero, fecha, monto) VALUES
    ('A', 1, '2022-01-01', 100.50),
    ('A', 2, '2022-01-02', 200.75),
    ('A', 3, '2022-02-03', 150.25),
    ('A', 4, '2022-08-04', 300.00),
    ('B', 1, '2022-02-01', 50.75),
    ('B', 2, '2022-03-02', 75.25),
    ('B', 3, '2022-05-03', 125.50),
    ('B', 4, '2022-05-04', 250.00),
    ('C', 1, '2022-03-01', 75.25),
    ('C', 2, '2022-11-02', 150.50),
    ('C', 3, '2022-04-03', 200.75),
    ('C', 4, '2022-09-04', 100.25),
    ('D', 1, '2022-12-01', 300.00),
    ('D', 2, '2022-03-02', 100.50),
    ('D', 3, '2022-10-03', 200.75),
    ('D', 4, '2022-08-04', 150.25),
    ('E', 1, '2022-06-01', 250.00),
    ('E', 2, '2022-07-02', 50.75),
    ('E', 3, '2022-09-03', 75.25),
    ('E', 4, '2022-10-04', 125.50);
    INSERT INTO facturas (letra, numero, fecha, monto) VALUES
    ('A', 101, '2023-01-01', 100.50),
    ('A', 102, '2023-02-02', 200.75),
    ('A', 103, '2023-03-03', 150.25),
    ('A', 104, '2023-03-04', 300.00),
    ('A', 105, '2023-06-03', 75.25),
    ('B', 101, '2023-02-01', 50.75),
    ('B', 102, '2023-04-02', 75.25),
    ('B', 103, '2023-05-03', 125.50),
    ('B', 104, '2023-05-04', 250.00),
    ('C', 101, '2023-02-01', 75.25),
    ('C', 102, '2023-02-02', 150.50),
    ('C', 103, '2023-10-03', 200.75),
    ('C', 104, '2023-09-04', 100.25),
    ('C', 105, '2023-11-03', 89.50),
    ('D', 101, '2023-01-01', 300.00),
    ('D', 102, '2023-04-02', 100.50),
    ('D', 103, '2023-05-03', 200.75),
    ('D', 104, '2023-06-04', 150.25),
    ('E', 101, '2023-02-01', 250.00),
    ('E', 102, '2023-05-02', 50.75),
    ('E', 103, '2023-07-03', 75.25),
    ('E', 104, '2023-08-04', 125.50);
    INSERT INTO articulos (codigo, descripcion, precio, stock) VALUES
    (1, 'Martillo de carpintero', 20, 50),
    (2, 'Destornillador Phillips', 6.99, 70),
    (3, 'Cinta métrica de acero', 75.5, 100),
    (4, 'Llave inglesa ajustable', 105.99, 40),
    (5, 'Sierra para metales', 18.50, 80),
    (6, 'Taladro eléctrico inalámbrico', 79.99, 60),
    (7, 'Broca de concreto de 10 mm', 12, 120),
    (8, 'Pala de jardín', 14.99, 30),
    (9, 'Cincel para tallar madera', 9.99, 90),
    (10, 'Guantes de trabajo resistentes', 12.99, 40),
    (11, 'Llave de tubo de 12 pulgadas', 14.50, 70),
    (12, 'Serrucho de mano', 16.99, 50),
    (13, 'Clavos galvanizados de 2 pulgadas', 7.99, 110),
    (14, 'Pistola de silicona caliente', 30, 20),
    (15, 'Escalera de aluminio de 6 pies', 82.99, 60),
    (16, 'Tornillos para madera de 2-1/2 pulgadas', 9.50, 80),
    (17, 'Candado de seguridad resistente', 45.99, 100),
    (18, 'Pintura en aerosol color negro mate', 5.99, 30),
    (19, 'Flexómetro retráctil de 5 metros', 12.50, 70),
    (20, 'Cepillo de alambre de acero', 7.99, 90),
    (21, 'Lámpara a queroceno', 75.5, 5),
    (22, 'Queroceno para lámpara', 3.99, 90),
    (23, 'Queroceno suelto', 3.99, 70),
    (24, 'Taladro Profesional', 356.55, 5),
    (25, 'Disyuntor Monofásico 30A', 549.99, 20),
    (26, 'Rollo Cable Eléctrico 2mm 100m', 759.99, 10),
    (27, 'Articulo de ejemplo con stock menor de cero', 10, -3);
    insert into clientes values 
    (64, 'Juan', 'Perez', '20345678901', 'Corrientes 348', ''),
    (65, 'Maria', 'Gomez', '20345678902', 'Florida 165', ''),
    (66, 'Carlos', 'Rodriguez', '20345678903', 'Santa Fe 505', ''),
    (67, 'Ana', 'Lopez', '20345678904', 'Lavalle 750', ''),
    (68, 'Pedro', 'Martinez', '20345678905', 'Cabildo 2040', '');
    insert into clientes (nombre, apellido, cuit) values 
    ('Ivan', 'Carneiro', '20338644400'),
    ('Tamara', 'Acosta', '27368735094'),
    ('Telmo', 'Ramirez', '20118950962'),
    ('Darcisa', 'Morales', '23148769319'),
    ('Lorena', 'Mendieta', '294682496');


-- Laboratio 07

-- Usando la base de datos negocio tabla facturas.
-- 1- 	Informar total facturado (suma de monto) en cada día.
SELECT * FROM facturas;
SELECT fecha FECHA, SUM(monto) TOTAL_FACTURADO FROM facturas GROUP BY fecha;

-- 2-	Informar total facturado (suma de monto) en cada mes.
SELECT YEAR(fecha) AÑO,MONTH(fecha) MES, SUM(monto) TOTAL_MES FROM facturas GROUP BY YEAR(fecha), MONTH(fecha);

-- 3-	Informar total facturado (suma de monto) y cuantas facturas (count(*)) se realizaron en cada año.
INSERT INTO facturas values ('X', 104, '2023-11-14', 9999.99);
SELECT YEAR(fecha) AÑO, COUNT(*) CANT_FACTURAS, SUM(monto) FACTURACION FROM facturas GROUP BY YEAR(fecha);

-- Usando la base de datos articulos.
ALTER TABLE articulos ADD marca VARCHAR(20);
UPDATE articulos
set marca = CASE 
    WHEN codigo = 1 THEN 'Bosch' 
    WHEN codigo = 2 THEN 'Stanley' 
    WHEN codigo = 3 THEN 'Dewalt' 
    WHEN codigo = 4 THEN 'Black & Decker' 
    WHEN codigo = 5 THEN 'Bosch' 
    WHEN codigo = 6 THEN 'Skil' 
    WHEN codigo = 7 THEN 'Dremel' 
    WHEN codigo = 8 THEN 'AEG' 
    WHEN codigo = 9 THEN 'Ryobi' 
    WHEN codigo = 10 THEN 'Milwaukee' 
    WHEN codigo = 11 THEN 'Irwin' 
    WHEN codigo = 12 THEN 'Knipex' 
    WHEN codigo = 13 THEN 'Tramontina' 
    WHEN codigo = 14 THEN 'Bahco' 
    WHEN codigo = 15 THEN 'Lusqtoff' 
    WHEN codigo = 16 THEN 'Gamma' 
    WHEN codigo = 17 THEN 'Gladiator' 
    WHEN codigo = 18 THEN 'Bosch' 
    WHEN codigo = 19 THEN 'Husqvarna' 
    WHEN codigo = 20 THEN 'Stanley' 
    WHEN codigo = 21 THEN 'Sthil' 
    WHEN codigo = 22 THEN 'Sthil' 
    WHEN codigo = 23 THEN 'Sthil' 
    WHEN codigo = 24 THEN 'Husqvarna' 
    WHEN codigo = 25 THEN 'Kushiro' 
    WHEN codigo = 26 THEN '3M' 
    WHEN codigo = 27 THEN 'Gamma' 
    ELSE marca
END;

SELECT * FROM articulos;

-- 1- Informar cantidad de taladros.
SELECT COUNT(*) CANT_TALADROS FROM articulos WHERE descripcion LIKE '%taladro%';

-- 2- Informar cantidad de taladros segun marca.
INSERT INTO articulos VALUES (28, 'Taladro manual carpintero', 159, 3, 'Husqvarna');
SELECT * FROM articulos WHERE descripcion LIKE '%taladro%';

SELECT COUNT(*) CANT_TALADROS, marca FROM articulos WHERE descripcion LIKE '%taladro%' GROUP BY marca;

-- 3- Informar cual es el taladro más barato.
SELECT codigo,descripcion,marca,precio FROM articulos WHERE descripcion LIKE '%taladro%' ORDER BY precio LIMIT 1;

-- 4- Aumentar un 15% los articulos de la marca 'Stanley'.
SELECT * FROM articulos WHERE marca = 'Stanley';
UPDATE articulos set precio = ROUND((precio * 1.15), 2) WHERE marca = 'Stanley';
SELECT * FROM articulos WHERE marca = 'Stanley';

-- 5- Bajar un 4% las llaves.
SELECT * FROM articulos WHERE descripcion LIKE '%llave%';
UPDATE articulos set precio = ROUND((precio * 0.96), 2) WHERE descripcion LIKE '%llave%';
SELECT * FROM articulos WHERE descripcion LIKE '%llave%';

-- 6- Listar los articulos ordenaros por marca,descripción,precio.
SELECT codigo,marca,descripcion,stock,precio FROM articulos ORDER BY marca,descripcion,precio;

-- 7- Cantidad de articulos según marca y descripción.
INSERT INTO articulos VALUES
(29, 'Broca de concreto de 10 mm', 15.50, 50, 'Bosch'),
(30, 'Destornillador plano', 9.55, 15, 'Stanley'),
(31, 'Clavos galvanizados de 2 pulgadas', 8.15, 250, 'Sthil'),
(32, 'Cinta métrica de acero', 68.45, 20, 'Black & Decker'),
(33, 'Llave inglesa ajustable', 259.99, 30, 'Bahco'),
(34, 'Llave inglesa ajustable', 215.95, 40, 'Bosch');
SELECT marca,descripcion,COUNT(*) CANT_ARTICULOS FROM articulos GROUP BY marca, descripcion;

-- 8- Mostrar el producto mas caro de la marca 'Husqvarna'
SELECT * FROM articulos WHERE marca = 'Husqvarna' ORDER BY precio DESC LIMIT 1;