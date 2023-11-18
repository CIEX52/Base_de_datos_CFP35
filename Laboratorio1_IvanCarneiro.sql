drop database if exists AGENDA;
create database AGENDA;
use AGENDA;
create table agenda (
	nombre varchar(20),
    direccion varchar(30),
    telefono varchar(11)
);

show tables;
describe agenda;

INSERT INTO agenda (nombre, direccion, telefono) VALUES ('Juan', 'Calle 123', '1234567890');
INSERT INTO agenda (nombre, direccion, telefono) VALUES ('Ana', 'Avenida 456', '2345678901');
INSERT INTO agenda (nombre, direccion, telefono) VALUES ('Carlos', 'Boulevard 789', '3456789012');
INSERT INTO agenda (nombre, direccion, telefono) VALUES ('Maria', 'Camino 012', '4567890123');
INSERT INTO agenda (nombre, direccion, telefono) VALUES ('Pedro', 'Ruta 345', '5678901234');
INSERT INTO agenda (nombre, direccion, telefono) VALUES ('Sofia', 'Paseo 678', '6789012345');
INSERT INTO agenda (nombre, direccion, telefono) VALUES ('Lucas', 'Via 901', '7890123456');
INSERT INTO agenda (nombre, direccion, telefono) VALUES ('Laura', 'Plaza 234', '8901234567');
INSERT INTO agenda (nombre, direccion, telefono) VALUES ('Diego', 'Alameda 567', '9012345678');
INSERT INTO agenda (nombre, direccion, telefono) VALUES ('Isabel', 'Carretera 890', '0123456789');

select * from agenda;
