drop database if exists Negocio;
create database Negocio;
use Negocio;

create table Clientes (
	Codigo int auto_increment primary key,
    Nombre varchar(20) not null,
    Apellido varchar(20) not null,
    CUIT char(13),
    Direccion varchar(50),
    Comentarios varchar(140)
);

create table Facturas (
	Letra char(1),
    Numero int,
    Fecha date,
    Monto double,
    primary key (Letra, Numero)
);

create table Articulos (
	Codigo int auto_increment primary key,
    Nombre varchar(50),
	Precio double,
	Stock integer
);

INSERT INTO Clientes (Nombre, Apellido, CUIT, Direccion, Comentarios) VALUES ('Juan', 'Perez', '20-12345678-9', 'Calle Falsa 123', 'Cliente frecuente');
INSERT INTO Clientes (Nombre, Apellido, CUIT, Direccion, Comentarios) VALUES ('Ana', 'Gomez', '27-87654321-6', 'Avenida Siempre Viva 456', 'Prefiere productos orgánicos');
INSERT INTO Clientes (Nombre, Apellido, CUIT, Direccion, Comentarios) VALUES ('Carlos', 'Rodriguez', '23-23456789-5', 'Boulevard de los Sueños 789', 'Realiza compras grandes');
INSERT INTO Clientes (Nombre, Apellido, CUIT, Direccion, Comentarios) VALUES ('Maria', 'Lopez', '27-98765432-1', 'Camino al Cielo 012', 'Cliente nuevo');
INSERT INTO Clientes (Nombre, Apellido, CUIT, Direccion, Comentarios) VALUES ('Pedro', 'Gonzalez', '20-34567890-4', 'Ruta al Sol 345', 'Cliente antiguo');

INSERT INTO Facturas (Letra, Numero, Fecha, Monto) VALUES ('A', 1, '2023-10-26', 1000.50);
INSERT INTO Facturas (Letra, Numero, Fecha, Monto) VALUES ('B', 2, '2023-10-25', 2000.75);
INSERT INTO Facturas (Letra, Numero, Fecha, Monto) VALUES ('A', 3, '2023-10-24', 1500.25);
INSERT INTO Facturas (Letra, Numero, Fecha, Monto) VALUES ('B', 4, '2023-10-23', 2500.00);
INSERT INTO Facturas (Letra, Numero, Fecha, Monto) VALUES ('A', 5, '2023-10-22', 3000.50);

INSERT INTO Articulos (Nombre, Precio, Stock) VALUES ('Arroz', 9500.00, 50);
INSERT INTO Articulos (Nombre, Precio, Stock) VALUES ('Lentejas', 220.00, 40);
INSERT INTO Articulos (Nombre, Precio, Stock) VALUES ('Harina de trigo', 150.00, 30);
INSERT INTO Articulos (Nombre, Precio, Stock) VALUES ('Aceite de Girasol', 650.00, 20);
INSERT INTO Articulos (Nombre, Precio, Stock) VALUES ('Sal fina', 286.00, 10);

show tables;

describe Clientes;
describe Facturas;
describe Articulos;

select * from Clientes;
select * from Facturas;
select * from Articulos;