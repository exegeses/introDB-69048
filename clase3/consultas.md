# Consultas en SQL

## Consultas a server

> Instrucciones vistas

    -- listar bases de datos
    SHOW DATABASES;

    -- listar tablas de una base
    SHOW TABLES;

    -- mostrar la estructura de una tabla  
    DESCRIBE nombreTabla;

> La palabra reservada más importante o al menos
> la más utilizada es la palabra **SELECT**

## Cansultas a tablas

> Para realizar consultas a una tabla
> utilizamos la palabra reservada **SELECT** 
> acompañada de la palabra **FROM**

> Si queremos traer TODOS los datos de una tabla

    SELECT * FROM nombreTabla;

> Ejemplo práctico:

    SELECT * FROM regiones;

    SELECT * FROM destinos;

> Si queremos traer los datos de ALGUNAS columnas de una tabla

    SELECT nombreCol3, nombreCol5  
        FROM nombreTabla;

> Traer las columnas nombre y precio
> de la tabla destinos 

    SELECT destNombre, destPrecio  
        FROM destinos;

## Orden de resultados

> Para ordenas los resultados de una consulta
> utilizamos la palabra reservada **ORDER BY**

    SELECT destNombre, destPrecio  
        FROM destinos    
        ORDER BY destPrecio;

    SELECT destNombre, destPrecio  
        FROM destinos    
        ORDER BY destPrecio DESC;  

    SELECT destNombre, destPrecio  
        FROM destinos
        ORDER BY destNombre;  

    SELECT destNombre, destPrecio  
        FROM destinos
        ORDER BY idRegion, destPrecio;

## Filtrado de registros

> Filtrar registros significa traer sólamente 
> los registros que cumplan con una condición dada

> Para implementar un filtro utilizamos
> la palabra reservadza **WHERE** 
> seguida de una condición.

> Traer los destinos con un precio hasta 8000

    SELECT destNombre, destPrecio   
    FROM destinos  
    WHERE destPrecio <= 8000;

> Traer los destinos con un precio entre 6600 y 8000

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE destPrecio >= 6600  
       AND destPrecio <= 8000; 
 
    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE destPrecio BETWEEN 6600 AND 8000;  

> Traer los destinos de la región 5

    SELECT destNombre, destPrecio  
      FROM destinos
      WHERE idRegion = 5;

> Traer los destinos de la región 5 y 
> además los destinos de la región 3

    SELECT destNombre, destPrecio    
      FROM destinos  
      WHERE idRegion = 3  
        OR idRegion = 5;

    SELECT destNombre, destPrecio  
      FROM destinos  
      WHERE idRegion IN( 3, 5 ); 