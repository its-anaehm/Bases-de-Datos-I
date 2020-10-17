
DROP DATABASE IF EXISTS InformationTechnologies;

CREATE DATABASE InformationTechnologies CHARACTER SET utf8;

USE InformationTechnologies;

CREATE TABLE PCInventory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_name TEXT NOT NULL,
    cod_type ENUM('Laptop', 'Desktop', 'Tablet') NOT NULL DEFAULT 'Laptop',
    sma_ram SMALLINT UNSIGNED NOT NULL DEFAULT 0,
    sma_ssd SMALLINT UNSIGNED NOT NULL DEFAULT 0
);

INSERT INTO PCInventory(tex_name, sma_ram, sma_ssd) VALUES
    ("HP P1020",4,32),
    ("HP P1021",8,32),
    ("HP P1022",16,64),
    ("HP P1023",32,512),
    ("DELL XPS 12",32,512),
    ("DELL XPS 17 1",16,2048),
    ("DELL XPS 17 2",64,2048),
    ("DELL XPS 17 3",16,128),,
    ("DELL XPS 17 4",128,256),
    ("DELL XPS 17 5",128,32),
    ("DELL XPS 17 6",128,48),
    ("DELL XPS 17 7",8,64),
    ("DELL XPS 17 8",8,128),
    ("DELL XPS 17 9",8,256)
;

-- Listar todos los computadores del inventario
SELECT tex_name AS "Marca", sma_ram AS "RAM", sma_ssd AS "SSD" FROM PCInventory;

-- Listar todos los computadores que tiene 16 o 64 de RAM
SELECT tex_name AS "Marca", sma_ram AS "RAM", sma_ssd AS "SSD" FROM PCInventory WHERE sma_ram IN (16,64);

-- Listar todos los computadores que son de tipo XPS dentro del nombre de "marca".
SELECT tex_name AS "Marca", sma_ram AS "RAM", sma_ssd AS "SSD" FROM PCInventory WHERE tex_name LIKE "%XPS%";

-- Cuántos computadores hay pop cantidad de RAM
SELECT sma_ram AS "RAM", COUNT(*) AS "Cantidad" FROM PCInventory GROUP BY sma_ram;

-- Cuántos computadores hay por cantidad de RAM, mostrando solo los grupos donde hay dos o más dispositivos.
SELECT sma_ram AS "RAM", COUNT(*) AS "Cantidad" FROM PCInventory GROUP BY sma_ram HAVING COUNT(*) >=2;

-- Cuántos computadores hay por cantidad de RAM, mostrando solo 3 registros de los grupos donde hay dos o más dispositivos
SELECT sma_ram AS "RAM", COUNT(*) AS "Cantidad" FROM PCInventory GROUP BY sma_ram HAVING COUNT(*) >=2 LIMIT 3;

-- Cuantos computadores hay por cantidad de RAM, mostrando solo 3 registros de los grupos donde hay dos o más dispositivos, ordenados de mayor a menor.
SELECT sma_ram AS "RAM", COUNT(*) AS "Cantidad" FROM PCInventory GROUP BY sma_ram HAVING COUNT(*) >=2 LIMIT 3 ORDER BY "Cantidad" DESC;

-- NOTA: El código siguiente tiene errores.
-- Cuántos computadores hay por cantidad de RAM, mostrando solo 3 registros de los grupos donde hay dos o más dispositivos, ordenados de mayor a menor.
-- HAVING COUNT(*) >=2 LIMIT 3 ORDER BY DESC sma_ram;
-- GROUP BY sma_ram HAVING COUNT(*) >=2 LIMIT 3 ORDER BY sma_ram DESC;
-- GROUP BY sma_ram HAVING Cantidad >=2 ORDER BY DESC LIMIT 3;
-- NOTA: Se ha corregido la instrucción aplicando LIMIT al final de la consulta.
SELECT sma_ram AS "RAM", COUNT(*) AS "Cantidad" FROM PCInventory GROUP BY sma_ram HAVING COUNT(*)>=2 ORDER BY sma_ram DESC LIMIT 3;

-- Liste las computadoras que pertenecen a los 3 grupos mayores de RAM. Si una computadora pertenece a la 4ta mayor agrupación de RAM, dicha computadora no debe aparecer en la busqueda.
SELECT tex_name AS "Nombre del computador" FROM PCInventory JOIN (SELECT sma_ram AS "RAM", COUNT(*) AS "Cantidad" FROM PCInventory GROUP BY sma_ram HAVING COUNT(*)>=2 ORDER by sma_ram DESC LIMIT 3) PCGroup ON PCInventory.sma_ram = PCGroup. `RAM`;
SELECT * FROM PCInventory JOIN (SELECT sma_ram AS "RAM", COUNT(*) AS "Cantidad" FROM PCInventory GROUP BY sma_ram HAVING COUNT(*)>=2 ORDER by sma_ram DESC LIMIT 3) PCGroup ON PCInventory.sma_ram = PCGroup. `RAM`;
SELECT * FROM PCInventory LEFT JOIN (SELECT sma_ram AS "RAM", COUNT(*) AS "Cantidad" FROM PCInventory GROUP BY sma_ram HAVING COUNT(*)>=2 ORDER by sma_ram DESC LIMIT 3) PCGroup ON PCInventory.sma_ram = PCGroup.`RAM`;

-- De las computadoras anteriores que pertenecen a los 3 grupos mayores de RAM, se desea ver qué marca son. De forma anticipada, usted como empleado de la empresa, sabe que la marca de la computadora siempre es "la primer palabra" en el nombre del inventario.
SELECT DISTINCT SUBSTRING_INDEX(tex_name,'', 1) FROM (SELECT tex_name FROM PCInventory JOIN (SELECT sma_ram AS "RAM", COUNT(*) AS "Cantidad" FROM PCInventory GROUP BY sma_ram HAVING COUNT(*)>=2 ORDER BY sma_ram DESC LIMIT 3) AS PCGroup ON PCInventory.sma_ram = PCGroup.`RAM`) AS PCGroupBigRAM;

-- Todas las marcas de computadora en inventario que no pertenecen a las marcas de los 3 grupos más grandes de RAM. No use el operador IN, en su lugar aplique JOIN para verificar la existencia de las listas.
SELECT Inventory.`Marca` AS "Marca Respuesta 2" FROM (SELECT DISTINCT SUBSTRING_INDEX(tex_name, '', 1) AS "Marca" FROM PCInventory) AS Inventory LEFT JOIN (SELECT DISTINCT SUBSTRING_INDEX(tex_name, '', 1) AS "Marca" FROM (SELECT tex_name FROM PCInventory JOIN (SELECT sma_ram AS "RAM", COUNT(*) AS "Cantidad" FROM PCInventory GROUP BY sma_ram HAVING COUNT(*)>=2 ORDER BY sma_ram DESC LIMIT 3) AS PCGroup ON PCInventory.sma_ram = PCGroup.`RAM`) AS PCGroupBigRAM) AS PCGroupBigRAM ON Inventory.`Marca` = PCGroupBigRAM.`Marca` WHERE PCGroupBigRAM.`Marca` IS NULL;