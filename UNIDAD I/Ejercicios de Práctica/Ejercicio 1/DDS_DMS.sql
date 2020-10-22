-- @its_anaehm
-- @date 22 de Octubre de 2020

/* 
Estudiante, Asignatura, Maestro:
- Promedio de asignaturas que matricula un estudiante.
- Promedio de asignaturas asignadas a un catedrático.
*/

DROP DATABASE IF EXISTS Exercise1DB;

CREATE TABLE Exercise1DB CHARACTER SET utf8;

USE Exercise1DB;

CREATE TABLE Student(
    id_Student INT AUTO_INCREMENT PRIMARY KEY,
    var_name VARCHAR(25) NOT NULL,
    var_lastName VARCHAR(25) NOT NULL,
    var_account VARCHAR NOT NULL,
    int_age TINYINT NOT NULL
);

CREATE TABLE Class(
    id_Class INT AUTO_INCREMENT PRIMARY KEY,
    var_name VARCHAR(25) NOT NULL,
    int_hour INT NOT NULL,
    var_career VARCHAR NOT NULL,
    var_modality VARCHAR NOT NULL
);

CREATE TABLE Teacher(
    id_Teacher INT AUTO_INCREMENT PRIMARY KEY,
    tex_name TEXT NOT NULL,
    tex_lastName TEXT NOT NULL,
    flo_salary FLOAT NOT NULL
);

CREATE TABLE Enrollment(
    int_id_Student INT NOT NULL,
    int_id_Class INT NOT NULL
);

CREATE TABLE Assigment(
    int_id_Class INT NOT NULL,
    int_id_Teacher INT NOT NULL
)

ALTER TABLE Assigment
ADD CONSTRAINT Assigment_TEA_FK
    FOREIGN KEY (int_id_Teacher) REFERENCES Teacher (id_Teacher),
ADD CONSTRAINT Assigment_CLA_FK
    FOREIGN KEY (int_id_Class) REFERENCES Class (id_Class);

ALTER TABLE Enrollment
ADD CONSTRAINT Matricula_STU_FK
    FOREIGN KEY (int_id_Student) REFERENCES Student (id_Student),
ADD CONSTRAINT Matricula_CLA_FK
    FOREIGN KEY (int_id_Class) REFERENCES Class (id_Class);


INSERT INTO Student(var_name,var_lastName,var_account,int_age) VALUES
    ("Ana","Hernández","20171001620",21),
    ("Rodrigo","Coello","20191031456",18),
    ("Alejandra","Ramírez","20151000972",23),
    ("Miguel","Alvarez","20161004327",22),
    ("Ronald","Ortega","20181000203",20)
;

INSERT INTO Class(var_name,dat_hour,var_career,var_modality) VALUES
    ("Sistemas de Información",10,"Ing. en Sistemas","Morning"),
    ("Bases De Datos I",09,"Ing. en Sistemas","Morning"),
    ("Sistemas Operativos II",08,"Ing. en Sistemas","Morning"),
    ("Ecuaciones Diferenciales",07,"Matemática","Morning"),
    ("Liderazgo Para El Cambio Informático",17,"Ing. en Sistemas"."Evening")
;

INSERT INTO TEACHER(tex_nombre,tex_lastName,flo_salary) VALUES
    ("Panchito","Medina",5378.90),
    ("Jairo","Corrales",10596.85),
    ("Timoteo","Azfura",23456.13),
    ("Leonidas","Solis",2478.09),
    ("Antonieta","Paz",8631.94)
;

INSERT INTO Enrollment() VALUES
    (1,1),
    (1,3),
    (1,5),
    (2,2),
    (2,4),
    (3,5),
    (4,1),
    (4,4),
    (5,2),
    (5,3)
;

INSERT INTO Assigment() VALUES
    (5,5),
    (4,2),
    (1,1),
    (3,4),
    (2,3)
;

SELECT Enrollment.int_id_Student AS "ID", COUNT(*) AS "Clases" FROM Enrollment GROUP BY Enrollment.int_id_Student;

SELECT Student.var_nombre AS "Nombre", Class.var_nombre AS "Asignatura" FROM Enrollment JOIN Student ON  Enrollment.int_id_Student = Student.id_Student JOIN Class ON Enrollment.int_id_Class = Class.id_Class ORDER BY `Nombre` ASC;

SELECT AVG(prom.Cantidad_Clases) AS "Promedio de clases Matriculadas" FROM (SELECT Enrollment.int_id_Student, COUNT(*) AS "Cantidad_Clases" FROM Enrollment GROUP BY Enrollment.int_id_Student) AS prom;

SELECT AVG(prom.Cantidad_Clases) AS "Promedio de clases Matriculadas" FROM (SELECT Assigment.int_id_Maestro, COUNT(*) AS "Cantidad_Clases" FROM Assigment GROUP BY Assigment.int_id_Maestro) AS prom;
