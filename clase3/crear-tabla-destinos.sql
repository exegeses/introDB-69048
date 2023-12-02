# creación de tabla destinos

CREATE TABLE destinos
(
    idDestino tinyint unsigned auto_increment not null primary key,
    destNombre varchar(45) unique not null,
    idRegion tinyint unsigned not null,
    foreign key (idRegion) references regiones (idRegion),
    destPrecio decimal( 9, 2 ) unsigned not null,
    destAsientos tinyint unsigned not null,
    destDisponibles tinyint unsigned not null,
    destActivo boolean not null
);