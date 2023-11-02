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