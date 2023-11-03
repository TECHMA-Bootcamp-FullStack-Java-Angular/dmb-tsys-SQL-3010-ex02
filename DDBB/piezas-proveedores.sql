DROP  DATABASE IF EXISTS piezasproveedores;
CREATE DATABASE piezasproveedores;

USE piezasproveedores;

CREATE TABLE piezas(
	Codigo int auto_increment,
	Nombre varchar(100),
	primary key(Codigo)
);


CREATE TABLE proveedores(
	id char(4),
	Nombre varchar(100),
	primary key(id)
);


CREATE TABLE suministra(
	CodigoPieza int,
	IdProveedor char(4),
	Precio int,
	PRIMARY KEY(CodigoPieza,IdProveedor),
	FOREIGN KEY (CodigoPieza) REFERENCES piezas(Codigo) 
	ON DELETE CASCADE
	ON UPDATE CASCADE,
	FOREIGN KEY (IdProveedor) REFERENCES proveedores(id) 
	ON DELETE CASCADE
	ON UPDATE CASCADE	
); 


insert into piezas (Nombre) values ('Major Pharmaceuticals');
insert into piezas (Nombre) values ('Major Banks');
insert into piezas (Nombre) values ('Major Banks');
insert into piezas (Nombre) values ('Real Estate Investment Trusts');
insert into piezas (Nombre) values ('Television Services');
insert into piezas (Nombre) values ('Plastic Products');
insert into piezas (Nombre) values ('Oilfield Services/Equipment');
insert into piezas (Nombre) values ('Real Estate Investment Trusts');
insert into piezas (Nombre) values ('Property-Casualty Insurers');
insert into piezas (Nombre) values ('Computer Communications Equipment');
insert into piezas (Nombre) values ('Air Freight/Delivery Services');
insert into piezas (Nombre) values ('Major Pharmaceuticals');
insert into piezas (Nombre) values ('Major Pharmaceuticals');
insert into piezas (Nombre) values ('EDP Services');
insert into piezas (Nombre) values ('Publishing');
insert into piezas (Nombre) values ('Investment Managers');
insert into piezas (Nombre) values ('Real Estate Investment Trusts');
insert into piezas (Nombre) values ('Major Banks');
insert into piezas (Nombre) values ('Paper');
insert into piezas (Nombre) values ('Building Materials');
insert into piezas (Nombre) values ('Radio And Television Broadcasting And Communications Equipment');
insert into piezas (Nombre) values ('Homebuilding');
insert into piezas (Nombre) values ('Finance Companies');
insert into piezas (Nombre) values ('Electric Utilities: Central');
insert into piezas (Nombre) values ('Property-Casualty Insurers');
insert into piezas (Nombre) values ('Major Banks');
insert into piezas (Nombre) values ('Oil & Gas Production');
insert into piezas (Nombre) values ('Telecommunications Equipment');
insert into piezas (Nombre) values ('Precious Metals');
insert into piezas (Nombre) values ('Life Insurance');
insert into piezas (Nombre) values ('Computer Software: Programming, Data Processing');
insert into piezas (Nombre) values ('Business Services');
insert into piezas (Nombre) values ('Business Services');
insert into piezas (Nombre) values ('Major Pharmaceuticals');
insert into piezas (Nombre) values ('Real Estate Investment Trusts');
insert into piezas (Nombre) values ('Computer Software: Prepackaged Software');
insert into piezas (Nombre) values ('Food Distributors');
insert into piezas (Nombre) values ('Savings Institutions');
insert into piezas (Nombre) values ('Auto Parts:O.E.M.');
insert into piezas (Nombre) values ('Aerospace');



