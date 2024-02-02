create database Juguetes;

use Juguetes;

create table categoria (
    id_categoria int not null auto_increment,
    descripcion varchar(45) not null,
    primary key (id_categoria)
);

create table coleccion (
    id_coleccion int not null auto_increment,
    descripcion varchar(45) not null,
    primary key (id_coleccion)
);

create table pieza (
    id_pieza int not null auto_increment,
    descripcion varchar(45) not null,
    fecha_compra date not null,
    valor_compra float not null,
    categoria int not null,
    coleccion int not null,
    foto varchar(45),
    primary key (id_pieza),
    foreign key (categoria) references categoria(id_categoria),
    foreign key (coleccion) references coleccion(id_coleccion)
);


describe categoria;

insert into categoria(descripcion) values("carros"),
										 ("legos"),
                                         ("balones"),
                                         ("nerf");

select * from categoria;


describe coleccion;

insert into coleccion(descripcion) values("objetos armables"),
										 ("objetos deportivos"),
                                         ("objetos adicionales");
                                           
select * from coleccion;       

describe pieza;

insert into pieza(descripcion,fecha_compra,valor_compra,categoria,coleccion,foto)values("honda integra type r 2005","2023-12-14",15000,1,3,"img1"),
																					   ("nissan silvia 15","2023-11-24",15000,1,3,"img2"),
																					   ("balon de futbol","2023-12-04",35000,3,2,"img3"),
																					   ("balon de basketball","2023-12-11",30000,3,2,"img4"),
																					   ("pistola cañon corto","2023-11-11",75000,4,3,"img5"),
																					   ("pistola cañon largo","2023-10-14",120000,4,3,"img6"),
																					   ("set de estacion de boberos","2024-01-14",210000,2,1,"img7"),
																					   ("set de torre colpatria","2023-12-19",180000,2,1,"img8"); 
