-- Active: 1698250615387@@127.0.0.1@3306@laboratorio_06
-- Crear la base de datos Laboratorio 06, si ya existe borrarla.
DROP DATABASE if EXISTS laboratorio_06;
CREATE DATABASE laboratorio_06;
USE laboratorio_06;

-- Crear la siguiente tabla.
create table cursos(
	codigo int,
	nombre varchar(20),
	dias varchar(10),
	inscriptos int,
	primary key(codigo)
);

insert into cursos values
	(1,'PHP','lunes',10),
	(2,'Java','lunes',5),
	(3,'Corel Draw','martes',2),
	(4,'Java','martes',5),
	(5,'MySQL','martes',5),
	(6,'Oracle','miercoles',6),
	(7,'C#.net','jueves',5),
	(8,'C#.net','viernes',4),
	(9,'PHP','lunes',10),
	(10,'C#.net','lunes',5),
	(11,'Corel Draw','martes',2),
	(12,'Oracle','martes',5),
	(13,'PHP','martes',5),
	(14,'Oracle','miercoles',6),
	(15,'C#.net','jueves',5),
	(16,'Java','viernes',4);

SELECT * FROM cursos;

-- Según la tabla cursos
-- 1 - Sumar en uno la cantidad de alumnos inscriptos del curso Java de los días Lunes
SELECT nombre as CURSO, dias as DIA,sum(inscriptos) INSCRIPTOS FROM cursos WHERE nombre='Java' AND dias='lunes';
INSERT into cursos VALUES (17,'Java','lunes',15);
SELECT nombre as CURSO, dias as DIA,sum(inscriptos) INSCRIPTOS FROM cursos WHERE nombre='Java' AND dias='lunes';

-- 2 - Poner en 0 la cantidad de alumnos inscriptos de los cursos de los días Martes
SELECT sum(inscriptos) INSCRIPTOS_JAVA_MARTES FROM cursos WHERE nombre='Java' AND dias='martes';
UPDATE cursos SET inscriptos = 0 where nombre='Java' and dias='martes';
SELECT nombre as CURSO, dias as DIA,sum(inscriptos) INSCRIPTOS FROM cursos WHERE nombre='Java' AND dias='martes';

-- 3 - Borrar los cursos de Java en día Martes
SELECT  * FROM cursos WHERE nombre='Java' AND dias='martes';
DELETE FROM cursos WHERE nombre='Java' AND dias='martes';
SELECT  * FROM cursos WHERE nombre='Java' AND dias='martes';

-- 4 - Sumar 5 inscriptos en los cursos que tengan menos de 5 alumnos inscriptos.
SELECT * FROM cursos WHERE inscriptos < 5; -- codigos cursos con menos de 5 inscriptos: 3, 8, 11, 16
UPDATE cursos SET inscriptos = inscriptos+5 WHERE inscriptos < 5; 
SELECT * FROM cursos WHERE codigo IN (3,8,11,16);

-- 5 - Cambiar el nombre de los cursos Java por Java 2 SE.
SELECT * FROM cursos WHERE nombre='Java';
UPDATE cursos SET nombre = 'Java 2 SE' WHERE nombre = 'Java';
SELECT * FROM cursos WHERE nombre='Java';


-- Ejercicio 2-- Crear la siguiente tabla.
create table empleados(
	codigo int auto_increment,
	nombre varchar(20) not null,
	apellido varchar(20) not null,
	seccion varchar(20),
	sueldo float,
	primary key (codigo)
);

insert into empleados (nombre,apellido,seccion,sueldo) values
	('juan','perez','administracion',72000),
	('diego','torres','ventas',35200),
	('laura','gomez','ventas',46000),
	('mario','lopez','administracion',45000),
	('dario','sanchez','administracion',86000),
	('juan','boneli','administracion',72000),
	('diego','martinez','ventas',35200),
	('laura','moretti','ventas',46000),
	('sandra','lazante','produccion',45000),
	('susana','mendez','administracion',86000);

-- 1 Cambiar al empleado Mario Lopes de la sección administración a producción.
SELECT * from empleados WHERE nombre='mario' AND apellido='lopez';
UPDATE empleados SET seccion='produccion' WHERE nombre='mario' AND apellido='lopez';
SELECT * from empleados WHERE nombre='mario' AND apellido='lopez';

-- 2 Aplicar un aumento de sueldo básico del 15% a los empleados de ventas.
SELECT * FROM empleados WHERE seccion='ventas';
UPDATE empleados SET sueldo=(sueldo*1.15) WHERE seccion='ventas';
SELECT * FROM empleados WHERE seccion='ventas';

-- 3 Aplicar un aumento del 8% a todos los empleados de producción que tengan un sueldo básico menor a 60000 pesos.
SELECT * FROM empleados WHERE seccion='produccion' AND sueldo < 60000;
UPDATE empleados set sueldo=(sueldo*1.08) WHERE seccion='produccion' and sueldo < 60000;
SELECT * FROM empleados WHERE seccion = 'produccion' AND sueldo < 60000;

-- 4 Dar de baja al empleado Susana Méndez.
SELECT * FROM empleados WHERE nombre='susana' AND apellido='mendez';
DELETE FROM empleados WHERE nombre='susana' AND apellido='mendez';
SELECT * FROM empleados WHERE nombre='susana' AND apellido='mendez';


-- 5 Aplicar un aumento de sueldo del 4% a todos los empleados que tengan un básico mayor o igual a 50000 pesos.
UPDATE empleados set sueldo=(sueldo*1.04) WHERE sueldo >= 50000;

-- 6 Aplicar un aumento de sueldo del 8% a todos los empleados que tengan un básico menor a 50000 pesos.
UPDATE empleados set sueldo=(sueldo*1.08) WHERE sueldo < 50000;

-- 7 Agregar el campo fecha de nacimiento (date) en la tabla empleados despues del campo apellido.
ALTER TABLE empleados ADD natalicio DATE;
CREATE TABLE empleados_copia SELECT codigo,nombre,apellido,natalicio,seccion,sueldo FROM empleados;
DESCRIBE empleados_copia;

-- 8 Completar una fecha de nacimiento para cada empleado.
UPDATE empleados_copia set natalicio =	'1988-07-21' WHERE codigo = 1;
UPDATE empleados_copia set natalicio =	'2003-12-15' WHERE codigo = 2;
UPDATE empleados_copia set natalicio =	'1976-05-29' WHERE codigo = 3;
UPDATE empleados_copia set natalicio =	'1995-02-20' WHERE codigo = 4;
UPDATE empleados_copia set natalicio =	'1982-11-08' WHERE codigo = 5;
UPDATE empleados_copia set natalicio =	'2004-01-01' WHERE codigo = 6;
UPDATE empleados_copia set natalicio =	'1968-06-30' WHERE codigo = 7;
UPDATE empleados_copia set natalicio =	'1999-09-19' WHERE codigo = 8;
UPDATE empleados_copia set natalicio =	'1971-10-25' WHERE codigo = 9;

-- 9 Listar todos los campos de empleados + una columna que calcule la edad de cada empleado.
SELECT *, ROUND((DATEDIFF(CURDATE(),natalicio)/365)) EDAD FROM empleados_copia;

