/******************************************
       EX01 - Prueba Técnica BBDD
******************************************/

-- EJERCICIO 1

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
	-- Se debe crae el despacho 124 con anterioridad antes de inserart el dato
INSERT INTO despachos ( numero , capacidad ) values( 124 , 1 ); 
INSERT INTO directores (DNI, NomApels, DNIJefe, Despacho) VALUES ('28301700', 'Paco Pérez', NULL, 124);
-- 5.9. Asignar a todos los empleados apellidados Pérez un nuevo jefe con DNI 74568521.
	-- El dato que se desea actulizar no exixte
select * from directores where  DNIJefe LIKE '74568521';
UPDATE directores SET DNIJefe = '74568521' WHERE NomApels LIKE '%Pérez%';
-- 5.10. Despedir a todos los directores, excepto a los que no tienen jefe.
DELETE FROM directores WHERE DNIJefe IS NOT NULL;


-- EJERCICIO 2

-- 6.1. Obtener los nombres de todas las piezas.
SELECT Nombre FROM piezas;
-- 6.2. Obtener todos los datos de todos los proveedores.
SELECT * FROM proveedores;
-- 6.3. Obtener el precio medio al que se nos suministran las piezas.
SELECT AVG(Precio) AS PrecioMedio FROM suministra;
-- 6.4. Obtener los nombres de los proveedores que suministran la pieza 1.
SELECT p.Nombre FROM proveedores p INNER JOIN suministra s ON p.id = s.IdProveedor WHERE s.CodigoPieza = 1;
-- 6.5. Obtener los nombres de las piezas suministradas por el proveedor cuyo código es HAL.
	-- Este consluta debulebe un row 0 ya que el código 'HAL' no exisite
SELECT * FROM proveedores WHERE id = 'HAL'; 
-- 6.6. Obtener los nombres de los proveedores que suministran las piezas más caras, indicando el nombre de la pieza y el precio al que la suministran.
SELECT p.Nombre AS NombreProveedor, piezas.Nombre AS NombrePieza, s.Precio
FROM proveedores p INNER JOIN suministra s ON p.id = s.IdProveedor 
INNER JOIN piezas ON piezas.Codigo = s.CodigoPieza WHERE s.Precio = (SELECT MAX(Precio) FROM suministra);
-- 6.7. Hacer constar en la base de datos que la empresa "Skellington Supplies" (codigoTNBC) va a empezar a suministrarnos tuercas (código 1) a 7 pesetas cada tuerca.
	-- Creamos el recurso para icluirlo en la BBDD y luego le enlafamos la tuerca con el precio asignado
INSERT INTO proveedores (id, Nombre) VALUES ('TNBC', 'Skellington Supplies');
INSERT INTO suministra (CodigoPieza, IdProveedor, Precio) VALUES (1, 'TNBC', 7);
SELECT * FROM suministra WHERE CodigoPieza = 1 AND IdProveedor = 'TNBC';
-- 6.8. Aumentar los precios en una unidad.
UPDATE suministra SET Precio = Precio + 1;
-- 6.9. Hacer constar en la base de datos que la empresa "Susan Calvin Corp."(RBT) nova a suministrarnos ninguna pieza (aunque la empresa en sí va a seguir constando en nuestra base de datos).
 	-- Obtenemos un row 0 porque IdProveedor con codigo 'RBT' no exite
 INSERT INTO proveedores (id, Nombre) VALUES ('RBT', 'Susan Calvin Corp');
 SELECT * FROM proveedores where id LIKE 'RBT';
-- 6.10. Hacer constar en la base de datos que la empresa "Susan Calvin Corp."(RBT) ya no va a suministrarnos clavos (código 4)
	-- Esta sentencia no tiene mucho fundamento porque ya que la empresa Susan Calvin Corp. no suministra nada por el momentos
DELETE FROM suministra WHERE IdProveedor = 'RBT' AND CodigoPieza = 4;


-- EJERCICIO 3

-- 7.1. Sacar una relación completa de los científicos asignados a cada proyecto. Mostrar DNI, Nombre del científico, Identificador del proyecto y nombre del proyecto.
SELECT c.DNI, c.NomApels, p.id, p.Nombre FROM asignado_a a JOIN cientificos c ON a.cientifico = c.DNI JOIN proyecto p ON a.proyecto = p.id;
-- 7.2. Obtener el numero de proyectos al que está asignado cada científico (mostrar el DNI y el nombre).
SELECT c.DNI, c.NomApels, COUNT(a.proyecto) AS NumeroProyectosAsignados FROM cientificos c LEFT JOIN asignado_a a ON c.DNI = a.cientifico GROUP BY c.DNI, c.NomApels;
-- 7.3. Obtener el numero de científicos asignados a cada proyecto (mostrar el identificador de proyecto y el nombre del proyecto).
SELECT p.id, p.Nombre, COUNT(a.cientifico) AS NumeroCientificosAsignados FROM proyecto p LEFT JOIN asignado_a a ON p.id = a.proyecto GROUP BY p.id, p.Nombre;
-- 7.4. Obtener el numero de horas de dedicación de cada cientifico.
SELECT c.DNI, c.NomApels, SUM(p.Horas) AS HorasDedicacion FROM cientificos c LEFT JOIN asignado_a a ON c.DNI = a.cientifico LEFT JOIN proyecto p ON a.proyecto = p.id GROUP BY c.DNI, c.NomApels;
-- 7.5. Obtener el DNI y nombre de los científicos que se dedican a más de un proyecto y cuya dedicación media a cada proyecto sea superior a las 80 horas.
	-- Obtenemos un row 0 ya que no exixte ningún cientifico que trabaje tanto como un alumno de BootCamp
SELECT c.DNI, c.NomApels FROM cientificos c WHERE 1 < (
  SELECT COUNT(*) FROM asignado_a a  WHERE c.DNI = a.cientifico) AND 80 < (
  SELECT AVG(p.Horas) FROM proyecto p JOIN asignado_a a ON p.Id = a.Proyecto WHERE c.DNI = a.cientifico);
