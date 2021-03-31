-- 01 muestra todo los empleados registrados
SELECT * FROM EMPLEADO;

-- 02 muestra todos los departamentos registrados
SELECT * FROM DEPARTAMENTO;

-- 03 muestra los cargos de los empleados
SELECT CARGO FROM EMPLEADO;

-- 04 muestra cargos de los empleados ordenados por cargo
SELECT CARGO FROM EMPLEADO ORDER BY CARGO;

-- 05 muestra los distintos cargos de los empleados
SELECT DISTINCT CARGO FROM EMPLEADO;

-- 06 muestra el nombre,sueldo de los empleados
SELECT NOMBRE,SUELDO FROM EMPLEADO;

-- 07 muestra las denominaciones de los departamentos
SELECT DENOMINACION FROM DEPARTAMENTO;

-- 08 muestra las denominaciones de departamento ordenado por denominacion
SELECT DENOMINACION FROM DEPARTAMENTO ORDER BY DENOMINACION;

-- 09 muestra las denominaciones de departamento ordenadas por localidad
SELECT DENOMINACION FROM DEPARTAMENTO ORDER BY LOCALIDAD;

-- 10 muestra las denominaciones del departamento ordenadas por localidad de manera descendiente
SELECT DENOMINACION FROM DEPARTAMENTO ORDER BY LOCALIDAD DESC;

-- 11 muestra nombre,cargo de los empleados ordenados por el sueldo
SELECT NOMBRE,CARGO FROM EMPLEADO ORDER BY SUELDO;

--12 muestra nombre,cargo de los empleados ordenanos por cargo y sueldo
SELECT NOMBRE,CARGO FROM EMPLEADO ORDER BY CARGO,SUELDO;

--13 muestra denominacion de los departamentos ordenados por localidad de manera descendiente
SELECT DENOMINACION FROM DEPARTAMENTO ORDER BY LOCALIDAD DESC;

--14 muestra sueldo, comision de empleados donde el identificador del departamento sea igual a 30
SELECT SUELDO,COMISION FROM EMPLEADO WHERE ID_DPTO=30;

--15 mostrar todas las comisiones de los empleados
SELECT COMISION FROM EMPLEADO;

--16 mostrar las distintas comisiones y nombres de los empleados
SELECT DISTINCT COMISION,NOMBRE FROM EMPLEADO;

--17 mostrar los distintos sueldos y nombres de los empleados
SELECT DISTINCT SUELDO,NOMBRE FROM EMPLEADO;

--18 mostrar las comisiones e identificador de departamento de los empleados 
SELECT DISTINCT COMISION,ID_DPTO FROM EMPLEADO;

--19 mostrar nombre de los empleados donde la comision sea mayor a la mitad del sueldo
SELECT NOMBRE FROM EMPLEADO WHERE COMISION>SUELDO/2;

--20 mostrar nombre de los empleados donde la comision sea menor o igual al 25% del sueldo
SELECT NOMBRE FROM EMPLEADO WHERE COMISION <= SUELDO*0.25;

--21 mostrar sueldo,comision de los empleados donde identificador de empleado sea mayor que 7500
SELECT SUELDO,COMISION FROM EMPLEADO WHERE ID_EMPLEADO>7500;

--22 mostrar sueldo, comision y la suma de ellos de los empleados donde comision no sea nula y ordenarlo por el identificador del empleado
SELECT SUELDO,COMISION,(SUELDO+COMISION) FROM EMPLEADO WHERE COMISION IS NOT NULL ORDER BY ID_EMPLEADO;

--23 mostrar sueldo,comision y la suma de ellos de los empleados donde comision sea null y ordenarlo por el identificador del empleado
SELECT SUELDO,COMISION,(SUELDO+0) FROM EMPLEADO WHERE COMISION IS NULL ORDER BY ID_EMPLEADO;

--24 mostrar el nombre de los empleados donde sueldo sea mayor a 1000 y el jefe del empleado sea 7698
SELECT NOMBRE FROM EMPLEADO WHERE SUELDO > 1000 AND JEFE=7698;

--25 mostrar el porcentaje que representa la comision en base al sueldo
SELECT NOMBRE,(COMISION/SUELDO*100) FROM EMPLEADO ORDER BY NOMBRE;

--26 mostrar los empleados del dpto 10 cuyo nombre contenga la cadena LA
SELECT NOMBRE FROM EMPLEADO WHERE ID_DPTO=10 AND NOMBRE NOT LIKE '%LA%';

--27 mostrar los empleados que no tengan jefe
SELECT NOMBRE FROM EMPLEADO WHERE JEFE IS NULL;

