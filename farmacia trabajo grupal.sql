---ALUMNONOS ---

--- Luz Tatiana Zapata---
--- Liseth Arelis Giraldo ---
--- Alejandro Montoya ----

--CREACION BD
create database Farmacia1
--USO DE LA BD
use Farmacia1
--BORRAR BD
drop database Farmacia1

--CREACION DE TABLAS
create table Usuario
(
cod_usu varchar(8) unique,
cod_emp varchar(8)not null,
nivel_usu varchar(2)not null,
nom_usu varchar(30)not null,
contrasena varchar(10) not null,
activo varchar(2) not null,

constraint usu primary key (cod_usu))

---BORRAR TABLA USURARIO
drop table Usuario

--- INSERTAR DATOS TABLA USUARIO
insert into Usuario values('12345678','24360992','1','HARRY','1234','si' ),
                          ('23456789','65646454','2','BLADI','4343','si' ),
                          ('98765654','94364339','3','RUBI','6656','si' ),
                          ('23445348','94360139','4','JESUS','2365','si' ),
                          ('23457878','20140152','5','ROBERT','6572','si')
select * from Usuario

