@its_anaehm

# <span style="color:blue">**Guía No.2**</span>

**Libro:** Fundamentals Of Database Systems - Capítulo 2

**Tema:** Concepto y Arquitectura del Sistema de Base de Datos

## **Preguntas**

### ***1.-¿Qué es el estado de la base de datos?***

Son el conjunto de datos de una base de datos en un momento determinado.

### ***2.-¿Qué son y cuáles son las herramientas y utilidades que tiene una SGBD?***

**Utilidades:** Son las que ayudan al DBA a administrar el sistema de datos.

Tipos de utilidades:

- *Cargando:* Se utiliza para cargar archivos de datos existentes.
- *Apoyo:* Unidad de respaldo que colabora creando una copia de seguridad.
- *Reorganización del almacenamiento de la base de Datos:* Esta utilidad se puede utilizar para reorganizar la base de datos.
- *Supervisión del rendimiento:* Monitorea el uso de la base de datos y proporciona estadísticas para tomar decisiones al DBA.

**Herramientas:** Generan los programas de carga adecuados, dadas las descripciones de almacenamiento de la base de datos de origen y destino existentes.

Tipos de herramientas:

- *CASE12:* Se utiliza en la fase de diseño.
- *Sistemas de diccionario:* Almacenan información sobre catálogo, esquemas y restricciones, decisiones de diseño, estándares de uso, descripciones de programas de aplicación de información del usuario.
- *PowerBuilder(Sybase) o JBuilder (Borland):* Proporcionan un entorno para crear bases de datos e incluyen instaladores que ayudan a muchas facetas de los sistemas de bases de datos.
- *Software de comunicaciones:* Su función es permitir que los usuarios en ubicaciones remotas del sitio del sistema de base de datos accedan a través de terminales de computadora.

### ***3.- ¿Cómo se clasifican los SGBD?***

Se clasifican mediante:

![imagen](https://drive.google.com/uc?export=view&id=1w0BOOKt2NqIgC7tb1l7dZoS-Kz5AXKq- "Clasificaación SGBD")

### ***Liste las categorías de modelos de datos***

- *Modelo de datos conceptuales o de alto nivel:* Basados en entidades y relaciones.
- *Modelo de datos físicos o de bajo nivel:* Almacenan información en discos magnéticos.
- *Modelo de datos representativos o de implementación:* Basados en registros orientados a objetos.

### ***¿Qué son los esquemas de datos?***

Son la descripción de la base de datos que se especifica durante el diseño de la base de datos y no se espera que cambie con frecuencia.

### ***¿Qué es la arquitectura cliente/servidor de SGBD?***

Es una arquitectura que se desarrolla para hacerle frente a entornos informáticos en los que se ve involucrados un gran número de PC's, estaciones de trabajo, servidores de archivos, etc. La idea es definir servidores especializados con funcionalidades específicas.

### ***¿Qué es la arquitectura de tres esquemas y la independencia de datos?***

**Arquitectura de tres esquemas:** Es una herramienta conveniente con la que el usuario puede visualizarlos niveles de esquema en un sistema de base de datos. El objetivo de la arquitectura de tres esquemas es separar las aplicaciones de usuario de la base de datos física.

*Niveles de esquema:*

- Nivel interno
- Nivel conceptual
- Nivel externo

**Independencia de datos:** Es la capacidad de cambiar el esquema de un nivel de un sistema de base de datos sin afectar o tener que cambiar el esquema en el siguiente nivel superior.

*Tipos de independencias:*

- Lógica: Que posee la capacidad de cambiar el esquema externo.
- Física: Que posee la capacidad de cambiar el esquema interno.

### ***¿Qué son los lenguajes de los SGBD?***

Son una herramienta para definir datos en los DBMS donde no se mantiene una separación estricta de niveles.

### ***¿Qué son las interfaces de los SGBD?***

Son herramientas para interactuar con la Base de datos realizando consultas y solicitudes. Estas son utilizadas por usuarios ocasionales.

### ***¿Qué son los ambientes de las SGBD y como se diferencian de las interfases y los lenguajes?***

El ambiente se compone por los tipos componentes de software que constituye un SGBD y los tipos de sistemas con los que este interactúa. Podemos decir que el ambiente se define a un nivel de funcionamiento más interno y rodea conceptos de tecnología interior; mientras que la interfaz actúa en un campo más externo y visual.

### ***¿Qué es una arquitectura centralizada de SGBD?***

Los sistemas de bases de datos cuya arquitectura es centralizada son aquellos que se ejecutan en un único sistema informático sin interaccionar con ninguna otra computadora.

### ***¿Qué son las instancias dentro de los conceptos de bases de datos?***

Es el conjunto de datos actuales en una base de datos. (También se relaciona con los esquemas)

### ***¿Qué son los modelos de estados?***

Es una colección de conceptos que se pueden utilizar para describir la estructura de una BD y se encarga de proporcionar los medios necesarios para una abstracción.
