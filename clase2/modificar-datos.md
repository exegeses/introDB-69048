# Modificación de datos de una tabla

> Para modificar datos de una tabla
> utilizamos el comando **UPDATE** 

> Sintáxis: 

    UPDATE nobreTabla  
        SET  nombreColumna = valor  
      WHERE colID = valorID;  

> Ejemplo práctico: 

    UPDATE personas  
        SET apellido = 'Gonzáles'  
      WHERE id = 2;


    UPDATE personas  
        SET apellido = 'González',  
            alta = '2005-08-30'
      WHERE id = 2;
