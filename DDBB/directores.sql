DROP  DATABASE IF EXISTS directores;
CREATE DATABASE directores;

USE directores;

CREATE TABLE despachos(
	numero int auto_increment,
	capacidad int,
	primary key(numero)
);

CREATE TABLE directores(
	DNI varchar(8),
	NomApels varchar(255),
	DNIJefe varchar(8) NULL,
	Despacho int,
	PRIMARY KEY(DNI),
	FOREIGN KEY (DNIJefe) REFERENCES directores (DNI) 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (Despacho) REFERENCES despachos (numero) 
	ON DELETE CASCADE
	ON UPDATE CASCADE	
); 

insert into despachos (capacidad) values (37);
insert into despachos (capacidad) values (14);
insert into despachos (capacidad) values (47);
insert into despachos (capacidad) values (1);
insert into despachos (capacidad) values (46);
insert into despachos (capacidad) values (16);
insert into despachos (capacidad) values (11);
insert into despachos (capacidad) values (47);
insert into despachos (capacidad) values (49);
insert into despachos (capacidad) values (16);
insert into despachos (capacidad) values (42);
insert into despachos (capacidad) values (40);
insert into despachos (capacidad) values (45);
insert into despachos (capacidad) values (2);
insert into despachos (capacidad) values (35);
insert into despachos (capacidad) values (36);
insert into despachos (capacidad) values (15);
insert into despachos (capacidad) values (7);
insert into despachos (capacidad) values (44);
insert into despachos (capacidad) values (18);
insert into despachos (capacidad) values (44);
insert into despachos (capacidad) values (38);
insert into despachos (capacidad) values (32);
insert into despachos (capacidad) values (26);
insert into despachos (capacidad) values (15);
insert into despachos (capacidad) values (8);
insert into despachos (capacidad) values (22);
insert into despachos (capacidad) values (48);
insert into despachos (capacidad) values (7);
insert into despachos (capacidad) values (44);
insert into despachos (capacidad) values (25);
insert into despachos (capacidad) values (36);
insert into despachos (capacidad) values (39);
insert into despachos (capacidad) values (36);
insert into despachos (capacidad) values (36);
insert into despachos (capacidad) values (4);
insert into despachos (capacidad) values (45);
insert into despachos (capacidad) values (38);
insert into despachos (capacidad) values (30);
insert into despachos (capacidad) values (13);
insert into despachos (capacidad) values (25);
insert into despachos (capacidad) values (38);
insert into despachos (capacidad) values (7);
insert into despachos (capacidad) values (41);
insert into despachos (capacidad) values (47);
insert into despachos (capacidad) values (15);
insert into despachos (capacidad) values (26);
insert into despachos (capacidad) values (7);
insert into despachos (capacidad) values (44);
insert into despachos (capacidad) values (38);
insert into despachos (capacidad) values (38);
insert into despachos (capacidad) values (43);
insert into despachos (capacidad) values (8);
insert into despachos (capacidad) values (13);
insert into despachos (capacidad) values (44);
insert into despachos (capacidad) values (7);
insert into despachos (capacidad) values (31);
insert into despachos (capacidad) values (30);
insert into despachos (capacidad) values (16);
insert into despachos (capacidad) values (40);
insert into despachos (capacidad) values (32);
insert into despachos (capacidad) values (6);
insert into despachos (capacidad) values (27);
insert into despachos (capacidad) values (45);
insert into despachos (capacidad) values (46);
insert into despachos (capacidad) values (40);
insert into despachos (capacidad) values (4);
insert into despachos (capacidad) values (37);
insert into despachos (capacidad) values (31);
insert into despachos (capacidad) values (36);
insert into despachos (capacidad) values (17);
insert into despachos (capacidad) values (6);
insert into despachos (capacidad) values (28);
insert into despachos (capacidad) values (18);
insert into despachos (capacidad) values (12);
insert into despachos (capacidad) values (50);
insert into despachos (capacidad) values (33);
insert into despachos (capacidad) values (10);
insert into despachos (capacidad) values (35);
insert into despachos (capacidad) values (5);
insert into despachos (capacidad) values (7);
insert into despachos (capacidad) values (26);
insert into despachos (capacidad) values (41);
insert into despachos (capacidad) values (45);
insert into despachos (capacidad) values (19);
insert into despachos (capacidad) values (40);
insert into despachos (capacidad) values (40);
insert into despachos (capacidad) values (22);
insert into despachos (capacidad) values (46);
insert into despachos (capacidad) values (9);
insert into despachos (capacidad) values (11);
insert into despachos (capacidad) values (30);
insert into despachos (capacidad) values (16);
insert into despachos (capacidad) values (5);
insert into despachos (capacidad) values (10);
insert into despachos (capacidad) values (9);
insert into despachos (capacidad) values (7);
insert into despachos (capacidad) values (47);
insert into despachos (capacidad) values (3);
insert into despachos (capacidad) values (29);

