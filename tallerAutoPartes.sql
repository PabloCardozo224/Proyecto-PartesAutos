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
id_producto int auto_increment,
nombre varchar (35),
descripcion varchar (50),
tipo_parte varchar(100),
tamaño enum('chico', 'mediano', 'grande'),
cantidad int (10),
precio int (25),
color varchar(25),
modelo Varchar(40),
primary key (id_producto)
);

create table pedidos(
id_pedido int auto_increment,
id_producto int,
cantidad int,
primary key (id_pedido),
foreign key (id_producto) references productos(id_producto)
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
id_producto int,
id_cliente int,
id_provincia int,
n_casa int,
nombre_calle varchar (45), 
nombre_barrio varchar (45),
f_inicio datetime,
F_final datetime,
estado_env enum('en camino', 'entregado', 'en almacen',"reenviando"),
primary key (id_envio),
foreign key (id_cliente) references clientes(id_cliente),
foreign key (id_provincia) references provincias(id_provincia)
);

create table ventas(
id_venta int auto_increment,
f_venta datetime,
cant_prod int ,
tipo_pedido varchar(30),
id_producto int,
id_empleado int,
id_envio int,
id_pago int,
primary key(id_venta),
foreign key (id_producto) references productos(id_producto),
foreign key (id_empleado) references empleados(id_empleado),
foreign key (id_envio) references envios (id_envio),
foreign key (id_pago) references pagos(id_pago)
);
