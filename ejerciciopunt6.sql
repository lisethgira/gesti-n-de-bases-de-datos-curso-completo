create database biblioteca
use biblioteca

create table lector(
cod_lector int,
nom_lector varchar(50),
constraint apodolector primary key(cod_lector))

create table autor(
cod_autor int,
nom_autor varchar (70),
constraint apodoautor primary key (cod_autor))

create table prestamo(
cod_prestamo int,
fech_prestamo date,
cod_lector1 int,
constraint apodoprestamo primary key (cod_prestamo),
constraint apodoprestamolector foreign key(cod_lector1) references lector(cod_lector))

create table editorial(
cod_editorial int,
nom_editorial varchar(40),
constraint apodoeditorial primary key(cod_editorial))

create table libro(
cod_libro int,
nom_titulo varchar(60),
cod_autor1 int,
constraint apodolibro primary key(cod_libro),
constraint apodolibroautor foreign key (cod_autor1) references autor(cod_autor))


create table prestamo_libro(
cod_prestamo1 int,
cod_libro1 int,
constraint apodoprestamolibro foreign key (cod_prestamo1) references prestamo(cod_prestamo),
constraint apodolibroprestamo foreign key (cod_libro1) references libro(cod_libro))

create table editorial_autor(
cod_editorial1 int,
cod_autor2 int,
constraint apodoedotialautor foreign key(cod_editorial1) references editorial(cod_editorial),
constraint apodoautoreditorial foreign key (cod_autor2) references autor (cod_autor))

create table lector_editorial(
cod_lector2 int,
cod_editorial2 int,
constraint apodolectoreditorial foreign key(cod_lector2) references lector(cod_lector),
constraint apodoeditoriallector foreign key (cod_editorial2) references editorial(cod_editorial))


