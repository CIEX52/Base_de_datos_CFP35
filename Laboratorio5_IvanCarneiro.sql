-- Active: 1698250615387@@127.0.0.1@3306@vehiculos
-- 1- Crear la tabla 'autos' en una nueva base de datos (Vehiculos) con el siguiente detalle:
-- 	codigo	INTEGER y PK
-- 	marca	VARCHAR(25)
-- 	modelo	VARCHAR(25)
--  patente VARCHAR(10)
-- 	color	VARCHAR(25)
-- 	anio	INTEGER
-- 	precio	DOUBLE

--  nota: (anio - año) seguramente tu computadora tiene soporte para la letra ñ,
--        pero muchas instalaciones (ej: web host alquilados) pueden que no tenga soporte para esa letra.
-- 		  en programación se acostumbra a usar los caracteres menores a 128 en la tabla ASCII.
DROP DATABASE if EXISTS vehiculos;
CREATE DATABASE vehiculos;
USE vehiculos;
CREATE Table autos (
    codigo INT PRIMARY KEY,
    marca VARCHAR(25),
    modelo VARCHAR(25),
    color VARCHAR(25),
    anio INTEGER(4),
    precio DOUBLE
);

-- 2- Agregar el campo patente despues del campo modelo.
ALTER table autos
    DROP color,
    DROP anio,
    DROP precio,
    ADD patente VARCHAR(7),
    ADD color VARCHAR(25),
    ADD anio INTEGER(4),
    ADD precio DOUBLE;

-- 3- Cargar la tabla con 15 autos (hacerlo con MySQL WorkBench o el INSERT INTO).
INSERT INTO autos VALUES
    (1, 'Peugeot', '208', 'PN799NU', 'Azul', 2016, 334657),
    (2, 'Chevrolet','Corsa', 'CQ045ZG', 'Blanco', 2014, 389061),
    (3, 'Toyota', 'Hilux', 'AB684AK', 'Gris', 2022, 599395),
    (4, 'Chevrolet', 'Cruze', 'AC759TD', 'Rojo', 2017, 636076),
    (5, 'Jeep', 'Renegade', 'AF198SC', 'Verde', 2003, 530976),
    (6, 'Volkswagen', 'Golf', 'AA934SC', 'Negro', 2010, 252211),
    (7, 'Honda', 'Civic', 'AC143MC', 'Blanco', 2012, 396803),
    (8, 'Fiat', 'Cronos', 'QG067NK', 'Rojo', 2013, 109616),
    (9, 'Chery', 'Tiggo', 'WZ979HL', 'Bordo', 2011, 235866),
    (10, 'Volkswagen', 'Tcross', 'RU537BL', 'Naranja', 2014, 380700),
    (11, 'Ford', 'Focus', 'LC591WW', 'Gris', 2016, 494961),
    (12, 'Volkswagen', 'Amarok', 'LY081KW', 'Azul', 2021, 374917),
    (13, 'Fiat', 'Palio', 'VO553XR', 'Amarillo', 2015, 645646),
    (14, 'Toyota', 'Corolla', 'NX266EE', 'Negro', 2020, 239357),
    (15, 'Peugeot', '308', 'UU240QE', 'Chanpagne', 2022, 365238),
    (16, 'Peugeot', '504', 'X006819', 'Marron', 1991, 99000);

-- 4- Realizar las siguientes consultas:
-- 	a. obtener el precio máximo.
SELECT MAX(precio) PRECIO_MAS_ALTO from autos;

-- 	b. obtener el precio mínimo.
SELECT MIN(precio) PRECIO_MAS_BAJO from autos;

-- 	c. obtener el precio mínimo entre los años 2010 y 2018.
SELECT codigo, marca, modelo, patente, color, anio, MIN(precio) as MIN_PRECIO_2010_2018 FROM autos WHERE anio BETWEEN 2010 AND 2018;

-- 	d. obtener el precio promedio.
SELECT ROUND((SUM(precio)/COUNT(*)), 2) as PRECIO_PROMEDIO FROM autos;

--	e. obtener el precio promedio del año 2016.
SELECT * FROM autos WHERE anio = 2016;
SELECT ROUND((SUM(precio)/COUNT(*)), 2) as PRECIO_PROMEDIO FROM autos WHERE anio = 2016;

-- 	f. obtener la cantidad de autos.
SELECT COUNT(*) CANTIDAD_DE_AUTOS_REGISTRADOS FROM autos;

-- 	g. obtener la cantidad de autos que tienen un precio entre $235.000 y $240.000.
SELECT COUNT(*) CANTIDAD_DE_AUTOS_CON_PRECIO_ENTRE_$235K_$$240K FROM autos WHERE precio BETWEEN 235000 AND 240000;

-- 	h. obtener la cantidad de autos que hay en cada año.
SELECT anio, COUNT(*) as CANT_DE_AUTOS FROM autos GROUP BY anio;

-- 	i. obtener la cantidad de autos y el precio promedio en cada año.
SELECT anio, COUNT(*) as CANT_DE_AUTOS, ROUND((SUM(precio)/COUNT(*)), 2) PRECIO_PROMEDIO FROM autos GROUP BY anio;

-- 	j. obtener la suma de precios y el promedio de precios según marca.
SELECT marca, SUM(precio) SUMA_DE_PRECIOS, ROUND((SUM(precio)/COUNT(*)), 2) PRECIO_PROMEDIO FROM autos GROUP BY marca;

--  k. informar los autos con el menor precio.
SELECT * FROM autos ORDER BY precio ASC LIMIT 5;

--  l. informar los autos con el menor precio entre los años 2016 y 2018.
SELECT * FROM autos WHERE anio BETWEEN 2016 AND 2018 ORDER BY precio ASC LIMIT 5;

--  m. listar los autos ordenados ascendentemente por marca,modelo,año.
SELECT * FROM autos ORDER BY marca,modelo,anio ASC;

--  n. contar cuantos autos hay de cada marca.
SELECT marca, COUNT(*) CANT_DE_UNIDADES FROM autos GROUP BY marca; 

--  o. borrar los autos del siglo pasado.
SELECT * FROM autos WHERE anio < 2000;
DELETE FROM autos WHERE anio < 2000;
SELECT * FROM autos WHERE anio < 2000;
