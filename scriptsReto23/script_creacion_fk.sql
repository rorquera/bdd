--------------------------------------------------
--------------------cuentas-----------------------
--------------------------------------------------

CREATE TABLE usuario
(
    cedula char(5),
    nombre varchar(25) NOT NULL,
    apellido varchar(25) NOT NULL,
    tipo_cuenta varchar(20),
    limite_credito decimal(10,5),
    CONSTRAINT cedula_pk PRIMARY KEY (cedula)
)

alter table cuentas
add constraint cuentas_usuario_fk
foreign key (cedula_propietario)
references usuario(cedula)

--------------------------------------------------
--------------------clientes----------------------
--------------------------------------------------

create table compras(
	id_compra int,
	cedula char(5) not null,
	fecha_compra date not null,
	monto decimal(10,2) not null, 
	constraint id_compra_pk primary key(id_compra)
)

alter table compras
add constraint compras_clientes_fk
foreign key (cedula)
references clientes(cedula)

--------------------------------------------------
--------------------productos---------------------
--------------------------------------------------

CREATE TABLE ventas(
	id_venta int,
	codigo_producto int not null,
	fecha_venta date not null,
	cantidad int,
	constraint id_venta_pk primary key (id_venta)
)

alter table ventas
add constraint ventas_productos_fk
foreign key (codigo_producto)
references productos(codigo)

--------------------------------------------------
--------------------videojuego--------------------
--------------------------------------------------

CREATE TABLE plataformas(
	id_plataforma int,
	nombre_plataforma varchar(50) not null,
	codigo_videojuego int,
	constraint id_plataforma_pk primary key(id_plataforma)
)

alter table plataformas
add constraint plataformas_videojuegos_fk
foreign key (codigo_videojuego)
references videojuegos(codigo)

--------------------------------------------------
--------------------estudiantes-------------------
--------------------------------------------------

CREATE TABLE profesores(
	codigo int,
	nombre varchar(50) not null,
	constraint codigo_pk primary key (codigo)
)

alter table estudiantes
add column codigo_profesor int

alter table estudiantes
add constraint estudiantes_profesores_fk
foreign key (codigo_profesor)
references profesores(codigo)

--------------------------------------------------
--------------------registros entrada-------------
--------------------------------------------------

CREATE TABLE empleado(
	codigo_empleado int not null,
	nombre varchar(25) not null,
	fecha date not null,
	hora time not null,
	constraint codigo_empleado_pk primary key (codigo_empleado)
)

alter table registros_entrada
add constraint registros_entrada_empleado_fk
foreign key (codigo_empleado)
references empleado(codigo_empleado)


alter table registros_entrada
add column codigo_empleado int not null

--------------------------------------------------
--------------------persona-----------------------
--------------------------------------------------

create table prestamo(
	cedula char(10),
	monto money,
	fecha_prestamo date,
	hora_prestamo time,
	garante varchar(40),
	constraint cedula_prestamo_pk primary key(cedula)
)

alter table prestamo
add constraint prestamo_personas_fk
foreign key (cedula)
references personas(cedula)

--------------------------------------------------
--------------------transacciones-----------------
--------------------------------------------------

CREATE TABLE banco(
	codigo_banco int,
	codigo_transaccion int,
	detalle varchar(100),
	constraint codigo_banco_pk primary key (codigo_banco)
)

alter table banco
add constraint banco_transacciones_fk
foreign key (codigo_transaccion)
references transacciones(codigo)