@its_anaehm

# **Guía No.4**

**Libro:** SQL, The Complete Reference - Capítulos 1 y 2

**Temas:** Una Descripción General De SQL y Recuperando Datos

## **Preguntas**

### ***1.- Liste las 6 actividades principales para las cuales se usa SQL.***

- **Definició de datos** SQL permite al usuario definir la estructura y organización de los datos almacenados y las relaciones entre los elementos de datos almacenados.
- **Recuperación de datos** SQL permite a un usuario o un programa de aplicación recuperar datos almacenados de la base de datos y utilizarlos
- **La manipulación de datos** SQL permite que un usuario o un programa de aplicación actualice la base de datos agregando datos nuevos, eliminando datos antiguos y modificando datos almacenados previamente
- **Control de acceso** SQL se puede utilizar para restringir la capacidad de unusuario para recuperar, agregar y modificar datos, protegiendo los datos almacenados contra el acceso no autorizado
- **SQL para compartir datos** se utiliza para coordinar el intercambio de datos entre usuarios simultáneos,lo que garantiza que los cambios realizados por un usuario no borren inadvertidamente los cambios realizados casi al mismo tiempo por otro usuario.
- **Integridad de datos** SQL define restricciones de integridad en la base de datos, protegiéndo la de la corrupción debido a actualizaciones inconsistentes o fallas del sistema.

### **2.- Liste los 7 roles que tiene SQL.**

- **SQL es un lenguaje de consulta interactivo.** Los usuarios escriben comandos SQL en un programa SQL interactivo para recuperar datos y mostrarlos en la pantalla, proporcionando una herramienta conveniente y fácil de usar para consultas de bases de datos ad hoc.
- **SQL es un lenguaje de programación de bases de datos**. Los programadores incorporan comandos SQL en sus programas de aplicación para acceder a los datos en una base de datos. Tanto los programas escritos por el usuario como los programas de utilidad de base de datos (como los redactores de informes y las herramientas de entrada de datos) utilizan esta técnica para acceder a la base de datos.
- **SQL es un lenguaje de administración de bases de datos.** El administrador de la base de datos responsable de administrar una base de datos de miniordenador o mainframe utiliza SQL para definir la estructura de la base de datos y controlar el acceso a los datos almacenados.
- **SQL es un lenguaje cliente / servidor.** Los programas de computadora personal usan SQL para comunicarse a través de una red con servidores de bases de datos que almacenan datos compartidos. Esta arquitectura cliente/servidor es utilizada por muchas aplicaciones populares de clase empresarial.
- **SQL es un lenguaje de acceso a datos de Internet.** Los servidores web de Internet que interactúan con los datos corporativos y los servidores de aplicaciones de Internet utilizan SQL como lenguaje estándar para acceder a las bases de datos corporativas, a menudo incorporando el acceso a la base de datos SQL en lenguajes de scripting populares como PHP o Perl.
- **SQL es un lenguaje de base de datos distribuido.** Los sistemas de administración de bases de datos distribuidas utilizan SQL para ayudar a distribuir datos en muchos sistemas informáticos conectados. El software DBMS en cada sistema usa SQL para comunicarse con los otros sistemas, enviando solicitudes de acceso a datos.
- **SQL es un lenguaje de pasarela de base de datos.** En una red informática con una combinación de diferentes productos DBMS, SQL se utiliza a menudo en una puerta de enlace que permite que una marca de DBMS se comunique con otra marca.

### **3.- ¿Cuáles componentes de SQL me servirán para extraer los datos necesarios para cada escenario de un problema en particular? Liste las palabras claves que le permitirán ordenar, agrupar y/o sumarizar datos. Busque ¿cómo se llama la categoría en SQL que agrupa estas palabras claves? ¿existen otras palabras claves de la misma categoría o complementarias? si existen más, ¿cuáles son esas palabras?.**

#### **Palabras Claves del estandar ANSI/ISO SQL:**

