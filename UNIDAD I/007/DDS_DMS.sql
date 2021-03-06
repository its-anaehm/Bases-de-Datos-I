
DROP DATABASE IF EXISTS InformationTechnologies;

CREATE DATABASE InformationTechnologies CHARACTER SET utf8;

USE InformationTechnologies;

/*
Create TABLE PCInventory (
    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_name TEXT NOT NULL,
    code_type ENUM('Laptop','Desktop','Tablet') NOT NULL DEFAULT 'Laptop',
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
*/

CREATE TABLE PCInventory(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_brand INT NOT NULL COMMENT "Id de marca del listado de marcas",
    id_ramConfig INT NOT NULL COMMENT "Id de confirmación de la RAM del listado de configuraciones",
    id_ssdConfig INT NOT NULL COMMENT "Id de confirmación de la SSD del listado de configuraciones",
    id_screenPanelConfig INT NOT NULL COMMENT "Id de configuración del panel/pantalla de listade de configuraciones",
    tex_modelName TEXT NOT NULL COMMENT "Detalle del modelo del computador",
    tex_description TEXT NOT NULL COMMENT "Descripción del computador",
    num_amount INT NOT NULL DEFAULT 0 COMMENT "Cantidad de elementos del producto que existe en inventario"
) COMMENT "Inventario de computadores del área de TI";

CREATE TABLE PartBrand(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_name TEXT NOT NULL COMMENT "Nombre de la marca"
) COMMENT "Marcas o Fabricantes de computadores y sus componentes";

CREATE TABLE PCRAMConfiguration(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_brand INT NOT NULL COMMENT "Id de marca del listado de marcas",
    num_amount SMALLINT UNSIGNED NOT NULL DEFAULT 0 COMMENT "Cantidad de RAM en GB",
    num_speed SMALLINT UNSIGNED NOT NULL DEFAULT 0 COMMENT "Velocidad de escritura promedio en MB",
) COMMENT "Caracteristicas de la memoria SSD por configuración";

CREATE TABLE PCSSDConfiguration(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_brand INT NOT NULL COMMENT "Id de marca del listado de marcas",
    id_ssdType INT NOT NULL COMMENT "Id del tipo de SSD del listado de tipo de SSD",
    num_amount SMALLINT UNSIGNED NOT NULL DEFAULT 0 COMMENT "Cantidad de SSD en GB",
    num_speed SMALLINT UNSIGNED NOT NULL DEFAULT 0 COMMENT "Velocidad de escritura promedio en MB"
) COMMENT "Caracteristicas de la memoria SSD por configuración";

CREATE TABLE PCSSDConfigurationType(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_type VARCHAR(20) NOT NULL COMMENT ""
) COMMENT "";

CREATE TABLE PCScreenPanelConfdiguration(
    id INT AUTO_INCREMENT PRIMARY KEY,
    id_screenRatio INT NOT NULL COMMENT "",
    id_panelType INT NOT NULL COMMENT "",
    num_inches TINYINT UNSIGNED NOT NULL DEFAULT 0 COMMENT ""
) COMMENT "";

CREATE TABLE PCScreenPanelConfigurationType(
    id INT AUTO_INCREMENT PRIMARY KEY,
    tex_type VARCHAR(20) NOT NULL COMMENT ""
) COMMENT "";

CREATE TABLE PCScreenPanelConfigurationRatio(
    id INT AUTO_INCREMENT PRIMARY KEY,
    num_width TINYINT UNSIGNED NOT NULL DEFAULT 1 COMMENT "",
    num_heignt TINYINT UNSIGNED NOT NULL DEFAULT 1 COMMENT ""
) COMMENT "";