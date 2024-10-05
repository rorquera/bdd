--Relación muchos a muchos entre usuarios y grupo
SELECT
	US.NOMBRE NOMBRE_USUARIO,
	GR.NOMBRE NOMBRE_GRUPO
FROM
	PUBLIC.USUARIOS US,
	PUBLIC.GRUPO GR,
	PUBLIC.USUARIO_GRUPO UG
WHERE
	US.ID = UG.US_ID
	AND UG.GR_ID = GR.ID


SELECT
	US.NOMBRE NOMBRE_USUARIO
FROM
	PUBLIC.USUARIOS US
WHERE
	US.ID IN (
		SELECT
			US_ID
		FROM
			PUBLIC.USUARIO_GRUPO
		WHERE
			GR_ID = 1
	)


SELECT
	GR.NOMBRE NOMBRE_GRUPO,
	COUNT(UG.US_ID) CANTIDAD_USUARIOS
FROM
	PUBLIC.GRUPO GR,
	PUBLIC.USUARIO_GRUPO UG
WHERE
	UG.GR_ID = GR.ID
GROUP BY
	GR.NOMBRE



SELECT
	US.NOMBRE NOMBRE_USUARIO,
	GR.NOMBRE NOMBRE_GRUPO
FROM
	PUBLIC.USUARIOS US,
	PUBLIC.GRUPO GR,
	PUBLIC.USUARIO_GRUPO UG
WHERE
	US.ID = UG.US_ID
	AND UG.GR_ID = GR.ID
	AND GR.NOMBRE LIKE '%intensivo%'



SELECT
	US.NOMBRE NOMBRE_USUARIO
FROM
	PUBLIC.USUARIOS US
WHERE
	US.ID IN (
		SELECT
			US_ID
		FROM
			PUBLIC.USUARIO_GRUPO
		WHERE
			GR_ID = 2
	)


SELECT
	GR.NOMBRE NOMBRE_GRUPO,
	MAX(UG.US_ID) VALOR_MAXIMO,
	MIN(UG.US_ID) VALOR_MINIMO
FROM
	PUBLIC.GRUPO GR,
	PUBLIC.USUARIO_GRUPO UG
WHERE
	UG.GR_ID = GR.ID
GROUP BY
	GR.NOMBRE


SELECT
	US.NOMBRE NOMBRE_USUARIO,
	GR.FECHA_CREACION
FROM
	PUBLIC.USUARIOS US,
	PUBLIC.GRUPO GR,
	PUBLIC.USUARIO_GRUPO UG
WHERE
	US.ID = UG.US_ID
	AND UG.GR_ID = GR.ID
	AND GR.FECHA_CREACION BETWEEN '2020-03-08' AND '2022-03-08'


SELECT
	US.NOMBRE NOMBRE_USUARIO
FROM
	PUBLIC.USUARIOS US
WHERE
	US.ID IN (
		SELECT
			US_ID
		FROM
			PUBLIC.USUARIO_GRUPO
		WHERE
			GR_ID = 3
	)


SELECT
	GR.DESCRIPCION DESCRIPCION,
	COUNT(UG.US_ID) CANTIDAD_ID
FROM
	PUBLIC.GRUPO GR,
	PUBLIC.USUARIO_GRUPO UG
WHERE
	UG.GR_ID = GR.ID
	AND GR.DESCRIPCION LIKE '%matutino%'
GROUP BY
	GR.DESCRIPCION


--Relación muchos a muchos entre habitaciones y huéspedes

SELECT
	HA.HABITACION_NUMERO,
	HU.NOMBRES,
	HU.APELLIDOS
FROM
	PUBLIC.HABITACIONES HA,
	PUBLIC.HUESPEDES HU,
	PUBLIC.RESERVAS RE
WHERE
	HA.HABITACION_NUMERO = RE.HABITACION_ID
	AND RE.HUESPED_ID = HU.ID


SELECT
	HU.NOMBRES,
	HU.APELLIDOS
FROM
	PUBLIC.HUESPEDES HU
WHERE
	HU.ID IN (
		SELECT
			HUESPED_ID
		FROM
			RESERVAS
		WHERE
			HABITACION_ID = 2
	)


SELECT
	HA.HABITACION_NUMERO,
	COUNT(RE.HUESPED_ID) CANTIDAD_HUESPEDES
FROM
	PUBLIC.RESERVAS RE,
	PUBLIC.HABITACIONES HA
WHERE
	RE.HABITACION_ID = HA.HABITACION_NUMERO
GROUP BY
	HA.HABITACION_NUMERO


SELECT
	HA.HABITACION_NUMERO,
	HA.PISO,
	HU.NOMBRES,
	HU.APELLIDOS
