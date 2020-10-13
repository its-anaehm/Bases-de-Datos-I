@its_anaehm

# <span style="color:blue">**Guía No.3**</span>

**Libro:** Fundamentals Of Database Systems - Capítulo 3

**Tema:** Modelado de Datos Mediante El modelo Entidad-Relación (ER)

## **Preguntas**

### ***1.- ¿Qué son las llaves y los atributos?***

**Llaves:** Es un campo o una combinación de campos que identifican de forma única a cada fila en la tabla de datos. Una llave puede comprender una o varias columnas de la tabla.

**Atributo:** Es una propiedad particular que describe a una entidad.

### ***2.- ¿Qué son los tipos de relación, los conjuntos de relación, los roles, y las restricciones estructurales?***

**Tipos de relación:** Definen un conjunto de asociaciones o un conjunto de relaciones entre entidades de estos tipo. En los diagramas ER, los tipos de relaciones se muestran como cajas en forma de diamante.

**Conjuntos de relación:** Son las instancias de las relaciones individuales en un conjunto de relaciones.

**Roles:** Indican la función que desempeña una entidad participante del tipo de entidad en cada instancia de relación y ayuda a explicar que significa la relación.

**Restricciones estructurales:** Son las que ayudan a mantener la consistencia semántica de los datos y proporcionan un medio de asegurar que las modificaciones hechas en la base de datos.

### ***3.- ¿Qué son los atributos nulos y para qué sirven?***

Los atributos nulos son atributos que no tienen ningún valor. En claves foráneas indican que el registro actual no está relacionado con ninguno. Y sirven como identificadores de la ausencia de un valor.

### ***4.- ¿Qué significa UML?***

Lenguaje de modelado unificado.

### ***5.- ¿Qué son las entidades, los grupos de entidades y los tipos de entidades?***

Las entidades son cosas u objetos del mundo real con una existencia independiente, esta puede ser un objeto con existencia física o conceptual.

*Los grupos de entidades* son un conjunto de entidades que tienen los mismos atributos pero en cada entidad tiene sus propios valores para cada atributo.

Un *tipo de entidad* define una colección de entidades, un tipo de entidad generalmente tiene uno o más atributos cuyos valores se denominan valores claves. Un tipo de entidad describe el esquema o la relación de un conjunto de entidades que comparten la misma estructura.

### ***6.- ¿Cómo se comparan y se diferencian los atributos de un único valor de los multivalor?***

La mayoría de los atributos son de valor único para cada entidad en particular; tales atributos se denominan atributos de valor único. En algunos casos un atributo puede contener un conjunto de valores para la misma entidad y estos atributos se denominan multivalor, un atributo de muchos valores puede tener un límite inferior y superior para limitar el número de valores permitidos para cada entidad individual.

### ***7.- ¿Cuál es la simbología relacionada en el diseño entidad relación?***

![Simbología D-ER](https://drive.google.com/uc?export=view&id=1VRohj6v-M6GIoW3qvcqBY9ptGs-gGL76 "Simbología D-ER")

### ***8.- ¿Qué son los diagramas entidad relación y qué problemas de diseño y convenciones de nomenclatura posee?***

Un diagrama entidad-relación, también conocido como modelo entidad relación o ERD, es un tipo de diagrama de flujo que ilustra cómo las "entidades", como personas, objetos o conceptos, se relacionan entre sí dentro de un sistema. Los diagramas ER se usan a menudo para diseñar o depurar bases de datos relacionales en los campos de ingeniería de software, sistemas de información empresarial, educación e investigación.

Y entre los problemas de diseño y convenciones de nomenclatura que podemos encontrar están:

- Errónea elección de nombres
- Problemas en definir el concepto en particular
- Problemas de redundancia y consistencia

### ***9.- ¿Cómo se comparan y se diferencian los atributos compuestos de los atributos simples?***

Los atributos compuestos se pueden dividir en subpartes más pequeñas que representan atributos más básicos con significados independientes. Los atributos que no son divisibles se denominan simples. Los atributos compuestos son útiles para modelar situaciones en las que un usuario se refiere al atributo compuesto como una unidad, pero otras veces se refiere específicamente a sus componentes.
