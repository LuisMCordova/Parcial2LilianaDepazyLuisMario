Create DataBase BDParcial2LuisCordovayLilianaDePaz;

use BDParcial2LuisCordovayLilianaDePaz;

create table Departamentos(
IdDepartamento int primary key identity (1,1) not null,
NombreDepartamento varchar(50) not null
);

insert into Departamentos(NombreDepartamento) values ('Chalatenango'),('San Salvador'),('Ahuachapan'),('Cabanas');

select * from Departamentos;

create table Municipios(
IdMunicipio int primary key identity (1,1) not null,
NombreMunicipio varchar(50) not null,
IdDepartamento int not null,
constraint FK_Municipios_Departamentos_id foreign key (IdDepartamento) references Departamentos (IdDepartamento)
);


insert into Municipios (NombreMunicipio,IdDepartamento) values ('Potonico',1),('La Palma',1),('La Reina',1),('Comalapa',1);
insert into Municipios (NombreMunicipio,IdDepartamento) values ('Chilangas',2),('Jocoro',2),('El Centro',2),('Antiguo Cuscatlan',2);
insert into Municipios (NombreMunicipio,IdDepartamento) values ('Apaneca',3),('Atiquizaya',3),('El Refugio',3),('Jujutlan',3);
insert into Municipios (NombreMunicipio,IdDepartamento) values ('Sensuntepeque',4),('Ilobasco',4),('Cinquera',4),('Tejutepeque',4);



select * from Municipios;



create table Clientes(
IdCliente int primary key identity (1,1) not null,
Nombre varchar(50) not null,
Apellido varchar(50) not null,
IdDepartamento int not null,
IdMunicipio int not null,
constraint FK_Clientes_Departamentos_id foreign key (IdDepartamento) references Departamentos (IdDepartamento),
constraint FK_Clientes_Municipios_id foreign key (IdMunicipio) references Municipios (IdMunicipio)
);

insert into Clientes(Nombre,Apellido,IdDepartamento,IdMunicipio)
values('Luis Mario','Cordova',1,4),('Liliana','De paz',4,13);

select * from Clientes;
