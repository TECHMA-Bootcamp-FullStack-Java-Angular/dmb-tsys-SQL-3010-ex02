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



