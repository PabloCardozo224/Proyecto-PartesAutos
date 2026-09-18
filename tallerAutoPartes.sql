drop database if exists Autopartes;
create database Autopartes;
use Autopartes;

create table usuarios(
 id_usuario int auto_increment,
 nombre varchar (35),
 apellido varchar (35),
 email varchar(35),
 contraseña varchar(40),
 primary key (id_usuario)
 );
create table rol(  
id_rol int auto_increment,
 tipo_rol varchar (35),
 primary key (id_rol)
 );
 create table clientes(
id_cliente int auto_increment,
id_usuario int,
nombre varchar (35),
 apellido varchar (35),
 dni int(8),
telefono int (10),
direccion varchar(25),
primary key (id_cliente),
foreign key (id_usuario) references usuarios(id_usuario)
);

create table empleados(
id_empleado int auto_increment,
id_usuario int,
nombre varchar (35),
apellido varchar (35),
dni int(8),
telefono int(10),
primary key (id_empleado),
foreign key (id_usuario) references usuarios(id_usuario)
);
create table provincias(
id_provincia int auto_increment,
nombre varchar(25),
localidad varchar (45),
primary key (id_provincia)
);

create table direcciones(
id_direccion int auto_increment,
id_provincia int,
n_casa int,
nombre_calle varchar (45),
nombre_barrio varchar (45),
primary key (id_direccion),
foreign key (id_provincia) references provincias(id_provincia)
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
metodo enum ('efectivo', 'transferencia', 'targeta de debito'),
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
f_inicio datetime,
F_final datetime,
estado_env enum('en camino', 'entregado', 'en almacen',"reenviando"),
primary key (id_envio),
foreign key (id_pedido) references pedidos(id_pedido),
foreign key (id_direccion) references direcciones(id_direccion),
foreign key (id_productos) references productos(id_productos),
foreign key (id_cliente) references clientes(id_cliente)
);

insert into clientes
