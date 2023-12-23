# Consultas de coincidencia ( que contenga )

> las consultas de coincidencia se utilizan para traer información 
> donde como filtro vamos a explicitar que contenga cierta cadena de caracteres

> Traer nombre, precio y descripción de la tabla productos 
> donde contenga la cadena 'Bluetooth' en la columna descripción

    SELECT prdNombre, prdPrecio, prdDescripcion  
      FROM productos  
      WHERE prdDescripcion LIKE '%bluetooth%';

> Utilizamos la palabra reservada **LIKE** 
> y además el carácter **%** como una especie de comodín 
> que podría ocupar 1 (uno), varios o hasta ningún carácter

> Comodín de 1 (un) solo carácter

    SELECT prdNombre, prdPrecio  
      FROM productos  
      WHERE prdNombre LIKE '_40%';

> Buscar una cadena de 8 (ocho) caracteres de longitud

    SELECT prdNombre, prdPrecio  
      FROM productos  
      WHERE prdNombre LIKE '________';
