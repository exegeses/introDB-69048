# Creación de tabla pivot (intermedia)

create table productos_proveedores
(
    idPP mediumint unsigned auto_increment primary key not null,
    idProducto mediumint unsigned not null,
    idProveedor tinyint unsigned not null,
    foreign key (idProducto) references productos (idProducto),
    foreign key (idProveedor) references proveedores (idProveedor)
);

-- inserción de datos
insert into productos_proveedores
values
    ( DEFAULT, 1, 1 ),
    ( DEFAULT, 1, 4 ),
    ( DEFAULT, 2, 3 ),
    ( DEFAULT, 2, 4 ),
    ( DEFAULT, 3, 2 ),
    ( DEFAULT, 3, 4 ),
    ( DEFAULT, 4, 3 ),
    ( DEFAULT, 4, 2 );
