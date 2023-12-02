# Creación de tabla regiones

CREATE TABLE regiones
(
    idRegion tinyint unsigned primary key not null auto_increment,
    regNombre varchar(45) unique not null
);