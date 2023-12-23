# Consulta a través de una tabla intermedia

-- Traer nombre de producto de la tabla productos
-- Traer nombre de proveedor de la tabla proveedores

SELECT prdNombre AS Producto,
       prvNombre AS Proveedor
    FROM productos_proveedores
    JOIN productos
      ON productos_proveedores.idProducto = productos.idProducto
    JOIN proveedores
      ON productos_proveedores.idProveedor = proveedores.idProveedor
    ORDER BY productos.idProducto;
