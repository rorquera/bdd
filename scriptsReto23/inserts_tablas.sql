--USUARIO

INSERT INTO usuario
(cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES('11111', 'JUAN', 'PEREZ', 'AHORRO', 1000.00000);
INSERT INTO usuario
(cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES('12222', 'DANIEL', 'MAS', 'AHORRRO', 990.00000);
INSERT INTO usuario
(cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES('88888', 'JOSE', 'LULO', 'AHORRRO', 900.00000);
INSERT INTO usuario
(cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES('99999', 'MARCO', 'LOPEZ', 'AHORRRO', 850.00000);
INSERT INTO usuario
(cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES('77777', 'LUIS', 'KILL', 'AHORRRO', 800.00000);
INSERT INTO usuario
(cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES('66666', 'PEDRO', 'LOLO', 'CORRIENTE', 700.00000);
INSERT INTO usuario
(cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES('55555', 'PEPE', 'OLLA', 'CORRIENTE', 600.00000);
INSERT INTO usuario
(cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES('44444', 'LUISA', 'SACHA', 'CORRIENTE', 400.00000);
INSERT INTO usuario
(cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES('33333', 'ANA', 'HOYO', 'CORRIENTE', 500.00000);
INSERT INTO usuario
(cedula, nombre, apellido, tipo_cuenta, limite_credito)
VALUES('22222', 'MARIA', 'GIL', 'CORRIENTE', 900.00000);

--CLIENTES
INSERT INTO clientes
(cedula, nombre, apellido, edad)
VALUES('77000', 'ANA', 'MAS', 20);
INSERT INTO clientes
(cedula, nombre, apellido, edad)
VALUES('22222', 'RAUL', 'JIN', 30);
INSERT INTO clientes
(cedula, nombre, apellido, edad)
VALUES('33333', 'JHON', 'KAR', 40);
INSERT INTO clientes
(cedula, nombre, apellido, edad)
VALUES('12721', 'LUIS', 'LINO', 45);
INSERT INTO clientes
(cedula, nombre, apellido, edad)
VALUES('55555', 'PACO', 'OIL', 56);
INSERT INTO clientes
(cedula, nombre, apellido, edad)
VALUES('66666', 'MONICA', 'GRAM', 60);
INSERT INTO clientes
(cedula, nombre, apellido, edad)
VALUES('77777', 'LOLA', 'RAM', 78);
INSERT INTO clientes
(cedula, nombre, apellido, edad)
VALUES('88888', 'PAUL', 'MASA', 80);
INSERT INTO clientes
(cedula, nombre, apellido, edad)
VALUES('99999', 'JUAN', 'ASA', 90);
INSERT INTO clientes
(cedula, nombre, apellido, edad)
VALUES('12222', 'PEPE', 'ALO', 55);

--PRODUCTOS
INSERT INTO productos
(codigo, nombre, descripcion, precio, stock)
VALUES(123456, 'memory card', 'Memoria para guardar video juegos', $10,00, 100);
INSERT INTO productos
(codigo, nombre, descripcion, precio, stock)
VALUES(123416, 'cable de alimentacion ps5', 'Cable de energia para play station 5', $70,00, 200);
INSERT INTO productos
(codigo, nombre, descripcion, precio, stock)
VALUES(123459, 'ps4', 'Consola de video juegos play station 4', $4,00, 10);
INSERT INTO productos
(codigo, nombre, descripcion, precio, stock)
VALUES(123457, 'control generico', NULL, $15,00, 200);
INSERT INTO productos
(codigo, nombre, descripcion, precio, stock)
VALUES(123458, 'ps5', 'Consola de video juegos play station 5', $1.500,00, 0);
INSERT INTO productos
(codigo, nombre, descripcion, precio, stock)
VALUES(5, 'pedal', NULL, $200,00, 180);
INSERT INTO productos
(codigo, nombre, descripcion, precio, stock)
VALUES(4, 'volante', NULL, $150,00, 20);
INSERT INTO productos
(codigo, nombre, descripcion, precio, stock)
VALUES(3, 'simulador', 'simulador de vuelo', $500,00, 5);
INSERT INTO productos
(codigo, nombre, descripcion, precio, stock)
VALUES(2, 'camara', 'camara de video', $50,00, 10);
INSERT INTO productos
(codigo, nombre, descripcion, precio, stock)
VALUES(1, 'mouse', 'mouse para juego', $10,00, 50);

--VENTAS
INSERT INTO ventas
(id_venta, codigo_producto, fecha_venta, cantidad)
VALUES(1, 123456, '2000-03-29', 5);
INSERT INTO ventas
(id_venta, codigo_producto, fecha_venta, cantidad)
VALUES(2, 123416, '2000-08-30', 4);
INSERT INTO ventas
(id_venta, codigo_producto, fecha_venta, cantidad)
VALUES(3, 123459, '2023-08-29', 2);
INSERT INTO ventas
(id_venta, codigo_producto, fecha_venta, cantidad)
VALUES(4, 123457, '2010-05-15', 5);
INSERT INTO ventas
(id_venta, codigo_producto, fecha_venta, cantidad)
VALUES(5, 123457, '2019-08-15', 5);
INSERT INTO ventas
(id_venta, codigo_producto, fecha_venta, cantidad)
VALUES(6, 4, '2023-10-06', 5);
INSERT INTO ventas
(id_venta, codigo_producto, fecha_venta, cantidad)
VALUES(7, 4, '2023-08-29', 1);
INSERT INTO ventas
(id_venta, codigo_producto, fecha_venta, cantidad)
VALUES(8, 4, '2023-08-29', 10);
INSERT INTO ventas
(id_venta, codigo_producto, fecha_venta, cantidad)
VALUES(9, 5, '2023-07-29', 5);
INSERT INTO ventas
(id_venta, codigo_producto, fecha_venta, cantidad)
VALUES(10, 1, '2023-08-19', 7);

--VIDEOJUEGOS
INSERT INTO videojuegos
(codigo, nombre, descripcion, valoracion)
VALUES(62345, 'Tomb raider', NULL, 8);
INSERT INTO videojuegos
(codigo, nombre, descripcion, valoracion)
VALUES(82345, 'God of war', 'Mejor puntuado', 10);
INSERT INTO videojuegos
(codigo, nombre, descripcion, valoracion)
VALUES(22345, 'Resident evil 5', 'Mejor puntuado', 7);
INSERT INTO videojuegos
(codigo, nombre, descripcion, valoracion)
VALUES(5, 'Resident evil 4', 'Mejor puntuado', 10);
INSERT INTO videojuegos
(codigo, nombre, descripcion, valoracion)
VALUES(7, 'Castlevania curse of darkness', 'Mejor puntuado', 10);
INSERT INTO videojuegos
(codigo, nombre, descripcion, valoracion)
VALUES(72345, 'CMarvel super heroes', 'guerra', 9);
INSERT INTO videojuegos
(codigo, nombre, descripcion, valoracion)
VALUES(3, 'DMario kart', 'Mejor puntuado', 10);
INSERT INTO videojuegos
(codigo, nombre, descripcion, valoracion)
VALUES(4, 'Clash of titans', 'juego de Guerra', 10);
INSERT INTO videojuegos
(codigo, nombre, descripcion, valoracion)
VALUES(2, 'Dark', 'Terror', 10);
INSERT INTO videojuegos
(codigo, nombre, descripcion, valoracion)
VALUES(1, 'Don King Kong', 'juego de aventura', 10);

--estudiantes
INSERT INTO estudiantes
(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES('1234567890', 'Luis', 'Felix', 'lfelix@gmail.com', '1992-04-27', 1);
INSERT INTO estudiantes
(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES('1234567896', 'Monica', 'Santos', 'msantos@gmail.com', '1996-01-31', 1);
INSERT INTO estudiantes
(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES('1734567891', 'Ana', 'Hernández', 'araj@gmail.com', '1990-02-22', 2);
INSERT INTO estudiantes
(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES('1734567894', 'Bolivar', 'Hernández', 'bjarch@gmail.com', '2000-05-09', 2);
INSERT INTO estudiantes
(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES('1234567892', 'Juan', 'Perez', 'jperez@gmail.com', '2002-02-02', 3);
INSERT INTO estudiantes
(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES('1234563295', 'Marco', 'Puente', 'mpuente@gmail.com', '1990-01-22', 4);
INSERT INTO estudiantes
(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES('1231231234', 'Jaime', 'Ante', 'jante@hotmail.com', '1996-01-31', 5);
INSERT INTO estudiantes
(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES('1231231233', 'Oscar', 'Nowal', 'onowal@hotmail.com', '1996-01-31', 6);
INSERT INTO estudiantes
(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES('1231231232', 'Nando', 'Anny', 'nanny@hotmail.com', '1996-01-31', 7);
INSERT INTO estudiantes
(cedula, nombre, apellido, email, fecha_nacimiento, codigo_profesor)
VALUES('1231231231', 'Ren', 'Neils', 'rneils@hotmail.com', '1996-01-31', 7);

--profesores
INSERT INTO profesores
(codigo, nombre)
VALUES(10, 'Lala');
INSERT INTO profesores
(codigo, nombre)
VALUES(9, 'Mio');
INSERT INTO profesores
(codigo, nombre)
VALUES(8, 'Rua');
INSERT INTO profesores
(codigo, nombre)
VALUES(7, 'Rey');
INSERT INTO profesores
(codigo, nombre)
VALUES(6, 'Rosa');
INSERT INTO profesores
(codigo, nombre)
VALUES(5, 'Miguel');
INSERT INTO profesores
(codigo, nombre)
VALUES(4, 'Luis');
INSERT INTO profesores
(codigo, nombre)
VALUES(3, 'Francisco');
INSERT INTO profesores
(codigo, nombre)
VALUES(2, 'Francisco');
INSERT INTO profesores
(codigo, nombre)
VALUES(1, 'Juan');

--empleados
INSERT INTO empleado
(codigo_empleado, nombre, fecha, hora)
VALUES(10, 'LUISA', '2022-02-05', '10:00:00');
INSERT INTO empleado
(codigo_empleado, nombre, fecha, hora)
VALUES(9, 'LUCA', '2000-10-10', '09:00:00');
INSERT INTO empleado
(codigo_empleado, nombre, fecha, hora)
VALUES(8, 'RON', '2023-12-13', '08:00:00');
INSERT INTO empleado
(codigo_empleado, nombre, fecha, hora)
VALUES(7, 'RONY', '2013-08-06', '10:00:00');
INSERT INTO empleado
(codigo_empleado, nombre, fecha, hora)
VALUES(6, 'ROSA', '2022-02-05', '07:00:00');
INSERT INTO empleado
(codigo_empleado, nombre, fecha, hora)
VALUES(5, 'LUCAS', '1985-12-05', '10:00:00');
INSERT INTO empleado
(codigo_empleado, nombre, fecha, hora)
VALUES(4, 'JUAN', '2022-04-05', '08:00:00');
INSERT INTO empleado
(codigo_empleado, nombre, fecha, hora)
VALUES(3, 'ANA', '2000-02-14', '08:00:00');
INSERT INTO empleado
(codigo_empleado, nombre, fecha, hora)
VALUES(2201, 'MARCO', '1999-05-23', '09:00:00');
INSERT INTO empleado
(codigo_empleado, nombre, fecha, hora)
VALUES(1, 'LUIS', '1999-03-23', '10:00:00');

--registros_entrada
INSERT INTO registros_entrada
(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(10, '1231231230', '2023-08-02', '09:15:00', 2201);
INSERT INTO registros_entrada
(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(9, '1231231239', '2023-11-11', '12:00:00', 6);
INSERT INTO registros_entrada
(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(8, '1231231238', '2023-11-02', '11:00:00', 5);
INSERT INTO registros_entrada
(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(7, '1231231237', '2023-10-10', '11:00:00', 4);
INSERT INTO registros_entrada
(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(6, '1231231236', '2023-10-02', '10:00:00', 3);
INSERT INTO registros_entrada
(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(5, '1231231235', '2023-09-01', '10:00:00', 3);
INSERT INTO registros_entrada
(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(4, '1231231234', '2023-09-02', '08:08:00', 7);
INSERT INTO registros_entrada
(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(3, '1231231233', '2023-08-12', '08:05:00', 7);
INSERT INTO registros_entrada
(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(2, '1231231232', '2023-08-08', '08:05:00', 1);
INSERT INTO registros_entrada
(codigo_registro, cedula_empleado, fecha, hora, codigo_empleado)
VALUES(1, '1231231231', '2023-08-02', '08:01:00', 1);

--personas
INSERT INTO personas
(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
VALUES('1720238219', 'Rolando', 'Orquera', 1.75, '1985-03-29', '19:00:00', $100,00, 0, 'U');
INSERT INTO personas
(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
VALUES('1720238210', 'Leonardo', 'Orquera', 1.68, '1945-03-29', '19:00:00', $100,00, 0, 'C');
INSERT INTO personas
(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
VALUES('1820238219', 'Juan', 'Perez', 1.75, '1995-03-29', '19:00:00', $100,00, 0, 'U');
INSERT INTO personas
(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
VALUES('1231231237', 'Sean', 'Loto', NULL, '1985-03-29', '19:00:00', $200,00, 1, 'U');
INSERT INTO personas
(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
VALUES('1231231236', 'Luis', 'Ley', NULL, '1985-03-29', '19:00:00', $200,00, 1, 'U');
INSERT INTO personas
(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
VALUES('1231231255', 'Anton', 'Lux', NULL, '1985-03-29', '19:00:00', $200,00, 1, 'C');
INSERT INTO personas
(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
VALUES('1231231244', 'Lula', 'Lujs', NULL, '1985-03-29', '19:00:00', $100,00, 1, 'C');
INSERT INTO personas
(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
VALUES('1231231233', 'Lalo', 'Ren', NULL, '1985-03-29', '19:00:00', $100,00, 2, 'C');
INSERT INTO personas
(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
VALUES('1231231232', 'Rei', 'Real', NULL, '1985-03-29', '19:00:00', $100,00, 2, 'C');
INSERT INTO personas
(cedula, nombre, apellido, estatura, fecha_nacimiento, hora_nacimiento, cantidad_ahorrada, numero_hijos, estado_civil_codigo)
VALUES('1231231231', 'Marco', 'Roi', NULL, '1985-03-29', '19:00:00', $100,00, 1, 'C');

--prestamo
INSERT INTO prestamo
(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES('1231231233', $450,00, '2022-12-12', '10:00:00', 'Ana');
INSERT INTO prestamo
(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES('1231231244', $400,00, '2022-12-12', '10:00:00', 'Ana');
INSERT INTO prestamo
(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES('1231231255', $350,00, '2022-12-12', '10:00:00', 'Ana');
INSERT INTO prestamo
(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES('1231231236', $300,00, '2022-12-12', '10:00:00', 'Ana');
INSERT INTO prestamo
(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES('1231231237', $250,00, '2022-12-12', '10:00:00', 'Ana');
INSERT INTO prestamo
(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES('1820238219', $250,00, '2022-12-12', '10:00:00', 'Ana');
INSERT INTO prestamo
(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES('1720238210', $200,00, '2022-12-12', '10:00:00', 'Ana');
INSERT INTO prestamo
(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES('1231231232', $180,00, '2022-12-12', '10:00:00', 'Ana');
INSERT INTO prestamo
(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES('1231231231', $150,00, '2022-12-12', '10:00:00', 'Ana');
INSERT INTO prestamo
(cedula, monto, fecha_prestamo, hora_prestamo, garante)
VALUES('1720238219', $110,00, '2022-12-12', '10:00:00', 'Ana');

--banco
INSERT INTO banco
(codigo_banco, codigo_transaccion, detalle)
VALUES(11, 4, 'ninguno');
INSERT INTO banco
(codigo_banco, codigo_transaccion, detalle)
VALUES(9, 4, 'ninguno');
INSERT INTO banco
(codigo_banco, codigo_transaccion, detalle)
VALUES(8, 2, 'ninguno');
INSERT INTO banco
(codigo_banco, codigo_transaccion, detalle)
VALUES(7, 2, 'ninguno');
INSERT INTO banco
(codigo_banco, codigo_transaccion, detalle)
VALUES(6, 2, 'ninguno');
INSERT INTO banco
(codigo_banco, codigo_transaccion, detalle)
VALUES(5, 2, 'ninguno');
INSERT INTO banco
(codigo_banco, codigo_transaccion, detalle)
VALUES(4, 1, 'ninguno');
INSERT INTO banco
(codigo_banco, codigo_transaccion, detalle)
VALUES(3, 1, 'ninguno');
INSERT INTO banco
(codigo_banco, codigo_transaccion, detalle)
VALUES(2, 1, 'ninguno');
INSERT INTO banco
(codigo_banco, codigo_transaccion, detalle)
VALUES(1, 1, 'ninguno');