Especifica un conjunto de palabras clave reservadas y no reservadaspalabras clave que se utilizan en sentencias SQL.

Para la manipulación de datos estan:

- *SELECT* Recupera datos de la base de datos.

- *INSERT* Agrega nuevas filas de datos a la base de datos.

- *UPDATE* Modifica los datos de la base de datos existente

- *MERGE* Inserta / actualiza / elimina condicionalmente filas nuevas y existentes.

- *DELETE* Elimina filas de datos de la base de datos.

Para la definición de datos:

- *CREATE TABLE* Agrega una nueva tabla a la base de datos.

- *DROP TABLE* Elimina una tabla de la base de datos.

- *ALTER TABLE* Cambia la estructura de una tabla existente.

- *CREATE VIEW* Agrega una nueva vista a la base de datos.

- *DROP VIEW* Elimina una vista de la base de datos.

- *CREATE INDEX* Crea un índice para una columna.

- *DROP INDEX* Elimina el índice de una columna.

- *CREATE SCHEMA* Agrega un nuevo esquema a la base de datos.

- *DROP SCHEMA* Elimina un esquema de la base de datos.

- *CREATE DOMAIN* Agrega un nuevo domino al valor de datos.

- *ALTER DOMAIN* Cambia una definición de dominio.

- *DROP DOMAIN* Elimina un dominio de la base de datos.

Para el control de acceso:

- *GRANT* Otorga privilegios de acceso al usuario.

- *REVOKE* Elimina los privilegios de acceso de los usuarios.

- *CREATE ROLE* Agrega un nuevo rol a la base de datos.

- *GRANT ROLE* Otorga rol que contiene privilegios de acceso de usuario.

- *DROP ROLE* Elimina un rol de la base de datos.

Para el control de Transacciones:

- *COMMIT* Finaliza la transacción actual.

- *ROLLBACK* Anula la transacción actual.

- *SET TRANSACTION* Define las caracteristicas de acceso a los datos de la transacción actual.

- *START TRANSACTION* Inicia explicitamente una nueva transacción.

- *SAVEPOINT* Establece un punto de recuperación para una transacción.

Para el SQL programático:

- *Declare* Define un curso para una consulta.

- *EXPLAIN* Describe el plan de acceso a datos para una consulta.

- *OPEN* Abre un cursor para recuperar los resultados de la consulta.

- *FETCH* Recupera una fila de resultados de la consulta.

- *CLOSE* Cierra un cursor.

- *PREPARE* Prepara una declaración SQL para ejecución dinámica.

- *EXECUTE* Ejecuta una instrucción SQL de forma dinámica.

- *DESCRIBE* Describe una consulta preparada.

***Palabras Claves Extra:***

![imagen1](https://drive.google.com/uc?export=view&id=1rB2GK5o8dCXoip9VOwIGSgl6ZccKrvKj "P1")

![imagen1](https://drive.google.com/uc?export=view&id=1gpaQO6nDl6ZoP3wNi1X_Ergtn0dsOSMi "P2")

![imagen1](https://drive.google.com/uc?export=view&id=1_EQ7LVTlSxkGCVEb2-oAR9CJIPvA1Ebm "P3")

![imagen1](https://drive.google.com/uc?export=view&id=1kkmy0MICA9jgWjoP7Pec2vaKFY2qey7h "P4")

#### **Consultas para extraer información (Ejemplos)**

Información sobre las tablas de la BD

    SELECT * FROM Information_Schema.Tables

Número de campos por tabla

    SELECT Table_Name, COUNT(*) As NumCampos
    FROM Information_Schema.Columns
    GROUP BY Table_Name
    ORDER BY Table_Name

Información sobre campos de una tabla concreta

    SELECT *
    FROM Information_Schema.Columns
    WHERE TABLE_NAME = ‘NombreTabla’
    ORDER BY COLUMN_NAME
