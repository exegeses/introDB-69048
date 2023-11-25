# Insertar datos en una tabla

> Hay 3 maneras de insertar datos en SQL

## Sintáxis usando **SET**

> Sintáxis: 

    INSERT INTO nombreTabla    
        SET 
            nombreColumna = valor,
            nombreColumna2 = valor2,
            nombreColumna3 = valor3,
            nombreColumna4 = valor4;

> Ejemplo práctico: 

    INSERT INTO personas  
        SET
            apellido = 'García',  
            nombre = 'Javier',  
            dni = 25852410,  
            alta = '2008-12-12';


## Sintáxis completa ( se mencionan las columnas )

> Sintáxis:

    INSERT INTO nombreTabla    
        ( nombreCol2, nombreCol3, nombreCol4 )  
      VALUES  
        ( valor2, valor3, valor4 );

> Ejemplo práctico:

    INSERT INTO personas  
        ( apellido, nombre, dni, alta )  
      VALUES  
        ( 'González', 'Mónica', 36520147, '2005-09-30' );


## Sintáxis simplificada ( NO se mencionan las columnas )

> Sintáxis:

    INSERT INTO nombreTabla  
      VALUES  
        ( valor, valor, valor, valor );

> Ejemplo práctico:

    INSERT INTO personas  
      VALUES  
        ( DEFAULT, 'Martínez', 'Vanesa', 35741951, '2006-06-21' );

----

### Insertar varios registros en 1 (un) sólo **INSERT**

    INSERT INTO personas  
      VALUES  
        ( DEFAULT, 'Álvarez', 'Fernando', 32912457, '2007-11-02' ),
        ( DEFAULT, 'Pérez', 'Mariano', 34912457, '2005-08-08' ),
        ( DEFAULT, 'Gómez', 'Alberto', 31912456, '2004-04-04' );
