--TAREA 4

--Creamos DB
create database Pacientes

--Seleccionamos la DB Pacientes
use Pacientes;

--Creamos Tabla de Datos de Pacientes
create table DatosPacientes
(
	Cedula varchar(14) primary key,
	Nombre varchar(50) NOT NULL,
	Apellido varchar (50) NOT NULL,
	Edad int,
	Telefono varchar (14),
	Domicilio varchar (100),
	Genero char(1) constraint chk_genero check(genero = 'F' or genero = 'M'),
	Seguro bit -- 1 PARA SI O 0 PARA NO
)

--Probamos la Table datosPacientes
insert into DatosPacientes values('1','José Alfredo','Chan Gamboa', 33, '88888888', 'Alajuela', 'M', '1')
select * from DatosPacientes
delete datosPacientes where cedula = '1'

