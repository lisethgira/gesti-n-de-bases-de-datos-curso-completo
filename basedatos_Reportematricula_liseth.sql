 ---se creo la base de datos----
create database reporte_matricula
--- se hizo uso de la base  de datos---
use reporte_matricula
---se creo la tabla fuerte alumno---
create table alumno(
codigo_alumno int,
nombre_alumno varchar(60),
constraint alumn primary key (codigo_alumno)) /*se construye la clave primaria de la tabla alumno y se cierra la tabla*/
---- se creo la tabla fuerte docente---
create table docente(
codigo_docente int,
nombre_docente varchar(60),
telefono_docente bigint,
constraint docen primary key (codigo_docente)) /* se construye clave primaria tabla docente y se cierra la tabla*/
---se crea la tabla fuerte curso con clave forànea---
create table curso (
codigo_curso int,
nombre_curso varchar(30),
codigo_docente1 int,
constraint cur primary key (codigo_curso), /* se construye clave primaria*/
constraint cur1 foreign key (codigo_docente1) references docente (codigo_docente))/* se contruye clave foranea referenciada de la tabla docente*/
/*y se cierra la tabla curso*/
---se crea tabla fuerte especialidad---
create table especialidad(
codigo_especialidad int,
nombre_especialidad varchar(30),
constraint espe primary key (codigo_especialidad))/*se construye clave primaria a la tabla especialidad y se cierra tabla*/
---se crea tabla fuerte oficina---
create table oficina(
codigo_oficina int,
nombre_oficina varchar (50),
ubicacion_oficina varchar (60),
constraint ofi primary key (codigo_oficina))/* se construye clave primaria a la tabla oficina y se cierra la tabla*/
-----se creo tabla intermedia alumno_curso-----
create table alumno_curso (/* se relacionan las tablas alumno y curso y se crean las claves foràneas*/
codigo_alumno1 int,
codigo_curso1 int,
constraint alumcur foreign key (codigo_alumno1) references alumno(codigo_alumno),
constraint alumcur1 foreign key (codigo_curso1) references curso(codigo_curso))
--- se creo tabla intermedia docente_especialidad---
create table docente_especialidad(/*se relacionan las tablas docente y especialidad y se crean las tablas foràneas*/
codigo_docente2 int,
codigo_especialidad1 int,
constraint docespe foreign key (codigo_docente2) references docente(codigo_docente),
constraint docespe1 foreign key (codigo_especialidad1) references especialidad(codigo_especialidad))
--- se creo tabla intermedia docente_oficina----
create table docente_oficina(/*se relacionan las tablas docente_oficina y se crean las tablas foràneas*/
codigo_docente3 int,
codigo_oficina1 int,
constraint  doceofi foreign key (codigo_docente3) references docente(codigo_docente),
constraint doceofi1 foreign key (codigo_oficina1) references oficina(codigo_oficina))

/*liseth Arelis Giraldo Morales */
/*grupo cerrado intersoftware*/
/*Lisethgiraldo628@gmail.com*/