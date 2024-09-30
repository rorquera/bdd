--usuario y cuentas
SELECT
	CU.NUMERO_CUENTA,
	US.NOMBRE
FROM
	CUENTAS CU,
	USUARIO US
WHERE
	CU.CEDULA_PROPIETARIO = US.CEDULA
	AND CU.SALDO BETWEEN MONEY (100) AND MONEY  (1000);

SELECT
	CU.NUMERO_CUENTA,
	CU.FECHA_CREACION,
	CU.SALDO,
	CU.CEDULA_PROPIETARIO CEDULA
FROM
	CUENTAS CU,
	USUARIO US
WHERE
	CU.CEDULA_PROPIETARIO = US.CEDULA
	AND CU.FECHA_CREACION in (
		SELECT
			FECHA_CREACION
		FROM
			CUENTAS
		WHERE
			FECHA_CREACION BETWEEN '21/09/2022' AND '21/09/2023'
	);

--clientes y compras
SELECT
	CLI.NOMBRE,
	CLI.APELLIDO
FROM
	CLIENTES CLI,
	COMPRAS COM
WHERE
	CLI.CEDULA = COM.CEDULA
	AND CLI.CEDULA LIKE '%7%';

SELECT
	CLI.*
FROM
	CLIENTES CLI,
	COMPRAS COM
WHERE
	CLI.CEDULA = COM.CEDULA
	AND CLI.CEDULA = (
		SELECT
			CEDULA
		FROM
			CLIENTES
		WHERE
			UPPER(NOMBRE) = 'MONICA'
	);

--estudiantes y profesores
SELECT
	PRO.CODIGO,
	EST.NOMBRE,
	EST.APELLIDO
FROM
	ESTUDIANTES EST,
	PROFESORES PRO
WHERE
	EST.CODIGO_PROFESOR = PRO.CODIGO
	AND EST.APELLIDO LIKE '%n%';

SELECT
	EST.CEDULA,
	EST.NOMBRE,
	EST.APELLIDO,
	EST.EMAIL,
	EST.FECHA_NACIMIENTO,
	EST.CODIGO_PROFESOR
FROM
	ESTUDIANTES EST,
	PROFESORES PRO
WHERE
	EST.CODIGO_PROFESOR = PRO.CODIGO
	AND EST.CODIGO_PROFESOR IN (
		SELECT
			CODIGO
		FROM
			PROFESORES
		WHERE
			UPPER(NOMBRE) = 'FRANCISCO'
	);

--persona y prestamo
SELECT
	PER.CANTIDAD_AHORRADA,
	PRE.MONTO,
	PRE.GARANTE
FROM
	PERSONAS PER,
	PRESTAMO PRE
WHERE
	PER.CEDULA = PRE.CEDULA
	AND PRE.MONTO BETWEEN MONEY (100) AND MONEY  (1000);

SELECT
	PER.CEDULA,
	PER.NOMBRE,
	PER.APELLIDO,
	PER.ESTATURA,
	PER.ESTATURA,
	PER.FECHA_NACIMIENTO,
	PER.HORA_NACIMIENTO,
	PER.CANTIDAD_AHORRADA,
	PER.NUMERO_HIJOS,
	PER.ESTADO_CIVIL_CODIGO
FROM
	PERSONAS PER,
	PRESTAMO PRE
WHERE
	PER.CEDULA = PRE.CEDULA
	AND PER.CEDULA = (
		SELECT
			CEDULA
		FROM
			PERSONAS
		WHERE
			UPPER(NOMBRE) = 'SEAN'
	);

--producto y ventas
SELECT
	PRO.NOMBRE,
	PRO.STOCK,
	VEN.CANTIDAD
FROM
	PRODUCTOS PRO,
	VENTAS VEN
WHERE
	PRO.CODIGO = VEN.CODIGO_PRODUCTO
	AND PRO.NOMBRE LIKE '%m%'
	OR LENGTH(PRO.DESCRIPCION) = 0;

SELECT
	PRO.NOMBRE,
	PRO.STOCK
FROM
	PRODUCTOS PRO,
	VENTAS VEN
