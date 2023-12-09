# Relaciones a dos o más tablas

> Si queremos traer datos de dos o más tablas
> tenemos dos técnicas para lograrlo

## 1.- Table relation

> Sintáxis  

    SELECT colTabla1, colTabla1, colTabla2  
        FROM tabla1, tabla2  
      WHERE tabla1.fk = tabla2.pk