-- Insertar directores
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('12345678', 'Juan Pérez', NULL, 1);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('87654321', 'María Gómez', '12345678', 2);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('65432198', 'Pedro López', '12345678', 3);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('98765432', 'Ana Torres', '12345678', 4);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('34567891', 'Carlos Ruiz', '87654321', 5);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('56789012', 'Laura González', '87654321', 6);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('90123456', 'Sergio Martínez', '12345678', 7);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('78901234', 'Marcela Silva', '90123456', 8);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('43210987', 'Luisa Ramírez', '12345678', 9);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('65432109', 'Eduardo Vargas', '43210987', 10);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('98765438', 'Gabriela Castro', '43210987', 11);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('12345679', 'Andrés Morales', '65432109', 12);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('87654328', 'Carolina Rojas', '65432109', 13);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('65432190', 'Roberto Medina', '12345678', 14);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('98765431', 'Fernanda Navarro', '65432198', 15);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('34567892', 'Daniel Ríos', '65432198', 16);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('56789013', 'Valeria Cordero', '98765432', 17);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('90123454', 'Felipe Soto', '98765432', 18);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('78901235', 'Julieta Montes', '98765432', 19);
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('43210986', 'Rodrigo Benítez', '90123456', 20);

/******************************************
       EX01 - Prueba Técnica BBDD
******************************************/

# EJERCICIO 1


use directores;
-- 5.1. Mostrar el DNI, nombre y apellidos de todos los directores.
SELECT DNI, NomApels AS Apelliddo FROM directores;
-- 5.2. Mostrar los datos de los directores que no tienen jefes.
SELECT * FROM directores WHERE DNIJefe IS NULL;
-- 5.3. Mostrar el nombre y apellidos de cada director, junto con la capacidad del despacho en el que se encuentra.
SELECT d.NomApels, de.capacidad FROM directores d, despachos de WHERE d.Despacho = de.numero;
-- 5.4. Mostrar el numero de directores que hay en cada despacho.
SELECT de.numero, COUNT(d.DNI) AS "Nº Directores" FROM despachos de LEFT JOIN directores d ON de.numero = d.Despacho GROUP BY de.numero;
-- 5.5. Mostrar los datos de los directores cuyos jefes no tienen jefes.
SELECT d.DNI, d.NomApels FROM directores d WHERE d.DNIJefe IS NULL;
-- 5.6. Mostrar los nombres y apellidos de los directores junto con los de su jefe.
SELECT d.NomApels AS 'Director', j.NomApels AS 'Jefe' FROM directores d LEFT JOIN directores j ON d.DNIJefe = j.DNI  WHERE d.DNIJefe IS NOT NULL;
-- 5.7. Mostrar el numero de despachos que están sobreutilizados.
SELECT COUNT(*) AS 'Despachos Sobreutilizados' FROM despachos WHERE capacidad > (SELECT MAX(capacidad)  FROM despachos);
-- 5.8. Anadir un nuevo director llamado Paco Pérez, DNI 28301700, sin jefe, y situado en el despacho 124.
	# Se debe crae el despacho 124 con anterioridad antes de inserart el dato
INSERT INTO despachos ( numero , capacidad ) values( 124 , 1 ); 
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('28301700', 'Paco Pérez', NULL, 124);
-- 5.9. Asignar a todos los empleados apellidados Pérez un nuevo jefe con DNI 74568521.
	# El dato que se desea actulizar no exixte
select * from directores where  DNIJefe LIKE '74568521';
UPDATE directores SET DNIJefe = '74568521' WHERE NomApels LIKE '%Pérez%';
-- 5.10. Despedir a todos los directores, excepto a los que no tienen jefe.
DELETE FROM directores WHERE DNIJefe IS NOT NULL;