insert into proveedores (id, Nombre) values ('ZBXZ', 'Twimbo');
insert into proveedores (id, Nombre) values ('HSFS', 'Riffpedia');
insert into proveedores (id, Nombre) values ('ENVA', 'Thoughtbridge');
insert into proveedores (id, Nombre) values ('KTVI', 'Feednation');
insert into proveedores (id, Nombre) values ('CZFG', 'Feedbug');
insert into proveedores (id, Nombre) values ('ZPNL', 'Yambee');
insert into proveedores (id, Nombre) values ('YMUG', 'Trunyx');
insert into proveedores (id, Nombre) values ('SKML', 'Meevee');
insert into proveedores (id, Nombre) values ('AYDR', 'Centidel');
insert into proveedores (id, Nombre) values ('VTBF', 'Vinte');
insert into proveedores (id, Nombre) values ('SSWS', 'Twitternation');
insert into proveedores (id, Nombre) values ('YKOW', 'Gabtune');
insert into proveedores (id, Nombre) values ('DAOL', 'Camimbo');
insert into proveedores (id, Nombre) values ('KQA', 'Brainsphere');
insert into proveedores (id, Nombre) values ('KHGR', 'Skipstorm');
insert into proveedores (id, Nombre) values ('FMMS', 'Jaxnation');
insert into proveedores (id, Nombre) values ('MDPC', 'Lazz');
insert into proveedores (id, Nombre) values ('SGME', 'Vipe');
insert into proveedores (id, Nombre) values ('CYPN', 'DabZ');
insert into proveedores (id, Nombre) values ('CYRS', 'Kamba');
insert into proveedores (id, Nombre) values ('SKPD', 'Yakijo');
insert into proveedores (id, Nombre) values ('KELP', 'Vitz');
insert into proveedores (id, Nombre) values ('KBWC', 'Cogilith');
insert into proveedores (id, Nombre) values ('LZPW', 'Fatz');
insert into proveedores (id, Nombre) values ('MMIO', 'Eadel');
insert into proveedores (id, Nombre) values ('FNKU', 'Flashpoint');
insert into proveedores (id, Nombre) values ('WAKT', 'Skyble');
insert into proveedores (id, Nombre) values ('FMEP', 'Browsecat');
insert into proveedores (id, Nombre) values ('CZPC', 'Fadeo');
insert into proveedores (id, Nombre) values ('PATA', 'Feedfire');
insert into proveedores (id, Nombre) values ('VYLK', 'Eidel');
insert into proveedores (id, Nombre) values ('VIJR', 'Rooxo');
insert into proveedores (id, Nombre) values ('K29', 'Trunyx');
insert into proveedores (id, Nombre) values ('KAIK', 'Mynte');
insert into proveedores (id, Nombre) values ('OEWD', 'Trupe');
insert into proveedores (id, Nombre) values ('LGKC', 'Mita');
insert into proveedores (id, Nombre) values ('KNHK', 'Divanoodle');
insert into proveedores (id, Nombre) values ('AYUE', 'Brainsphere');
insert into proveedores (id, Nombre) values ('EGER', 'Aimbu');
insert into proveedores (id, Nombre) values ('KBOI', 'Brightdog');
insert into proveedores (id, Nombre) values ('RJAM', 'Linkbuzz');
insert into proveedores (id, Nombre) values ('SCAC', 'Youspan');
insert into proveedores (id, Nombre) values ('FNUG', 'Dabjam');
insert into proveedores (id, Nombre) values ('KPTN', 'Avavee');
insert into proveedores (id, Nombre) values ('TJRV', 'Shuffletag');
insert into proveedores (id, Nombre) values ('KZPH', 'Shufflester');
insert into proveedores (id, Nombre) values ('VTBO', 'Zoonder');
insert into proveedores (id, Nombre) values ('EDAZ', 'Midel');
insert into proveedores (id, Nombre) values ('KRDR', 'Minyx');
insert into proveedores (id, Nombre) values ('FZBO', 'Jabberbean');
insert into proveedores (id, Nombre) values ('KBNA', 'Rhyzio');
insert into proveedores (id, Nombre) values ('KWVI', 'Pixope');
insert into proveedores (id, Nombre) values ('PAFS', 'Quamba');
insert into proveedores (id, Nombre) values ('SBYS', 'Twimbo');
insert into proveedores (id, Nombre) values ('VNLK', 'Blogtag');
insert into proveedores (id, Nombre) values ('YSDU', 'Aimbo');
insert into proveedores (id, Nombre) values ('HSLI', 'Demivee');
insert into proveedores (id, Nombre) values ('SAAC', 'Kanoodle');
insert into proveedores (id, Nombre) values ('SBEP', 'Oba');
insert into proveedores (id, Nombre) values ('LFHM', 'Wikido');
insert into proveedores (id, Nombre) values ('KGNG', 'Jabbercube');
insert into proveedores (id, Nombre) values ('FNUA', 'Muxo');
insert into proveedores (id, Nombre) values ('KIWD', 'Avamm');
insert into proveedores (id, Nombre) values ('ETSI', 'Vipe');
insert into proveedores (id, Nombre) values ('TJFA', 'Yacero');
insert into proveedores (id, Nombre) values ('SVKM', 'Dabfeed');
insert into proveedores (id, Nombre) values ('VTSR', 'Twitterwire');
insert into proveedores (id, Nombre) values ('KSMO', 'Wordpedia');
insert into proveedores (id, Nombre) values ('SKPS', 'Bluejam');
insert into proveedores (id, Nombre) values ('BGAP', 'Browseblab');
insert into proveedores (id, Nombre) values ('PAVD', 'Thoughtworks');
insert into proveedores (id, Nombre) values ('KAOO', 'Shuffletag');
insert into proveedores (id, Nombre) values ('USII', 'Quatz');
insert into proveedores (id, Nombre) values ('LEVX', 'Kaymbo');
insert into proveedores (id, Nombre) values ('EPWR', 'Babbleopia');
insert into proveedores (id, Nombre) values ('EGXW', 'Yodo');
insert into proveedores (id, Nombre) values ('DFEA', 'Trudoo');


