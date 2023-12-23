# Vistas

-- Una vista es una consulta que podemos almacenar
-- dentro de nuestra base de datos

/*** Parece una tabla temporal pero no lo es ***/
CREATE VIEW consultas_precios
    AS
    SELECT  idProducto AS ID,
            prdNombre AS Producto,
            prdPrecio AS Precio,
            prdPrecio * 1.05 AS 'Precio Nuevo',
            mkNombre AS Marca,
            catNombre AS Categoría
    FROM productos AS p
             JOIN marcas AS m
                  ON m.idMarca = p.idMarca
             JOIN categorias AS c
                  ON p.idCategoria = c.idCategoria
    ORDER BY ID;