---se crea base de datos---
create database base_datos_biblioteca
--- se usa la base de datos---
use base_datos_biblioteca
--- se crean la tabla fuerte lector---
create table lector(
codigo_lector int,
nombre_lector varchar(50),
constraint lect primary key(codigo_lector))/*se crea clave primaria a la tabla lector*/
--- se crea la tabla fuerte prestamo con clave forànea---
create table prestamo(
codigo_prestamo int,
fecha_prestamo date,
fecha_vence_prestamo date,
codigo_lector1 int,
constraint prest primary key (codigo_prestamo),  /*se crea clave primaria a la tabla prestamo*/
constraint prestlect foreign key(codigo_lector1) references lector(codigo_lector)) /* se crea clave forànea referenciando a la tabla lector y se cierra la tabla*/
---se crea la tabla fuerte autor---
create table autor(
codigo_autor int,
nombre_autor varchar (70),
constraint aut primary key (codigo_autor)) /* se crea clave primaria a la tabla autor y se cierra*/
--- se crea la tabla fuerte editorial---
create table editorial(
codigo_editorial int,
nombre_editorial varchar(40),
constraint editor primary key(codigo_editorial))
--- se crea la tabla libro con clave forànea---
create table libro(
codigo_libro int,
nombre_titulo varchar(60),
codigo_autor1 int,
constraint lib primary key(codigo_libro),
constraint apodolibroautor foreign key (codigo_autor1) references autor(codigo_autor))
---- se crea la tabla intermedia prestamo_libro----
create table prestamo_libro(
codigo_prestamo1 int,
codigo_libro1 int,
constraint prestlib foreign key (codigo_prestamo1) references prestamo(codigo_prestamo),
constraint libprest foreign key (codigo_libro1) references libro(codigo_libro))
---- se crea la tabla intermedia editorial_autor---
create table editorial_autor(
codigo_editorial1 int,
codigo_autor2 int,
constraint editaut foreign key(codigo_editorial1) references editorial(codigo_editorial),
constraint autdit foreign key (codigo_autor2) references autor (codigo_autor))
----se crea la tabla intermedia lector_editorial---
create table lector_editorial(
codigo_lector2 int,
codigo_editorial2 int,
constraint lectedit foreign key(codigo_lector2) references lector(codigo_lector),
constraint editlect foreign key (codigo_editorial2) references editorial(codigo_editorial))

/*liseth arelis giraldo Morales*/
/*grupo cerrado intersoftware*/
/*lisethgiraldo628gmail.com*/
