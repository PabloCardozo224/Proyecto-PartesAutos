drop database if exists Autopartes;
create database Autopartes;
use Autopartes;



 create table clientes(
id_cliente int auto_increment,
nombre varchar (35),
 apellido varchar (35),
 dni int(8),
telefono int (10),
direccion varchar(25),
primary key (id_cliente)
);

create table empleados(
id_empleado int auto_increment,
nombre varchar (35),
apellido varchar (35),
dni int(8),
telefono int(10),
puesto varchar (30),
rol varchar (35),
primary key (id_empleado)
);


create table provincias(
id_provincia int auto_increment,
nombre varchar(25),
localidad varchar (45),
primary key (id_provincia)
);


create table productos(
id_productos int auto_increment,
nombre varchar (35),
descripcion varchar (50),
tipo_parte varchar(100),
tamaño enum('chico', 'mediano', 'grande'),
cantidad int (10),
precio int (25),
color varchar(25),
modelo Varchar(40),
primary key (id_productos)
);

create table pedidos(
id_pedido int auto_increment,
id_productos int,
cantidad int,
primary key (id_pedido),
foreign key (id_productos) references productos(id_productos)
);


create table pagos(
id_pago int auto_increment,
id_pedido int,
metodo enum ('efectivo', 'transferencia', 'tarjeta de debito'),
monto float (50),
estado enum('pendiente', 'confirmado', 'denegado'),
primary key (id_pago),
foreign key (id_pedido) references pedidos(id_pedido)
);

create table envios(
id_envio int auto_increment,
id_pedido int,
id_direccion int,
id_productos int,
id_cliente int,
n_casa int,
nombre_calle varchar (45), 
nombre_barrio varchar (45),
f_inicio datetime,
F_final datetime,
estado_env enum('en camino', 'entregado', 'en almacen',"reenviando"),
primary key (id_envio),
foreign key (id_pedido) references pedidos(id_pedido),
foreign key (id_cliente) references clientes(id_cliente)
);


INSERT INTO clientes (nombre, apellido, dni, telefono, direccion) VALUES 
('Juan', 'Pérez', 34567890, 1144445555, 'Av. Rivadavia 1234'),
('María', 'Gómez', 36123456, 1155556666, 'Calle Falsa 456'),
('Lucas', 'Rodríguez', 32987654, 1166667777, 'Mitre 789'),
('Ana', 'Martínez', 38456123, 1177778888, 'San Martín 1011');

INSERT INTO empleados (nombre, apellido, dni, telefono, puesto, rol) VALUES 
('Carlos', 'López', 29456123, 1122223333, 'Vendedor', 'Atención al Cliente'),
('Laura', 'Álvarez', 31456789, 1133334444, 'Repartidor', 'Logística'),
('Diego', 'Díaz', 35123987, 1188889999, 'Gerente', 'Administración'),
('Sofía', 'Castro', 40123456, 1199990000, 'Mecánico', 'Soporte Técnico');

INSERT INTO provincias (nombre, localidad) VALUES 
('Buenos Aires', 'La Plata'),
('Santa Fe', 'Rosario'),
('Córdoba', 'Carlos Paz'),
('Mendoza', 'Godoy Cruz');

INSERT INTO productos (nombre, descripcion, tipo_parte, tamaño, cantidad, precio, color, modelo) VALUES 
('Inyectores', 'Inyector de alta presión Bosch', 'Motor', 'chico', 50, 15000, 'Plata', 'Bosch 2023'),
('Pastillas de freno', 'Pastillas cerámicas delanteras', 'Frenos', 'mediano', 30, 8500, 'Negro', 'Frasle X'),
('Batería', 'Batería 12V 75Ah libre mantenimiento', 'Electricidad', 'grande', 20, 45000, 'Negro', 'Moura ME75D'),
('Amortiguador', 'Amortiguador delantero derecho', 'Suspensión', 'grande', 15, 22000, 'Gris', 'Cofap Super');


INSERT INTO pedidos (id_productos, cantidad) VALUES 
(1, 4),
(2, 2),
(3, 1),
(4, 2);

INSERT INTO pagos (id_pedido, metodo, monto, estado) VALUES 
(1, 'transferencia', 60000.00, 'confirmado'),
(2, 'efectivo', 17000.00, 'confirmado'),
(3, 'tarjeta de debito', 45000.00, 'pendiente'),
(4, 'transferencia', 44000.00, 'confirmado');s

INSERT INTO envios (id_pedido, id_direccion, id_productos, id_cliente, n_casa, nombre_calle, nombre_barrio, f_inicio, F_final, estado_env) VALUES 
(1, 101, 1, 1, 1234, 'Av. Rivadavia', 'Caballito', '2026-03-24 09:00:00', '2026-03-24 14:00:00', 'entregado'),
(2, 102, 2, 2, 456, 'Calle Falsa', 'Palermo', '2026-03-24 10:30:00', NULL, 'en camino'),
(3, 103, 3, 3, 789, 'Mitre', 'Centro', '2026-03-24 11:00:00', NULL, 'en almacen'),
(4, 104, 4, 4, 1011, 'San Martín', 'Flores', '2026-03-24 08:15:00', '2026-03-24 12:30:00', 'entregado');
