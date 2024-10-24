--Eliminacion de tablas, si existen
DROP TABLE IF EXISTS historial_movimientos;
DROP TABLE IF EXISTS productos;
DROP TABLE IF EXISTS categorias;

--Creacion de tabla categorias
create table categorias(
    id char(4) not null,
    nombre varchar(30) not null,
    constraint categorias_pk primary key (id)
);

--Creacion de tabla productos
create table productos(
    id char(5) not null,
    nombre varchar(30) not null,
    precio_venta money not null,
    precio_compra money not null,
    id_categoria char(4) not null,
    constraint productos_pk primary key (id),
    constraint productos_categorias_fk foreign key (id_categoria) references categorias(id)
);

--Creacion de tabla historial_movimientos
create table historial_movimientos(
    id serial not null,
    id_producto char(5) not null,
    cantidad int not null,
    fecha_movimiento timestamp not null,
	constraint historial_movimientos_pk primary key (id),
    constraint historial_movimientos_productos_fk foreign key (id_producto) references productos(id)
);

--Inserts categorias
INSERT INTO public.categorias(
	id, nombre)
	VALUES ('C001', 'Bebidas');
INSERT INTO public.categorias(
	id, nombre)
	VALUES ('C002', 'Snacks');
INSERT INTO public.categorias(
	id, nombre)
	VALUES ('C003', 'Golosinas');

--Inserts productos
INSERT INTO public.productos(
	id, nombre, precio_venta, precio_compra, id_categoria)
	VALUES ('P0001', 'Coca cola 300 ml', 0.7, 0.55, 'C001');
INSERT INTO public.productos(
	id, nombre, precio_venta, precio_compra, id_categoria)
	VALUES ('P0002', 'Coca cola 1000 ml', 1, 0.8, 'C001');
INSERT INTO public.productos(
	id, nombre, precio_venta, precio_compra, id_categoria)
	VALUES ('P0003', 'Doritos 50g', 0.5, 0.42, 'C002');
INSERT INTO public.productos(
	id, nombre, precio_venta, precio_compra, id_categoria)
	VALUES ('P0004', 'Manicho', 0.25, 0.21, 'C003');
INSERT INTO public.productos(
	id, nombre, precio_venta, precio_compra, id_categoria)
	VALUES ('P0005', 'Tango', 0.5, 0.42, 'C003');

--Inserts historial_movimientos
INSERT INTO public.historial_movimientos(
	id_producto, cantidad, fecha_movimiento)
	VALUES ('P0001', 10, '28/10/2020 9:45');
INSERT INTO public.historial_movimientos(
	id_producto, cantidad, fecha_movimiento)
	VALUES ('P0002', -3, '28/10/2020 10:49');
INSERT INTO public.historial_movimientos(
	id_producto, cantidad, fecha_movimiento)
	VALUES ('P0001', 5, '28/10/2020 12:23');

--Consulta de datos
select * from productos;
select * from categorias;
select * from historial_movimientos;