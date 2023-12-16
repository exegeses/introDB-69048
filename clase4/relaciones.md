# Relaciones a dos o más tablas

> Si queremos traer datos de dos o más tablas
> tenemos dos técnicas para lograrlo

## 1.- Table relation
> La técnica **table relation** se logra mencionando
> en el table list ( después del **FROM** )
> las tablas necesarias ( separadas por coma )
> y luego mediante un filtro ( **WHERE** )
> igualamos la columna en común.


> Sintáxis  

    SELECT colTabla1, colTabla1, colTabla2  
        FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk;

> Ejemplo práctico: 

    SELECT prdNombre, prdPrecio, mkNombre  
        FROM productos, marcas  
        WHERE productos.idMarca = marcas.idMarca;


    SELECT destNombre, destPrecio, regNombre  
        FROM destinos, regiones  
        WHERE destinos.idRegion = regiones.idRegion;


    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
        FROM productos, marcas, categorias  
        WHERE productos.idMarca = marcas.idMarca  
         AND  productos.idCategoria = categorias.idCategoria;

## 2.- Table **JOIN**
> En técnica **JOIN** NO SE MENCIONAN 
> en el table list ( después del **FROM** )
> las tablas necesarias ( sólo se menciona la tabla principal )
> y utilizamos la palabra **JOIN** para mencionar la tabla secundaria
> y finalizamos igualamos la columna en común después
> de la palabra **ON**


> Sintáxis

    SELECT colTabla1, colTabla1, colTabla2    
        FROM tabla1  
        JOIN tabla2  
          ON tabla1.fk = tabla2.pk;

> Ejemplo práctico: 

    SELECT prdNombre, prdPrecio, mkNombre  
        FROM productos  
        JOIN marcas  
          ON productos.idMarca = marcas.idMarca;


    SELECT destNombre, destPrecio, regNombre  
        FROM destinos  
        JOIN regiones  
          ON destinos.idRegion = regiones.idRegion;


    SELECT prdNombre, prdPrecio, mkNombre, catNombre  
        FROM productos  
        JOIN marcas  
          ON marcas.idMarca = productos.idMarca  
        JOIN categorias  
          ON productos.idCategoria = categorias.idCategoria;