FROM
	PUBLIC.HABITACIONES HA,
	PUBLIC.HUESPEDES HU,
	PUBLIC.RESERVAS RE
WHERE
	HA.HABITACION_NUMERO = RE.HABITACION_ID
	AND RE.HUESPED_ID = HU.ID
	AND HA.PISO = 4


SELECT
	HU.NOMBRES,
	HU.APELLIDOS
FROM
	PUBLIC.HUESPEDES HU
WHERE
	HU.ID IN (
		SELECT
			HUESPED_ID
		FROM
			RESERVAS
		WHERE
			HABITACION_ID = 3
	)


SELECT
	HA.HABITACION_NUMERO,
	ROUND(AVG(RE.HUESPED_ID),2) PROMEDIO
FROM
	PUBLIC.RESERVAS RE,
	PUBLIC.HABITACIONES HA
WHERE
	RE.HABITACION_ID = HA.HABITACION_NUMERO
GROUP BY
	HA.HABITACION_NUMERO


SELECT
	HA.HABITACION_NUMERO,
	HU.NOMBRES,
	HU.APELLIDOS
FROM
	PUBLIC.HABITACIONES HA,
	PUBLIC.HUESPEDES HU,
	PUBLIC.RESERVAS RE
WHERE
	HA.HABITACION_NUMERO = RE.HABITACION_ID
	AND RE.HUESPED_ID = HU.ID



SELECT
	HU.NOMBRES,
	HU.APELLIDOS
FROM
	PUBLIC.HUESPEDES HU
WHERE
	HU.ID IN (
		SELECT
			HUESPED_ID
		FROM
			RESERVAS
		WHERE
			HABITACION_ID = 4
	)


SELECT
	HA.HABITACION_NUMERO,
	SUM(HA.PRECIO_POR_NOCHE) TOTAL_PRECIO_NOCHE
FROM
	PUBLIC.RESERVAS RE,
	PUBLIC.HABITACIONES HA
WHERE
	RE.HABITACION_ID = HA.HABITACION_NUMERO
GROUP BY
	HA.HABITACION_NUMERO

--Relación muchos a muchos entre municipio y proyectos

SELECT
	MU.NOMBRE,
	PR.PROYECTO
FROM
	PUBLIC.MUNICIPIO MU,
	PUBLIC.PROYECTO PR,
	PUBLIC.PROYECTO_MUNICIPIO PM
WHERE
	MU.ID = PM.MUNICIPIO_ID
	AND PR.ID = PM.PROYECTO_ID


SELECT
	PR.PROYECTO
FROM
	PUBLIC.PROYECTO PR
WHERE
	ID IN (
		SELECT
			PROYECTO_ID
		FROM
			PUBLIC.PROYECTO_MUNICIPIO
		WHERE
			MUNICIPIO_ID = 1
	)


SELECT
	MU.NOMBRE,
	COUNT(PM.PROYECTO_ID)
FROM
	PUBLIC.MUNICIPIO MU,
	PUBLIC.PROYECTO_MUNICIPIO PM
WHERE
	MU.ID = PM.MUNICIPIO_ID
GROUP BY
	MU.NOMBRE


SELECT
	MU.NOMBRE,
	PR.PROYECTO
FROM
	PUBLIC.MUNICIPIO MU,
	PUBLIC.PROYECTO PR,
	PUBLIC.PROYECTO_MUNICIPIO PM
WHERE
	MU.ID = PM.MUNICIPIO_ID
	AND PR.ID = PM.PROYECTO_ID
	AND MU.NOMBRE LIKE '%GAD%'


SELECT
	MU.NOMBRE,
	MIN(PM.PROYECTO_ID)
FROM
	PUBLIC.MUNICIPIO MU,
	PUBLIC.PROYECTO_MUNICIPIO PM
WHERE
	MU.ID = PM.MUNICIPIO_ID
GROUP BY
	MU.NOMBRE


SELECT
	MU.NOMBRE,
	CI.NOMBRE
FROM
	PUBLIC.MUNICIPIO MU,
	PUBLIC.CIUDAD CI
WHERE
	MU.CIUDAD_ID = CI.ID


SELECT
	PR.PROYECTO
FROM
	PUBLIC.PROYECTO PR
WHERE
	ID IN (
		SELECT
			PROYECTO_ID
		FROM
			PUBLIC.PROYECTO_MUNICIPIO
		WHERE
			MUNICIPIO_ID = 3
	)


SELECT
	MU.NOMBRE,
	MAX(PM.PROYECTO_ID)
FROM
	PUBLIC.MUNICIPIO MU,
	PUBLIC.PROYECTO_MUNICIPIO PM
WHERE
	MU.ID = PM.MUNICIPIO_ID
GROUP BY
	MU.NOMBRE