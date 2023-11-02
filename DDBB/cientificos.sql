DROP  DATABASE IF EXISTS cientificos;
CREATE DATABASE cientificos;

USE cientificos;

CREATE TABLE cientificos(
	DNI varchar(8),
	NomApels varchar(255),
	primary key(DNI)
);


CREATE TABLE proyecto(
	id char(4),
	Nombre varchar(255),
	Horas int,
	primary key(id)
);


CREATE TABLE asignado_a(
	cientifico varchar(8),
	proyecto char(4),
	PRIMARY KEY(cientifico,proyecto),
	FOREIGN KEY (cientifico) REFERENCES cientificos(DNI) 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (proyecto) REFERENCES proyecto(id) 
	ON DELETE CASCADE
	ON UPDATE CASCADE	
); 

INSERT INTO cientificos (DNI, NomApels) VALUES ('12345678', 'Juan Pérez');
INSERT INTO cientificos (DNI, NomApels) VALUES ('87654321', 'María Gómez');
INSERT INTO cientificos (DNI, NomApels) VALUES ('65432198', 'Pedro López');
INSERT INTO cientificos (DNI, NomApels) VALUES ('98765432', 'Ana Torres');
INSERT INTO cientificos (DNI, NomApels) VALUES ('34567891', 'Carlos Ruiz');
INSERT INTO cientificos (DNI, NomApels) VALUES ('56789012', 'Laura González');
INSERT INTO cientificos (DNI, NomApels) VALUES ('90123456', 'Sergio Martínez');
INSERT INTO cientificos (DNI, NomApels) VALUES ('78901234', 'Marcela Silva');
INSERT INTO cientificos (DNI, NomApels) VALUES ('43210987', 'Luisa Ramírez');
INSERT INTO cientificos (DNI, NomApels) VALUES ('65432109', 'Eduardo Vargas');
INSERT INTO cientificos (DNI, NomApels) VALUES ('98765438', 'Gabriela Castro');
INSERT INTO cientificos (DNI, NomApels) VALUES ('12345679', 'Andrés Morales');
INSERT INTO cientificos (DNI, NomApels) VALUES ('87654328', 'Carolina Rojas');
INSERT INTO cientificos (DNI, NomApels) VALUES ('65432190', 'Roberto Medina');
INSERT INTO cientificos (DNI, NomApels) VALUES ('98765431', 'Fernanda Navarro');
INSERT INTO cientificos (DNI, NomApels) VALUES ('34567892', 'Daniel Ríos');
INSERT INTO cientificos (DNI, NomApels) VALUES ('56789013', 'Valeria Cordero');
INSERT INTO cientificos (DNI, NomApels) VALUES ('90123454', 'Felipe Soto');
INSERT INTO cientificos (DNI, NomApels) VALUES ('43210986', 'Rodrigo Benítez');

insert into proyecto (id, Nombre, Horas) values ('ZBXZ', 'Twimbo',300);
insert into proyecto (id, Nombre, Horas) values ('HSFS', 'Riffpedia',78);
insert into proyecto (id, Nombre, Horas) values ('ENVA', 'Thoughtbridge',879);
insert into proyecto (id, Nombre, Horas) values ('KTVI', 'Feednation',100);
insert into proyecto (id, Nombre, Horas) values ('CZFG', 'Feedbug',45);
insert into proyecto (id, Nombre, Horas) values ('ZPNL', 'Yambee',789);
insert into proyecto (id, Nombre, Horas) values ('YMUG', 'Trunyx',100);
insert into proyecto (id, Nombre, Horas) values ('SKML', 'Meevee',4231);
insert into proyecto (id, Nombre, Horas) values ('AYDR', 'Centidel',478);
insert into proyecto (id, Nombre, Horas) values ('VTBF', 'Vinte',700);
insert into proyecto (id, Nombre, Horas) values ('SSWS', 'Twitternation',789);
insert into proyecto (id, Nombre, Horas) values ('YKOW', 'Gabtune',500);
insert into proyecto (id, Nombre, Horas) values ('DAOL', 'Camimbo',560);
insert into proyecto (id, Nombre, Horas) values ('KQA', 'Brainsphere',600);
insert into proyecto (id, Nombre, Horas) values ('KHGR', 'Skipstorm',780);
insert into proyecto (id, Nombre, Horas) values ('FMMS', 'Jaxnation',800);
insert into proyecto (id, Nombre, Horas) values ('MDPC', 'Lazz',400);
insert into proyecto (id, Nombre, Horas) values ('SGME', 'Vipe',200);
insert into proyecto (id, Nombre, Horas) values ('CYPN', 'DabZ',1100);
insert into proyecto (id, Nombre, Horas) values ('CYRS', 'Kamba',100);
insert into proyecto (id, Nombre, Horas) values ('SKPD', 'Yakijo',30);
insert into proyecto (id, Nombre, Horas) values ('KELP', 'Vitz',30);
insert into proyecto (id, Nombre, Horas) values ('KBWC', 'Cogilith',60);
insert into proyecto (id, Nombre, Horas) values ('LZPW', 'Fatz',75);
insert into proyecto (id, Nombre, Horas) values ('MMIO', 'Eadel',80);
insert into proyecto (id, Nombre, Horas) values ('FNKU', 'Flashpoint',90);
insert into proyecto (id, Nombre, Horas) values ('WAKT', 'Skyble',200);
insert into proyecto (id, Nombre, Horas) values ('FMEP', 'Browsecat',250);

insert into asignado_a(cientifico, proyecto) values('98765432','ZBXZ');
insert into asignado_a(cientifico, proyecto) values('56789012','YKOW');
insert into asignado_a(cientifico, proyecto) values('98765431','DAOL');
insert into asignado_a(cientifico, proyecto) values('34567892','KQA');
insert into asignado_a(cientifico, proyecto) values('12345678','MDPC');
insert into asignado_a(cientifico, proyecto) values('87654328','LZPW');
insert into asignado_a(cientifico, proyecto) values('65432198','MMIO');
insert into asignado_a(cientifico, proyecto) values('43210987','FNKU');
insert into asignado_a(cientifico, proyecto) values('56789013','WAKT');
insert into asignado_a(cientifico, proyecto) values('90123454','FMEP');