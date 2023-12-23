-- Left sería la primera tabla mencionada
SELECT nombre, apellido, departamento
 FROM empleados
 LEFT JOIN departamentos
    ON empleados.idDepartamento = departamentos.idDepartamento;

-- Aparecen todos los empleadoAparecen todos los empleados
-- incluso los que no tienen un departamento asignado



-- RIGHT sería la segunda tabla mencionada
SELECT nombre, apellido, departamento
 FROM empleados
 RIGHT JOIN departamentos
 ON empleados.idDepartamento = departamentos.idDepartamento;

-- Aparecen todos los departamentos
-- incluso los que no tienen un empleado asignado
