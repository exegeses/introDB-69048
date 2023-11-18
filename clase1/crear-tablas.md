# Creación de tablas

> Para cxrear una tabla utilizamos el comando
> **CREATE TABLE**

> Sintáxis:

    CREATE TABLE nombre  
    (  
        nombreColumna tipo características,
        nombreColumna2 tipo características,
        nombreColumna3 tipo características,
        nombreColumna4 tipo características
    );

> Ejemplo práctico: 

    CREATE TABLE productos_apple  
    (
        id tinyint unsigned auto_increment primary key not null,  
        nombre varchar(20) unique not null,  
        precio decimal(9,2) unsigned not null,  
        stock smallint unsigned not null
    );