# proyecto catálogo de productos

-- creación de tabla categorías
create table categorias
(
    idCategoria tinyint unsigned primary key not null auto_increment,
    catNombre varchar(45) unique not null
);

-- creación de tabla marcas
create table marcas
(
    idMarca tinyint unsigned primary key not null auto_increment,
    mkNombre varchar(45) unique not null
);

-- creación de tabla productos
create table productos
(
    idProducto mediumint unsigned primary key not null auto_increment,
    prdNombre varchar(45) unique not null,
    prdPrecio decimal(8,2) unsigned not null,
    idMarca tinyint unsigned not null,
        foreign key (idMarca)
            references marcas (idMarca),
    idCategoria tinyint unsigned not null,
        foreign key (idCategoria)
            references categorias (idCategoria),
    prdDescripcion varchar(1000) not null,
    prdImagen varchar(45) not null default('noDisponible.png'),
    prdActivo boolean default(1) not null
);