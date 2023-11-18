-- creaci´òn de tabla
CREATE TABLE monedas
(
    id tinyint unsigned auto_increment primary key not null,
    exacto decimal(10,2) not null,
    aproximado float not null
);

-- inserción de datos
INSERT INTO monedas
    VALUES
        (DEFAULT, 148, 25.4),
        (DEFAULT, 25.4, 12),
        (DEFAULT, 12, 5.3),
        (DEFAULT, 5.3, 148);

-- consulta
SELECT SUM(exacto), SUM(aproximado)
    FROM monedas;