
DROP DATABASE IF EXISTS TriggerProcessing;
CREATE DATABASE TriggerProcessing CHARACTER SET utf8;
USE TriggerProcessing;

/*
    tables -> no prefix
    views -> vw
    store procedure -> sp
    cursor -> cu
    trigger -> tg
*/

/*Este ejercicio requiere el nombre en plural debido a que es una palabra reservada*/
DROP TABLE IF EXISTS Numbers;
DROP TABLE IF EXISTS NumbersSquared;
DROP TABLE IF EXISTS NumbersSquared_insert;
DROP VIEW IF EXISTS vw_NumbersSquared;

/*
    bit -> boolean valued
    num -> number valued
    str -> string valued
    dat -> date valued
    tim -> time valued
*/

CREATE TABLE Numbers (
    id INT AUTO_INCREMENT PRIMARY KEY COMMENT "A secuential series of numbers."
) COMMENT="List of numbers";

CREATE TABLE NumbersSquared(
    num_id_fk INT COMMENT "A secuential series of numbers.",
    num_squared DOUBLE COMMENT "The Squared root of the number",
    FOREIGN KEY (num_id_fk) REFERENCES Numbers(id)
) COMMENT="Filled by a trigger";

CREATE TABLE NumbersSquared_insert (
    num_id_fk INT COMMENT "A secuencial series of numbers.",
    num_squared DOUBLE COMMENT "The Squared root of the number.",
    FOREING KEY (num_id_fk) REFERENCES Numbers(id)
) COMMENT="Filled by a select and insert instruction";

CREATE VIEW vw_NumbersSqueared AS
    SELECT
        id,
        SQRT(id)
    FROM
        Numbers
;
