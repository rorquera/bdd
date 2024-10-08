--RELACION CUENTAS USUARIO
SELECT
	MONEY (AVG(SALDO::NUMERIC)) SALDO_PROMEDIO
FROM
	CUENTAS
WHERE
	CEDULA_PROPIETARIO = '33333'

SELECT
	US.TIPO_CUENTA,
	COUNT(US.TIPO_CUENTA) TOTAL_CUENTAS
FROM
	CUENTAS CU,
	USUARIO US
WHERE
	CU.CEDULA_PROPIETARIO = US.CEDULA
GROUP BY
	US.TIPO_CUENTA

--RELACION CLIENTES COMPRAS
SELECT
	CL.CEDULA,
	SUM(MONTO) MONTO_TOTAL_COMPRAS
FROM
	CLIENTES CL,
	COMPRAS CO
WHERE
	CL.CEDULA = CO.CEDULA
GROUP BY
	CL.CEDULA


SELECT
	CO.FECHA_COMPRA,
	COUNT(ID_COMPRA)
FROM
	CLIENTES CL,
	COMPRAS CO
WHERE
	CL.CEDULA = CO.CEDULA
	AND CO.FECHA_COMPRA = '"2023-05-21"'
GROUP BY
	CL.CEDULA,
	CO.FECHA_COMPRA


-- RELACION ESTUDIANTES PROFESOR
SELECT
	PR.CODIGO CODIGO_PROFESOR,
	COUNT(ES.CEDULA) TOTAL_ESTUDIANTES
FROM
	ESTUDIANTES ES,
	PROFESORES PR
WHERE
	ES.CODIGO_PROFESOR = PR.CODIGO
GROUP BY
	PR.CODIGO


SELECT
	ROUND(
		AVG(
			EXTRACT(
				YEAR
				FROM
					CURRENT_DATE
			) - EXTRACT(
				YEAR
				FROM
					ES.FECHA_NACIMIENTO
			)
		)
	) EDAD_PROMEDIO
FROM
	ESTUDIANTES ES,
	PROFESORES PR
WHERE
	ES.CODIGO_PROFESOR = PR.CODIGO


--RELACION PERSONA PRESTAMO
SELECT
	PR.CEDULA,
	SUM(PR.MONTO) MONTO_TOTAL_PRESTAMOS
FROM
	PERSONAS PE,
	PRESTAMO PR
WHERE
	PE.CEDULA = PR.CEDULA
GROUP BY
	PR.CEDULA


SELECT
	COUNT(PR.CEDULA) TOTAL_PERSONAS
FROM
	PERSONAS PE,
	PRESTAMO PR
WHERE
	PE.CEDULA = PR.CEDULA
	AND PE.NUMERO_HIJOS > 1

--RELACION PRODUCTOS Y VENTAS
SELECT
	MAX(PR.PRECIO) PRECIO_MAXIMO
FROM
	PRODUCTOS PR

SELECT
	SUM(VE.CANTIDAD) CATIDAD_TOTAL_VENDIDA
FROM
	PRODUCTOS PR,
	VENTAS VE
WHERE
	PR.CODIGO = VE.CODIGO_PRODUCTO

--RELACION TRANSACCIONES BANCO
SELECT
	COUNT(TR.CODIGO)
FROM
	TRANSACCIONES TR
WHERE
	TR.TIPO = 'C'


SELECT
	TR.NUMERO_CUENTA,
	ROUND(AVG(TR.MONTO::NUMERIC)) MONTO_PROMEDIO
FROM
	TRANSACCIONES TR,
	BANCO BA
WHERE
	TR.CODIGO = BA.CODIGO_TRANSACCION
GROUP BY
	TR.NUMERO_CUENTA

--RELACION VIDEOJUEGOS PLATAFORMAS
SELECT
	VI.CODIGO CODIGO_VIDEOJUEGO,
	COUNT(PL.ID_PLATAFORMA) TOTAL_PLATAFORMAS
FROM
	VIDEOJUEGOS VI,
	PLATAFORMAS PL
WHERE
	VI.CODIGO = PL.CODIGO_VIDEOJUEGO
GROUP BY
	VI.CODIGO


SELECT
	ROUND(AVG(VI.valoracion),2)
FROM
	VIDEOJUEGOS VI

--REGISTROS ENTRADA EMPLEADO
SELECT
	RE.CEDULA_EMPLEADO,
	COUNT(RE.CODIGO_REGISTRO) TOTAL_REGISTROS_ENTRADA
FROM
	EMPLEADO EM,
	REGISTROS_ENTRADA RE
WHERE
	RE.CODIGO_EMPLEADO = EM.CODIGO_EMPLEADO
GROUP BY
	EM.CODIGO_EMPLEADO,
	RE.CEDULA_EMPLEADO


SELECT
	MIN(RE.FECHA) FECHA_MINIMA,
	MAX(RE.FECHA) FECHA_MAXIMA
FROM
	EMPLEADO EM,
	REGISTROS_ENTRADA RE
WHERE
	RE.CODIGO_EMPLEADO = EM.CODIGO_EMPLEADO