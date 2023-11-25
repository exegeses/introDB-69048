# Creación de tabla personas

CREATE TABLE personas
(
    id smallint unsigned auto_increment primary key not null,
    apellido varchar( 50 ) not null,
    nombre varchar( 50 ) not null,
    dni int unsigned unique not null,
    alta date not null
);
