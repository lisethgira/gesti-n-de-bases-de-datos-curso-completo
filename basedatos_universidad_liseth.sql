---crear base de datos---
create database universidad
---poner en uso base de datos universidad----
use universidad
-----crear tabla fuerte carrera-----
create table carrera (
Ide_carrera int,
nombre_carrera varchar (60),
dura_carrera float,
constraint carre primary key (Ide_carrera))/*se cierra la tabla ()*/
----crear tabla  fuerte alumno con clave forànea----
create table alumno(
id_alumno int,
nom_alumno varchar(70),
edad_alumno varchar(50),
nro_contact_alum bigint,
Ide_carrera1 int,
constraint alu primary key (id_alumno),
constraint carre1 foreign key (Ide_carrera1) references carrera(Ide_carrera))
---crear tabla profesor----
create table profesor (
id_profesor int, /*creamos  los campos de la tabla y separamos por ,(coma)*/
nom_profesor varchar(60),
dir_profesor varchar(60),
nro_profeosr bigint,
constraint prof primary key (id_profesor))
----crear tabla materia----
create table materia (
id_materia int,
nom_mate varchar(50),
cred_mat float,
constraint mat primary key (id_materia))
-----crear tabla intermedia alumno_profesor----
create table alumno_profesor (
id_alumno1 int,
id_profesor1 int,
constraint alpro foreign key (id_alumno1) references alumno (id_alumno),
constraint alpro2 foreign key (id_profesor1) references profesor(id_profesor))
------crear tabla intermedia profesor_materia----
create table profesor_materia(
id_profesor2 int,
id_materia1 int,
constraint proma foreign key (id_profesor2) references profesor (id_profesor),
constraint proma1 foreign key (id_materia1) references materia (id_materia))