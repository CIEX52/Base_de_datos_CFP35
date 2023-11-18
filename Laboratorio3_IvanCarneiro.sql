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

show tables;
describe clientes;
describe facturas;
describe articulos;

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


insert into clientes 	(nombre, apellido, cuit, direccion) values
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
('A', 1, '2023-01-01', 100.50),
('A', 2, '2023-01-02', 200.75),
('A', 3, '2023-01-03', 150.25),
('A', 4, '2023-01-04', 300.00),
('B', 1, '2023-01-01', 50.75),
('B', 2, '2023-01-02', 75.25),
('B', 3, '2023-01-03', 125.50),
('B', 4, '2023-01-04', 250.00),
('C', 1, '2023-01-01', 75.25),
('C', 2, '2023-01-02', 150.50),
('C', 3, '2023-01-03', 200.75),
('C', 4, '2023-01-04', 100.25),
('D', 1, '2023-01-01', 300.00),
('D', 2, '2023-01-02', 100.50),
('D', 3, '2023-01-03', 200.75),
('D', 4, '2023-01-04', 150.25),
('E', 1, '2023-01-01', 250.00),
('E', 2, '2023-01-02', 50.75),
('E', 3, '2023-01-03', 75.25),
('E', 4, '2023-01-04', 125.50);

INSERT INTO facturas (letra, numero, fecha, monto) VALUES
('A', 100, '2022-01-01', 100.50),
('A', 200, '2022-01-02', 200.75),
('A', 300, '2022-01-03', 150.25),
('A', 400, '2022-01-04', 300.00),
('B', 100, '2022-01-01', 50.75),
('B', 200, '2022-01-02', 75.25),
('B', 300, '2022-01-03', 125.50),
('B', 400, '2022-01-04', 250.00),
('C', 100, '2022-01-01', 75.25),
('C', 200, '2022-01-02', 150.50),
('C', 300, '2022-01-03', 200.75),
('C', 400, '2022-01-04', 100.25),
('D', 100, '2022-01-01', 300.00),
('D', 200, '2022-01-02', 100.50),
('D', 300, '2022-01-03', 200.75),
('D', 400, '2022-01-04', 150.25),
('E', 1010, '2022-01-01', 250.00),
('E', 201, '2022-01-02', 50.75),
('E', 301, '2022-01-03', 75.25),
('E', 41, '2022-01-04', 125.50);

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
(23, 'Queroceno suelto', 3.99, 70);

show tables;
describe clientes;
describe facturas;
describe articulos;
select * from clientes;
select * from facturas;
select * from articulos;

-- 2 - Ingrese 5 registros aleatorios en cada tabla.
INSERT INTO Clientes (Nombre, Apellido, CUIT, Direccion, Comentarios) VALUES 
('Juan', 'Perez', '20123456789', 'Corrientes 348', ''),
('Ana', 'Gomez', '27876543216', 'Florida 468', ''),
('Carlos', 'Rodriguez', '23234567895', 'Santa Fe 1230', ''),
('Maria', 'Lopez', '27987654321', 'Cabildo 2345', ''),
('Pedro', 'Gonzalez', '20345678904', 'Lavalle 5678', '');

-- 3 - Basándose en la tabla artículos obtener los siguientes listados.
-- a-	artículos con precio mayor a 100
select * from articulos where precio > 100;
-- b-	artículos con precio entre 20 y 40 (usar < y >)
select * from articulos where precio > 20 and precio < 40;
-- c-	artículos con precio entre 40 y 60 (usar BETWEEN)
select * from articulos where precio between 40 and 60;
-- d-	artículos con precio = 20 y stock mayor a 30
select * from articulos where precio = 20 and stock > 30;
-- e-	artículos con precio (12,20,30) no usar IN
select * from articulos where precio = 12 or precio = 20 or precio = 30;
-- f-	artículos con precio (12,20,30) usar el IN
select * from articulos where precio in (12,20,30);
-- g-	artículos que su precio no sea (12,20,30)
select * from articulos where precio not in (12,20,30);
-- h-   artículos que su precio mas iva(21 %) sea mayor a 100
select * from articulos where (precio * 1.21) > 100;
-- i-   listar nombre y descripción de los artículos que no cuesten $100
select codigo, descripcion from articulos where precio not in (100);
-- j- 	artículos con nombre que contengan la cadena 'lampara' (usar like)
select * from articulos where descripcion like '%lampara%';
-- k-   artículos que su precio sea menor que 200 y en su nombre no contenga la letra 'a'
select * from articulos where precio < 200 and descripcion not like '%a%';

-- 	4- Listar los artículos ordenados por precio de mayor a menor, y si hubiera precio iguales deben quedar ordenados por nombre.
select * from articulos order by precio, descripcion;

-- 	5- Listar todos los artículos incluyendo una columna denominada precio con IVA, la cual deberá tener el monto con el iva del producto.
select *, round(precio * 1.21, 2) as precioIVA21 from articulos;

-- 	6- Listar todos los artículos incluyendo una columna denominada 'cantidad de cuotas' y otra 'valor de cuota', la cantidad es fija y es 3, 
-- el valor de cuota corresponde a 1/3 del monto con un 5% de interés.
select *, 3 as cant_cuotas, round((precio/3)* 1.05, 2) as valor_cuota from articulos;