WHERE
	PRO.CODIGO = VEN.CODIGO_PRODUCTO
	AND PRO.CODIGO IN (
		SELECT
			CODIGO_PRODUCTO
		FROM
			VENTAS
		WHERE
			CANTIDAD = 5
	);

--transacciones y banco
SELECT
	TRA.CODIGO,
	TRA.NUMERO_CUENTA,
	TRA.MONTO,
	TRA.TIPO,
	TRA.FECHA,
	TRA.HORA,
	BAN.CODIGO_BANCO,
	BAN.CODIGO_TRANSACCION,
	BAN.DETALLE
FROM
	TRANSACCIONES TRA,
	BANCO BAN
WHERE
	TRA.CODIGO = BAN.CODIGO_TRANSACCION
	AND TRA.TIPO = 'C'
	AND TRA.NUMERO_CUENTA BETWEEN '22001' AND '22004';

SELECT
	TRA.CODIGO,
	TRA.NUMERO_CUENTA,
	TRA.MONTO,
	TRA.TIPO,
	TRA.FECHA,
	TRA.HORA
FROM
	TRANSACCIONES TRA,
	BANCO BAN
WHERE
	TRA.CODIGO = BAN.CODIGO_TRANSACCION
	AND TRA.CODIGO = (
		SELECT DISTINCT
			CODIGO_TRANSACCION
		FROM
			BANCO
		WHERE
			CODIGO_TRANSACCION = 1
	);

--videojuego y plataformas
SELECT
	VID.CODIGO,
	VID.NOMBRE,
	VID.DESCRIPCION,
	VID.VALORACION,
	PLA.ID_PLATAFORMA,
	PLA.NOMBRE_PLATAFORMA,
	PLA.CODIGO_VIDEOJUEGO
FROM
	VIDEOJUEGOS VID,
	PLATAFORMAS PLA
WHERE
	VID.CODIGO = PLA.CODIGO_VIDEOJUEGO
	AND (
		(
			UPPER(VID.DESCRIPCION) LIKE '%GUERRA%'
			AND VID.VALORACION > 7
		)
		OR (
			UPPER(VID.NOMBRE) LIKE 'C%'
			AND VID.VALORACION > 8
			AND UPPER(VID.NOMBRE) LIKE 'D%'
		)
	);

SELECT
	VID.NOMBRE,
	PLA.ID_PLATAFORMA,
	PLA.NOMBRE_PLATAFORMA,
	PLA.CODIGO_VIDEOJUEGO
FROM
	VIDEOJUEGOS VID,
	PLATAFORMAS PLA
WHERE
	VID.CODIGO = PLA.CODIGO_VIDEOJUEGO
	AND VID.CODIGO = (
		SELECT
			CODIGO
		FROM
			VIDEOJUEGOS
		WHERE
			UPPER(NOMBRE) = 'GOD OF WAR'
	);

--registro de entrada y empleado
SELECT
	RE.CEDULA_EMPLEADO,
	RE.FECHA,
	EM.NOMBRE
FROM
	REGISTROS_ENTRADA RE,
	EMPLEADO EM
WHERE
	RE.CODIGO_EMPLEADO = EM.CODIGO_EMPLEADO
	AND (
		(RE.FECHA BETWEEN '01/08/2023' AND '31/08/2023')
		OR (
			RE.CEDULA_EMPLEADO LIKE '17%'
			AND RE.HORA BETWEEN '08:00' AND '12:00'
		)
		OR (
			RE.FECHA BETWEEN '06/10/2023' AND '20/10/2023'
			AND RE.CEDULA_EMPLEADO LIKE '08%'
			AND RE.HORA BETWEEN '09:00' AND '13:00'
		)
	);

SELECT
	RE.CODIGO_REGISTRO,
	EM.NOMBRE
FROM
	REGISTROS_ENTRADA RE,
	EMPLEADO EM
WHERE
	RE.CODIGO_EMPLEADO = EM.CODIGO_EMPLEADO
	AND RE.CODIGO_REGISTRO = (
		SELECT
			CODIGO_REGISTRO
		FROM
			REGISTROS_ENTRADA
		WHERE
			CEDULA_EMPLEADO = '2201'
	);