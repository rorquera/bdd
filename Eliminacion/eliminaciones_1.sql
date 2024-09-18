--PRODUCTOS
DELETE FROM PRODUCTOS
WHERE
	DESCRIPCION IS NULL;

--CUENTAS
DELETE FROM CUENTAS
WHERE
	CEDULA_PROPIETARIO LIKE '10%';

--ESTUDIANTES
DELETE FROM ESTUDIANTES
WHERE
	ESTUDIANTES.CEDULA LIKE '%05';

--REGISTRO_ENTRADA
DELETE FROM REGISTROS_ENTRADA
WHERE
	EXTRACT(
		MONTH
		FROM
			FECHA
	) = 6;

--VIDEOJUEGOS
DELETE FROM VIDEOJUEGOS
WHERE
	VALORACION < 7;

--TRANSACCIONES
DELETE FROM TRANSACCIONES
WHERE
	HORA BETWEEN '14:00' AND '18:00'
	AND EXTRACT(
		MONTH
		FROM
			FECHA
	) = 8
	AND EXTRACT(
		YEAR
		FROM
			FECHA
	) = 2024