--28 mostrar el nombre del departamento donde sea distinto el id del dpto de 30 y 20
SELECT DENOMINACION FROM DEPARTAMENTO WHERE ID_DPTO!=30 AND ID_DPTO!= 20;

--29 mostrar el nombre,id departamento donde el id del departamento sea distinto a 10 y el sueldo mayor que 800, ordenar por fecha
SELECT EMPLEADO.NOMBRE,DEPARTAMENTO.DENOMINACION FROM EMPLEADO,DEPARTAMENTO  WHERE EMPLEADO.ID_DPTO=DEPARTAMENTO.ID_DPTO AND EMPLEADO.ID_DPTO !=10 AND EMPLEADO.SUELDO>800 ORDER BY EMPLEADO.FECHA_NAC; 

--30 mostrar los nombres con 5 caracteres
SELECT NOMBRE FROM EMPLEADO WHERE LENGTH(NOMBRE)=5;

--31 mostrar los nombres y fechas de ingreso donde sea distinto al cargo de vendedores
SELECT NOMBRE,FECHA_NAC FROM EMPLEADO WHERE ID_DPTO!=10;

--32 ordenar los empleados por identificador del departamento y tambien por el id del empleado de forma descendente
SELECT * FROM EMPLEADO ORDER BY ID_DPTO ,ID_EMPLEADO DESC;

--33 mostrar el mayor sueldo y quien lo percibe
SELECT NOMBRE,SUELDO FROM EMPLEADO WHERE SUELDO=(SELECT MAX(SUELDO) FROM EMPLEADO);

--34 mostrar el numero de empleados
SELECT COUNT(*) FROM EMPLEADO;

--35 mostrar el salario mas alto y mas bajo y la diferencia de ellos 
SELECT MAX(SUELDO),MIN(SUELDO),MAX(SUELDO)-MIN(SUELDO) FROM EMPLEADO;

--36 mostrar la media del salario de la empresa
SELECT AVG(SUELDO) FROM EMPLEADO;

--37 mostrar empleados cuyo salario supere o coincida  con la media de la empresa
SELECT NOMBRE FROM EMPLEADO WHERE SUELDO>=(SELECT AVG(SUELDO) FROM EMPLEADO) ;

--38 mostrar cargos distintos, nombres y la suma de los sueldos en el departamento 30
SELECT COUNT( DISTINCT CARGO),COUNT(DISTINCT NOMBRE),SUM(SUELDO) FROM  EMPLEADO WHERE ID_DPTO=30;

--39 contar empleados del departamento 30
SELECT COUNT(*) FROM EMPLEADO WHERE ID_DPTO=30;

--40 mostrar departamentos con mas de 3 empleados y la cantidad de empleados
SELECT ID_DPTO,COUNT(NOMBRE) FROM EMPLEADO GROUP BY ID_DPTO HAVING COUNT(NOMBRE)>3;

--41 mostrar los empleados que tienen por lo menos un empleado a su mando
SELECT JEFE AS "TRABAJADOR",COUNT(*) AS "N° EMPLEADO A SU GARGO" FROM EMPLEADO GROUP BY JEFE HAVING COUNT(JEFE)>1;

--42 mostrar informacion de los empleados que tengan el mismo trabajo que los empleados que trabajan en nueva esparta
SELECT DISTINCT * FROM EMPLEADO,DEPARTAMENTO WHERE DEPARTAMENTO.ID_DPTO = EMPLEADO.ID_DPTO AND EMPLEADO.ID_DPTO!=10  AND EMPLEADO.CARGO IN (SELECT CARGO FROM EMPLEADO WHERE EMPLEADO.ID_DPTO=10);

--43 mostrar la suma de los salarios de cada departamento
SELECT ID_DPTO,SUM(SUELDO) FROM EMPLEADO GROUP BY ID_DPTO;

--44 mostrar todos los departamentos sin empleados'
SELECT DEPARTAMENTO.ID_DPTO FROM DEPARTAMENTO WHERE DEPARTAMENTO.ID_DPTO  NOT IN(SELECT EMPLEADO.ID_DPTO FROM EMPLEADO,DEPARTAMENTO WHERE EMPLEADO.ID_DPTO = DEPARTAMENTO.ID_DPTO);

--45 mostrar los empleados que trabajan de Caracas o Barinas
SELECT * FROM EMPLEADO,DEPARTAMENTO WHERE EMPLEADO.ID_DPTO = DEPARTAMENTO.ID_DPTO AND EMPLEADO.ID_DPTO IN (SELECT DEPARTAMENTO.ID_DPTO FROM DEPARTAMENTO WHERE DEPARTAMENTO.LOCALIDAD='Caracas' or DEPARTAMENTO.LOCALIDAD='Barinas');
