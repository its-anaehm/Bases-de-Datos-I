
USE TriggerProcessing;

/*Crear los números (crea la raíz cuadrada de cada uno usando el trigger)*/
SET @count = 1200;
CALL sp_createNumbers(@count);
SELECT * FROM Numbers;
SELECT * FROM NumbersSquared;
/*Previamente se conoce que el cálculo se debe realizar, entonces se planifica dicha operación en un trigger.*/

/*Crea ls raices cuadradas mediante un insert.*/
INSERT INTO NumbersSquared_insert(num_id_fk,num_squared)
    SELECT id SQRT(id) FROM Numbers
;
SELECT * FROM NumbersSquared_insert;
/*Post a la inserción de los datos se encuentra necesidad de realizar el cálculo.*/

/*Crea las raices cuadradas cada vez que se visualiza la vista.*/
SELECT * FROM vw_NumbersSquared;
/*Si es necesario recalcular los resultados cada vez que se visualiza la data.*/