insert into suministra (CodigoPieza, IdProveedor, Precio) values (32,'DFEA', '271');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (20,'DFEA' , '277');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (30,'DFEA' , '39');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (40,'KSMO' , '100');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (22,'KSMO' , '73');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (19,'KSMO' , '225');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (15,'ETSI' , '172');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (36,'ETSI' , '94');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (13,'ETSI' , '192');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (1,'ETSI' , '233');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (39,'VTBO' , '275');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (12,'VTBO' , '9');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (6,'VTBO' , '13');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (14, 'YSDU', '76');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (13, 'YSDU', '210');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (11, 'YSDU', '176');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (19,'WAKT' , '254');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (36,'WAKT' , '259');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (14,'WAKT' , '38');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (19,'KRDR' , '251');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (33,'KRDR' , '50');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (26,'KRDR' , '270');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (16,'SAAC' , '85');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (11,'SAAC' , '193');
insert into suministra (CodigoPieza, IdProveedor, Precio) values (8,'KWVI' , '248');

# EJERCICIO 2

-- 6.1. Obtener los nombres de todas las piezas.
SELECT Nombre FROM piezas;
-- 6.2. Obtener todos los datos de todos los proveedores.
SELECT * FROM proveedores;
-- 6.3. Obtener el precio medio al que se nos suministran las piezas.
SELECT AVG(Precio) AS PrecioMedio FROM suministra;
-- 6.4. Obtener los nombres de los proveedores que suministran la pieza 1.
SELECT p.Nombre FROM proveedores p INNER JOIN suministra s ON p.id = s.IdProveedor WHERE s.CodigoPieza = 1;
-- 6.5. Obtener los nombres de las piezas suministradas por el proveedor cuyo código es HAL.
	# Este consluta debulebe un row 0 ya que el código 'HAL' no exisite
SELECT * FROM proveedores WHERE id = 'HAL'; 
-- 6.6. Obtener los nombres de los proveedores que suministran las piezas más caras, indicando el nombre de la pieza y el precio al que la suministran.
SELECT p.Nombre AS NombreProveedor, piezas.Nombre AS NombrePieza, s.Precio
FROM proveedores p INNER JOIN suministra s ON p.id = s.IdProveedor 
INNER JOIN piezas ON piezas.Codigo = s.CodigoPieza WHERE s.Precio = (SELECT MAX(Precio) FROM suministra);
-- 6.7. Hacer constar en la base de datos que la empresa "Skellington Supplies" (codigoTNBC) va a empezar a suministrarnos tuercas (código 1) a 7 pesetas cada tuerca.
	# Creamos el recurso para icluirlo en la BBDD y luego le enlafamos la tuerca con el precio asignado
INSERT INTO proveedores (id, Nombre) VALUES ('TNBC', 'Skellington Supplies');
INSERT INTO suministra (CodigoPieza, IdProveedor, Precio) VALUES (1, 'TNBC', 7);
SELECT * FROM suministra WHERE CodigoPieza = 1 AND IdProveedor = 'TNBC';
-- 6.8. Aumentar los precios en una unidad.
UPDATE suministra SET Precio = Precio + 1;
-- 6.9. Hacer constar en la base de datos que la empresa "Susan Calvin Corp."(RBT) nova a suministrarnos ninguna pieza (aunque la empresa en sí va a seguir constando en nuestra base de datos).
 #  Obtenemos un row 0 porque IdProveedor con codigo 'RBT' no exite
 INSERT INTO proveedores (id, Nombre) VALUES ('RBT', 'Susan Calvin Corp');
 SELECT * FROM proveedores where id LIKE 'RBT';
-- 6.10. Hacer constar en la base de datos que la empresa "Susan Calvin Corp."(RBT) ya no va a suministrarnos clavos (código 4)
	# Esta sentencia no tiene mucho fundamento porque ya que la empresa Susan Calvin Corp. no suministra nada por el momentos
DELETE FROM suministra WHERE IdProveedor = 'RBT' AND CodigoPieza = 4;
