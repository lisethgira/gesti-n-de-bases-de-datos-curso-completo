----consultar las infromaciones de las tablas que conforman la bd----
select * from alumno
select * from carrera
select * from mat_alu
select * from mat_pro
select * from materia
select * from profesor

select nom_alu, sem_alu from alumno where mat_alu=10

----se requiere saber la duración de la carrera del estudiante que tiene clave carrera 7---

select nom_c,durac_c from carrera where clave_c=7

--- se requiere gernerar una consulta con el horario del profesor alberto--

select hor_p from profesor wherw nom_p = 'alberto'



