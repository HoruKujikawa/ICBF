use ICBF


create table jardines(
IdJardin int PRIMARY KEY IDENTITY,
NombreJardin varchar(30) not null,
DireccionJardin varchar(30) not null,
EstadoJardin varchar(20)not null
);

create table personas(
IdPersona int PRIMARY KEY IDENTITY,
Nombre varchar(20) not null,
Apellido varchar(20) not null,
Edad varchar (3) not null,
Direccion varchar(40) not null,
Correo varchar(30) not null,
Telefono varchar(15) not null,
Fecha_Nacimiento date not null,
Tipo_Sangre varchar(10),
Ciudad_Nacimiento varchar(30),
EPS varchar(30),
fk_IdJardin int,
Cedula varchar(20),
Dir_Residencia varchar(30),
foreign key (fk_IdJardin) references jardines (IdJardin)
);

create table roles(
RolId int PRIMARY KEY IDENTITY,
NombreRol varchar(20) not null,
fk_idPersona int not null,
foreign key(fk_idPersona) references personas(IdPersona)
);

create table avanceacademico(
fk_IdPersona int PRIMARY KEY IDENTITY,
Año varchar(20) not null,
Nivel varchar(30) not null,
Notas varchar(10) not null,
Descripcion varchar(50) not null,
Fecha_Nota date not null,
foreign key (fk_IdPersona) references personas(IdPersona)
);

create table asistencia(
fk_IdPersona int PRIMARY KEY IDENTITY,
Fecha date not null,
Estado_Niño varchar(20) not null,
foreign key(fk_IdPersona) references personas(IdPersona)
);