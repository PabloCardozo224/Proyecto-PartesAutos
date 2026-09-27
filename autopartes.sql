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
tamaño enum("chico", "mediano", "grande"),
cantidad int (10),
precio int (25),
color varchar(25),
modelo Varchar(40),
primary key (id_producto)
);




create table pagos(
id_pago int auto_increment,
id_pedido int,
metodo enum ("efectivo", "transferencia", "tarjeta de debito"),
monto float (50),
estado enum("pendiente", "confirmado", "denegado"),
primary key (id_pago)
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
estado_env enum("en camino", "entregado", "en almacen", "reenviando"),
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

use Autopartes;


insert into provincias (nombre, localidad) values
("Buenos Aires", "La Plata"), 
("Buenos Aires", "Mar del Plata"), 
("Buenos Aires", "Bahía Blanca"), 
("Buenos Aires", "Tandil"), 
("Buenos Aires", "Quilmes"),
("Córdoba", "Córdoba Capital"),
("Córdoba", "Villa María"),
("Córdoba", "Río Cuarto"), 
("Córdoba", "Carlos Paz"), 
("Córdoba", "Alta Gracia"), 
("Santa Fe", "Santa Fe Capital"), 
("Santa Fe", "Rosario"), 
("Santa Fe", "Rafaela"), 
("Santa Fe", "Venado Tuerto"), 
("Santa Fe", "Reconquista"),
("Mendoza", "Mendoza Capital"),
("Mendoza", "San Rafael"), 
("Mendoza", "Godoy Cruz"),
("Mendoza", "Maipú"),
("Mendoza", "Luján de Cuyo"),
("Tucumán", "San Miguel de Tucumán"),
("Tucumán", "Yerba Buena"), 
("Tucumán", "Concepción"),
("Tucumán", "Tafí Viejo"),
("Salta", "Salta Capital"),
("Salta", "San Ramón de la Nueva Orán"),
("Salta", "Tartagal"),
("Salta", "Cafayate"),
("Entre Ríos", "Paraná"),
("Entre Ríos", "Concordia"),
("Entre Ríos", "Gualeguaychú"),
("Chaco", "Resistencia"), 
("Chaco", "Sáenz Peña"),
("Corrientes", "Corrientes Capital"), 
("Corrientes", "Goya"),
("Misiones", "Posadas"), 
("Misiones", "Oberá"),
("Río Negro", "Bariloche"),
("Río Negro", "Viedma"),
("Santa Cruz", "Calafate"),
("Chubut", "Comodoro Rivadavia");

insert into clientes (nombre, apellido, dni, telefono, direccion) values
("Juan", "Pérez", 30111222, 1144445555, "Av. de Mayo 123"), 
("María", "Gómez", 31222333, 1155556666, "Rivadavia 456"),
("Carlos", "Rodríguez", 32333444, 1166667777, "Corrientes 789"),
("Ana", "Fernández", 33444555, 3414445555, "San Martín 1011"),
("Luis", "López", 34555666, 3515556666, "Colón 1213"),
("Laura", "Martínez", 35666777, 2616667777, "Belgrano 1415"),
("Diego", "González", 36777888, 3817778888, "Mitre 1617"),
("Sofía", "Álvarez", 37888999, 3878889999, "Balcarce 1819"),
("Pedro", "Romero", 38999000, 3439990000, "Urquiza 2021"),
("Lucía", "Benítez", 39000111, 3620001111, "Sarmiento 2223"),
("Marcelo", "Díaz", 40111222, 3791112222, "Junín 2425"),
("Valeria", "Silva", 41222333, 3762223333, "Ayacucho 2627"),
("Martín", "Sánchez", 42333444, 2943334444, "Moreno 2829"),
("Camila", "Romano", 43444555, 2974445555, "Av. Chile 3031"),
("Jorge", "Torres", 29111222, 1122223333, "Lavalle 111"),
("Elena", "Ruiz", 28222333, 1133334444, "Callao 222"),
("Ricardo", "Castro", 27333444, 1144445556, "Pueyrredón 333"),
("Claudia", "Morales", 26444555, 3415556667, "Pellegrini 444"),
("Gabriel", "Herrera", 25555666, 3516667778, "General Paz 555"),
("Patricia", "Medina", 24666777, 2617778889, "Las Heras 666"),
("Andrés", "Castillo", 23777888, 3818889990, "Avellaneda 777"),
("Natalia", "Castro", 22888999, 3879990001, "Alvarado 888"),
("Javier", "Ortiz", 21999000, 3431112222, "25 de Mayo 999"),
("Mónica", "Suárez", 20000111, 3622223333, "9 de Julio 101"),
("Fernando", "Blanco", 19111222, 3793334444, "Caseros 202"),
("Silvia", "Méndez", 18222333, 3764445555, "Bolívar 303"),
("Hugo", "Acosta", 17333444, 2945445555, "Elflein 404"), 
("Beatriz", "Gutiérrez", 16444555, 2976667777, "Alsina 505"),
("Claudio", "García", 30999888, 1167891234, "Corrientes 4500"),
("Marina", "Vidal", 32444555, 1123456789, "Cabildo 1200"),
("Sergio", "Pereyra", 31555666, 3419876543, "Mendoza 3400"),
("Daniela", "Ríos", 33666777, 3511234567, "Olmos 800"),
("Gustavo", "Giménez", 34777888, 2619876543, "San Martín 500"),
("Paula", "Ledesma", 35888999, 3811234567, "Muñecas 200"),
("Mariano", "Insaurralde", 36999000, 3879876543, "Mitre 150"),
("Verónica", "Flores", 37000111, 3431234567, "Ramírez 600"),
("Ezequiel", "Rossi", 38111222, 3629876543, "Alberdi 900"), 
("Florencia", "Luna", 39222333, 3791234567, "Veracruz 1500"),
("Cristian", "Duarte", 40333444, 3769876543, "Urquiza 1800"),
("Pedro", "Parker", 40133414, 316923633411, "Urquiza 1880"),
("Roberta", "Campos", 41444555, 2941234567, "Mitre 400");
	
insert into empleados (nombre, apellido, dni, telefono, puesto, rol) values
("Marcos", "Rojo", 30111001, 1120003001, "vendedor", "atencion al cliente"),
("Pablo", "Pérez", 31222002, 1120003002, "vendedor", "atencion al cliente"),
("Enzo", "Fernández", 32333003, 1120003003, "cajero", "gestion de cobros"), 
("Franco", "Armani", 33444004, 1120003004, "repositor", "logistica interna"),
("Julián", "Álvarez", 34555005, 1120003005, "gerente", "administrador general"),
("Lionel", "Scaloni", 25666006, 1120003006, "supervisor", "control de personal"),
("Rodrigo", "De Paul", 36777007, 1120003007, "repartidor", "envios locales"),
("Lautaro", "Martínez", 37888008, 1120003008, "vendedor", "atencion al cliente"),
("Ángel", "Di María", 28999009, 1120003009, "vendedor", "ventas mayoristas"), 
("Nicolás", "Otamendi", 29000010, 1120003010, "seguridad", "vigilancia"),
("Nahuel", "Molina", 40111011, 1120003011, "repositor", "logistica interna"), 
("Cristian", "Romero", 41222012, 1120003012, "mecanico", "soporte tecnico"),
("Lisandro", "Martínez", 42333013, 1120003013, "vendedor", "atencion al cliente"),
("Marcos", "Acuña", 33444014, 1120003014, "cadete", "envios locales"),
("Leandro", "Paredes", 34555015, 1120003015, "cajero", "gestion de cobros"),
("Gonzalo", "Montiel", 35666016, 1120003016, "repositor", "logistica interna"),
("Germán", "Pezzella", 30777017, 1120003017, "supervisor", "control de stock"),
("Guido", "Rodríguez", 31888018, 1120003018, "vendedor", "atencion al cliente"),
("Alejandro", "Gómez", 28999019, 1120003019, "vendedor", "atencion al cliente"),
("Alexis", "Mac Allister", 40000020, 1120003020, "cajero", "gestion de cobros"),
("Paulo", "Dybala", 34111021, 1120003021, "vendedor", "ventas online"),
("Joaquín", "Correa", 35222022, 1120003022, "repositor", "logistica interna"),
("Juan", "Foyth", 39333023, 1120003023, "repartidor", "envios locales"),
("Gerónimo", "Rulli", 32444024, 1120003024, "seguridad", "vigilancia"),
("Emiliano", "Martínez", 33555025, 1120003025, "supervisor", "encargado de sucursal"), 
("Walter", "Samuel", 20666026, 1120003026, "gerente", "administrador adjunto"),
("Pablo", "Aimar", 21777027, 1120003027, "supervisor", "capacitador"), 
("Roberto", "Ayala", 22888028, 1120003028, "seguridad", "jefe de seguridad"),
("Facundo", "Medina", 43999029, 1120003029, "vendedor", "atencion al cliente"), 
("Nehuén", "Pérez", 44000030, 1120003030, "repositor", "logistica interna"),
("Lucas", "Ocampos", 35111031, 1120003031, "vendedor", "ventas online"), 
("Emiliano", "Buendía", 36222032, 1120003032, "cajero", "gestion de cobros"),
("Giovani", "Lo Celso", 37333033, 1120003033, "vendedor", "atencion al cliente"),
("Nicolás", "González", 38444034, 1120003034, "cadete", "envios locales"),
("Lucas", "Alario", 32555035, 1120003035, "repositor", "logistica interna"),
("Giovanni", "Simeone", 33666036, 1120003036, "vendedor", "atencion al cliente"),
("Exequiel", "Palacios", 40777037, 1120003037, "cajero", "gestion de cobros"),
("Thiago", "Almada", 44888038, 1120003038, "repartidor", "envios locales"),
("Nicolás", "Tagliafico", 34999039, 1120003039, "supervisor", "control de despacho"),
("Yasuri", "Yamilet", 45003334, 1120203340, "repartidor", "envios locales"),
("Piero", "Hincapié", 45000040, 1120003040, "repositor", "logistica interna");

insert into productos (nombre, descripcion, tipo_parte, tamaño, cantidad, precio, color, modelo) values
("amortiguador delantero", "amortiguador para corsa", "suspension", "mediano", 100, 45000.00, "negro", "chevrolet corsa 2010"),
("pastilla de freno", "pastillas ceramicas hilux", "frenos", "chico", 150, 25000.00, "gris", "toyota hilux 2015"),
("filtro de aceite", "filtro de aceite gol trend", "motor", "chico", 300, 8500.00, "blanco", "volkswagen gol trend"),
("optica derecha", "optica delantera fiat palio", "iluminacion", "grande", 40, 65000.00, "transparente", "fiat palio 2012"),
("bateria 12v 75ah", "bateria de alta duracion", "electricidad", "mediano", 60, 95000.00, "negro", "universal"),
("bomba de agua", "bomba de agua peugeot 208", "motor", "mediano", 50, 38000.00, "gris aluminio", "peugeot 208 2018"),
("correa de distribucion", "correa dentada ford fiesta", "motor", "chico", 120, 15000.00, "negro", "ford fiesta kinetic"),
("disco de freno", "par de discos delanteros bora", "frenos", "mediano", 70, 55000.00, "gris metal", "volkswagen bora"),
("radiador de agua", "radiador motor renault clio", "motor", "grande", 35, 72000.00, "negro", "renault clio mio"),
("bujia de encendido", "bujia ngk iridium unida", "electricidad", "chico", 500, 6000.00, "blanco", "universal"),
("espejo retrovisor", "espejo electrico izquierdo", "carroceria", "mediano", 45, 28000.00, "negro", "ford ecosport"),
("paragolpes delantero", "paragolpes listo para pintar", "carroceria", "grande", 20, 110000.00, "gris primer", "fiat cronos"),
("filtro de aire", "filtro de aire original ford", "motor", "chico", 200, 9000.00, "amarillo", "ford ranger"),
("alternador 12v", "alternador completo renovado", "electricidad", "mediano", 15, 140000.00, "gris", "renault kangoo"),
("motor de arranque", "burro de arranque completo", "electricidad", "mediano", 22, 125000.00, "negro", "chevrolet onix"),
("kit embrague", "placa, disco y ruleman", "transmision", "grande", 30, 190000.00, "gris", "volkswagen amrok"),
("homocinetica", "junta homocinetica lado rueda", "transmision", "chico", 85, 23000.00, "negro", "fiat uno fire"),
("parrilla de suspension", "parrilla delantera derecha", "suspension", "mediano", 40, 34000.00, "negro", "peugeot 308"),
("cazoleta amortiguador", "cazoleta delantera con crapodina", "suspension", "chico", 90, 18000.00, "negro", "renault sandero"),
("rotula suspension", "rotula inferior delantera", "suspension", "chico", 110, 12500.00, "gris", "toyota etios"),
("extremo de direccion", "extremo largo derecho", "direccion", "chico", 130, 14000.00, "negro", "chevrolet prisma"),
("cremallera direccion", "cremallera hidraulica completa", "direccion", "grande", 12, 210000.00, "gris aluminio", "ford focus 2"),
("cremallera direccion", "cremallera hidraulica completa", "direccion", "chico", 11, 210000.00, "gris aluminio", "volkswagen amrok"),
("semieje derecho", "semieje completo con juntas", "transmision", "grande", 18, 98000.00, "negro", "peugeot 207");


insert into pagos (id_pedido, metodo, monto, estado) values
(101, "transferencia", 45000.00, "confirmado"),
(102, "efectivo", 25000.00, "confirmado"),
(103, "tarjeta de debito", 8500.00, "confirmado"),
(104, "transferencia", 65000.00, "confirmado"),
(105, "tarjeta de debito", 95000.00, "pendiente"),
(106, "efectivo", 38000.00, "confirmado"),
(107, "transferencia", 15000.00, "confirmado"),
(108, "tarjeta de debito", 55000.00, "confirmado"),
(109, "efectivo", 72000.00, "denegado"),
(110, "transferencia", 6000.00, "confirmado"),
(111, "tarjeta de debito", 28000.00, "confirmado"),
(112, "transferencia", 110000.00, "confirmado"),
(113, "efectivo", 9000.00, "confirmado"),
(114, "tarjeta de debito", 140000.00, "pendiente"),
(115, "transferencia", 125000.00, "confirmado"),
(116, "tarjeta de debito", 190000.00, "confirmado"),
(117, "efectivo", 23000.00, "confirmado"),
(118, "transferencia", 34000.00, "confirmado"),
(119, "tarjeta de debito", 18000.00, "confirmado"),
(120, "efectivo", 12500.00, "denegado"),
(121, "transferencia", 14000.00, "confirmado"),
(122, "tarjeta de debito", 210000.00, "confirmado"),
(123, "transferencia", 210000.00, "pendiente"),
(124, "efectivo", 98000.00, "confirmado"),
(125, "transferencia", 45000.00, "confirmado"),
(126, "tarjeta de debito", 25000.00, "confirmado"),
(127, "efectivo", 17000.00, "confirmado"),
(128, "transferencia", 65000.00, "confirmado"),
(129, "tarjeta de debito", 95000.00, "confirmado"),
(130, "efectivo", 38000.00, "denegado"),
(131, "transferencia", 30000.00, "confirmado"),
(132, "tarjeta de debito", 110000.00, "confirmado"),
(133, "efectivo", 18000.00, "confirmado"),
(134, "transferencia", 140000.00, "confirmado"),
(135, "tarjeta de debito", 125000.00, "pendiente"),
(136, "efectivo", 190000.00, "confirmado"),
(137, "transferencia", 23000.00, "confirmado"),
(138, "tarjeta de debito", 34000.00, "confirmado"),
(139, "efectivo", 18000.00, "confirmado"),
(140, "transferencia", 25000.00, "confirmado"),
(141, "tarjeta de debito", 28000.00, "confirmado");

insert into envios (id_pedido, id_producto, id_cliente, id_provincia, n_casa, nombre_calle, nombre_barrio, f_inicio, F_final, estado_env) values
(101, 1, 1, 1, 123, "Av. de Mayo", "Centro", "2024-01-10 09:00:00", "2024-01-12 14:00:00", "entregado"),
(102, 2, 2, 1, 456, "Rivadavia", "Almagro", "2024-01-11 10:00:00", "2024-01-13 16:30:00", "entregado"),
(103, 3, 3, 2, 789, "Corrientes", "Balvanera", "2024-01-12 11:00:00", "2024-01-15 11:00:00", "entregado"),
(104, 4, 4, 11, 1011, "San Martín", "Centro", "2024-01-13 08:30:00", "2024-01-16 12:00:00", "entregado"),
(105, 5, 5, 6, 1213, "Colón", "Alberdi", "2024-01-14 14:00:00", null, "en camino"),
(106, 6, 6, 16, 1415, "Belgrano", "5ta Sección", "2024-01-15 15:00:00", "2024-01-18 10:00:00", "entregado"),
(107, 7, 7, 21, 1617, "Mitre", "Sur", "2024-01-16 09:15:00", "2024-01-19 13:00:00", "entregado"),
(108, 8, 8, 25, 1819, "Balcarce", "Tres Cerritos", "2024-01-17 12:00:00", "2024-01-20 17:00:00", "entregado"),
(109, 9, 9, 29, 2021, "Urquiza", "Centro", "2024-01-18 10:00:00", null, "en almacen"),
(110, 10, 10, 32, 2223, "Sarmiento", "Los Olivos", "2024-01-19 11:30:00", "2024-01-22 15:00:00", "entregado"),
(111, 11, 11, 34, 2425, "Junín", "Camba Cua", "2024-01-20 08:00:00", "2024-01-23 11:00:00", "entregado"),
(112, 12, 12, 36, 2627, "Ayacucho", "Villa Sarita", "2024-01-21 13:00:00", null, "reenviando"),
(113, 13, 13, 38, 2829, "Moreno", "Belgrano", "2024-01-22 16:00:00", "2024-01-26 12:00:00", "entregado"),
(114, 14, 14, 41, 3031, "Av. Chile", "Pueyrredón", "2024-01-23 09:00:00", null, "en camino"),
(115, 15, 15, 1, 111, "Lavalle", "San Nicolás", "2024-01-24 10:30:00", "2024-01-26 14:00:00", "entregado"),
(116, 16, 16, 1, 222, "Callao", "Recoleta", "2024-01-25 11:00:00", "2024-01-27 18:00:00", "entregado"),
(117, 17, 17, 2, 333, "Pueyrredón", "Once", "2024-01-26 12:00:00", "2024-01-29 11:00:00", "entregado"),
(118, 18, 18, 12, 444, "Pellegrini", "Eburnean", "2024-01-27 09:00:00", "2024-01-30 16:00:00", "entregado"),
(119, 19, 19, 6, 555, "General Paz", "Centro", "2024-01-28 14:00:00", "2024-01-31 10:00:00", "entregado"),
(120, 20, 20, 16, 666, "Las Heras", "Bombal", "2024-01-29 15:30:00", null, "en almacen"),
(121, 21, 21, 21, 777, "Avellaneda", "Norte", "2024-01-30 08:30:00", "2024-02-02 12:00:00", "entregado"),
(122, 22, 22, 25, 888, "Alvarado", "Grand Bourg", "2024-01-31 11:00:00", "2024-02-03 15:00:00", "entregado"),
(123, 23, 23, 29, 999, "25 de Mayo", "Parque", "2024-02-01 10:00:00", null, "en camino"),
(124, 24, 24, 32, 101, "9 de Julio", "Centro", "2024-02-02 13:00:00", "2024-02-05 11:00:00", "entregado"),
(125, 1, 25, 34, 202, "Caseros", "Deportes", "2024-02-03 09:00:00", "2024-02-06 14:00:00", "entregado"),
(126, 2, 26, 36, 303, "Bolívar", "Pino", "2024-02-04 10:00:00", "2024-02-07 16:00:00", "entregado"),
(127, 3, 27, 38, 404, "Elflein", "El Mallín", "2024-02-05 12:00:00", "2024-02-09 13:00:00", "entregado"),
(128, 4, 28, 41, 505, "Alsina", "Pueyrredón", "2024-02-06 15:00:00", "2024-02-10 17:00:00", "entregado"),
(129, 5, 29, 1, 4500, "Corrientes", "Almagro", "2024-02-07 11:30:00", "2024-02-09 10:00:00", "entregado"),
(130, 6, 30, 1, 1200, "Cabildo", "Belgrano", "2024-02-08 08:30:00", null, "en almacen"),
(131, 7, 31, 12, 3400, "Mendoza", "Eburnean", "2024-02-09 14:00:00", "2024-02-12 12:00:00", "entregado"),
(132, 8, 32, 6, 800, "Olmos", "Centro", "2024-02-10 10:00:00", "2024-02-13 15:00:00", "entregado"),
(133, 9, 33, 16, 500, "San Martín", "Centro", "2024-02-11 11:00:00", "2024-02-14 11:00:00", "entregado"),
(134, 10, 34, 21, 200, "Muñecas", "Norte", "2024-02-12 16:00:00", null, "en camino"),
(135, 11, 35, 25, 150, "Mitre", "Tres Cerritos", "2024-02-13 09:00:00", null, "reenviando"),
(136, 12, 36, 29, 600, "Ramírez", "Parque", "2024-02-14 10:30:00", "2024-02-17 14:00:00", "entregado"),
(137, 13, 37, 32, 900, "Alberdi", "Sur", "2024-02-15 13:00:00", "2024-02-18 16:00:00", "entregado"),
(138, 14, 38, 34, 1500, "Veracruz", "Costanera", "2024-02-16 08:00:00", "2024-02-19 10:00:00", "entregado"),
(139, 15, 39, 36, 1800, "Urquiza", "Villa Sarita", "2024-02-17 12:00:00", "2024-02-20 18:00:00", "entregado"),
(140, 16, 40, 12, 1880, "Urquiza", "Centro", "2024-02-18 15:00:00", "2024-02-21 12:00:00", "entregado"),
(141, 17, 41, 38, 400, "Mitre", "Belgrano", "2024-02-19 11:00:00", "2024-02-23 15:00:00", "entregado");

insert into ventas (f_venta, cant_prod, tipo_pedido, id_producto, id_empleado, id_envio, id_pago) values
("2024-01-10 08:30:00", 1, "web", 1, 1, 1, 1),
("2024-01-11 09:15:00", 1, "presencial", 2, 2, 2, 2),
("2024-01-12 10:00:00", 1, "web", 3, 21, 3, 3),
("2024-01-13 08:00:00", 1, "presencial", 4, 8, 4, 4),
("2024-01-14 13:20:00", 1, "web", 5, 31, 5, 5),
("2024-01-15 14:10:00", 1, "presencial", 6, 9, 6, 6),
("2024-01-16 08:50:00", 1, "web", 7, 13, 7, 7),
("2024-01-17 11:30:00", 1, "web", 8, 18, 8, 8),
("2024-01-18 09:40:00", 1, "presencial", 9, 19, 9, 9),
("2024-01-19 11:00:00", 1, "web", 10, 29, 10, 10),
("2024-01-20 07:45:00", 1, "presencial", 11, 33, 11, 11),
("2024-01-21 12:15:00", 1, "web", 12, 36, 12, 12),
("2024-01-22 15:30:00", 1, "web", 13, 1, 13, 13),
("2024-01-23 08:20:00", 1, "presencial", 14, 2, 14, 14),
("2024-01-24 10:00:00", 1, "web", 15, 8, 15, 15),
("2024-01-25 10:45:00", 1, "presencial", 16, 9, 16, 16),
("2024-01-26 11:15:00", 1, "web", 17, 13, 17, 17),
("2024-01-27 08:40:00", 1, "presencial", 18, 18, 18, 18),
("2024-01-28 13:10:00", 1, "web", 19, 19, 19, 19),
("2024-01-29 14:50:00", 1, "web", 20, 21, 20, 20),
("2024-01-30 08:00:00", 1, "presencial", 21, 29, 21, 21),
("2024-01-31 10:20:00", 1, "web", 22, 31, 22, 22),
("2024-02-01 09:30:00", 1, "presencial", 23, 33, 23, 23),
("2024-02-02 12:40:00", 1, "web", 24, 36, 24, 24),
("2024-02-03 08:15:00", 1, "web", 1, 1, 25, 25),
("2024-02-04 09:30:00", 1, "presencial", 2, 2, 26, 26),
("2024-02-05 11:20:00", 2, "web", 3, 8, 27, 27),
("2024-02-06 14:10:00", 1, "web", 4, 9, 28, 28),
("2024-02-07 11:00:00", 1, "presencial", 5, 13, 29, 29),
("2024-02-08 08:00:00", 1, "web", 6, 18, 30, 30),
("2024-02-09 13:30:00", 2, "presencial", 7, 19, 31, 31),
("2024-02-10 09:15:00", 1, "web", 8, 21, 32, 32),
("2024-02-11 10:40:00", 3, "web", 10, 29, 33, 33),
("2024-02-12 15:20:00", 1, "web", 14, 31, 34, 34),
("2024-02-13 08:30:00", 1, "web", 15, 33, 35, 35),
("2024-02-14 10:10:00", 1, "presencial", 16, 36, 36, 36),
("2024-02-15 12:00:00", 1, "web", 17, 1, 37, 37),
("2024-02-16 07:50:00", 1, "web", 18, 2, 38, 38),
("2024-02-17 11:40:00", 1, "presencial", 19, 8, 39, 39),
("2024-02-18 14:20:00", 1, "web", 2, 9, 40, 40),
("2024-02-19 10:30:00", 1, "web", 11, 13, 41, 41);



SQL
delimiter //

create procedure sp_clientes_insertar(
    in p_nombre varchar(35),
    in p_apellido varchar(35),
    in p_dni int,
    in p_telefono int,
    in p_direccion varchar(25)
)
begin
    insert into clientes (nombre, apellido, dni, telefono, direccion)
    values (p_nombre, p_apellido, p_dni, p_telefono, p_direccion);
end //

create procedure sp_clientes_actualizar_contacto(
    in p_id_cliente int,
    in p_telefono int,
    in p_direccion varchar(25)
)
begin
    update clientes 
    set telefono = p_telefono, direccion = p_direccion
    where id_cliente = p_id_cliente;
end //


create procedure sp_clientes_buscar_por_dni(
    in p_dni int
)
begin
    select * from clientes where dni = p_dni;
end //

create procedure sp_clientes_total_gastado(
    in p_id_cliente int,
    out p_total_gastado float
)
begin
    select coalesce(sum(p.monto), 0) into p_total_gastado
    from envios e
    inner join ventas v on e.id_envio = v.id_envio
    inner join pagos p on v.id_pago = p.id_pago
    where e.id_cliente = p_id_cliente and p.estado = 'confirmado';
end //

create procedure sp_clientes_eliminar(
    in p_id_cliente int,
    out p_mensaje varchar(100)
)
begin
    declare v_cantidad int;
    select count(*) into v_cantidad from envios where id_cliente = p_id_cliente;
    
    if v_cantidad = 0 then
        delete from clientes where id_cliente = p_id_cliente;
        set p_mensaje = 'cliente eliminado exitosamente.';
    else
        set p_mensaje = 'no se puede eliminar: el cliente tiene registros asociados.';
    end if;
end //

delimiter ;

SQL
delimiter //

create procedure sp_empleados_insertar(
    in p_nombre varchar(35),
    in p_apellido varchar(35),
    in p_dni int,
    in p_telefono int,
    in p_puesto varchar(30),
    in p_rol varchar(35)
)
begin
    insert into empleados (nombre, apellido, dni, telefono, puesto, rol)
    values (p_nombre, p_apellido, p_dni, p_telefono, p_puesto, p_rol);
end //

create procedure sp_empleados_actualizar_cargo(
    in p_id_empleado int,
    in p_puesto varchar(30),
    in p_rol varchar(35)
)
begin
    update empleados 
    set puesto = p_puesto, rol = p_rol
    where id_empleado = p_id_empleado;
end //

create procedure sp_empleados_listar_por_puesto(
    in p_puesto varchar(30)
)
begin
    select * from empleados where puesto = p_puesto;
end //

create procedure sp_empleados_total_ventas(
    in p_id_empleado int,
    out p_total_ventas int
)
begin
    select count(*) into p_total_ventas
    from ventas
    where id_empleado = p_id_empleado;
end //

create procedure sp_empleados_eliminar(
    in p_id_empleado int
)
begin
    delete from empleados where id_empleado = p_id_empleado;
end //

delimiter ;

SQL
delimiter //

create procedure sp_provincias_insertar(
    in p_nombre varchar(25),
    in p_localidad varchar(45)
)
begin
    insert into provincias (nombre, localidad)
    values (p_nombre, p_localidad);
end //

create procedure sp_provincias_listar_localidades(
    in p_nombre varchar(25)
)
begin
    select id_provincia, localidad 
    from provincias 
    where nombre = p_nombre;
end //

create procedure sp_provincias_total_envios(
    in p_id_provincia int,
    out p_cantidad_envios int
)
begin
    select count(*) into p_cantidad_envios
    from envios
    where id_provincia = p_id_provincia;
end //

create procedure sp_provincias_actualizar_localidad(
    in p_id_provincia int,
    in p_nueva_localidad varchar(45)
)
begin
    update provincias 
    set localidad = p_nueva_localidad
    where id_provincia = p_id_provincia;
end //

create procedure sp_provincias_eliminar(
    in p_id_provincia int
)
begin
    delete from provincias where id_provincia = p_id_provincia;
end //

delimiter ;

SQL
delimiter //

create procedure sp_productos_insertar(
    in p_nombre varchar(35),
    in p_descripcion varchar(50),
    in p_tipo_parte varchar(100),
    in p_tamaño enum("chico", "mediano", "grande"),
    in p_cantidad int,
    in p_precio int,
    in p_color varchar(25),
    in p_modelo varchar(40)
)
begin
    insert into productos (nombre, descripcion, tipo_parte, tamaño, cantidad, precio, color, modelo)
    values (p_nombre, p_descripcion, p_tipo_parte, p_tamaño, p_cantidad, p_precio, p_color, p_modelo);
end //

create procedure sp_productos_actualizar_stock(
    in p_id_producto int,
    in p_cantidad_cambio int,
    out p_stock_final int
)
begin
    update productos 
    set cantidad = cantidad + p_cantidad_cambio
    where id_producto = p_id_producto;
    
    select cantidad into p_stock_final
    from productos
    where id_producto = p_id_producto;
end //

create procedure sp_productos_aumentar_precio_por_tipo(
    in p_tipo_parte varchar(100),
    in p_porcentaje float
)
begin
    update productos
    set precio = round(precio * (1 + (p_porcentaje / 100)))
    where tipo_parte = p_tipo_parte;
end //

create procedure sp_productos_buscar_por_precio(
    in p_precio_min int,
    in p_precio_max int
)
begin
    select * from productos 
    where precio between p_precio_min and p_precio_max;
end //

create procedure sp_productos_bajo_stock(
    in p_stock_limite int
)
begin
    select id_producto, nombre, descripcion, cantidad, precio 
    from productos 
    where cantidad <= p_stock_limite;
end //

delimiter ;

SQL
delimiter //

create procedure sp_pagos_insertar(
    in p_id_pedido int,
    in p_metodo enum("efectivo", "transferencia", "tarjeta de debito"),
    in p_monto float,
    in p_estado enum("pendiente", "confirmado", "denegado")
)
begin
    insert into pagos (id_pedido, metodo, monto, estado)
    values (p_id_pedido, p_metodo, p_monto, p_estado);
end //

create procedure sp_pagos_actualizar_estado(
    in p_id_pago int,
    in p_nuevo_estado enum("pendiente", "confirmado", "denegado")
)
begin
    update pagos 
    set estado = p_nuevo_estado
    where id_pago = p_id_pago;
end //

create procedure sp_pagos_total_por_metodo(
    in p_metodo enum("efectivo", "transferencia", "tarjeta de debito"),
    out p_total_monto float
)
begin
    select coalesce(sum(monto), 0) into p_total_monto
    from pagos
    where metodo = p_metodo and estado = 'confirmado';
end //

create procedure sp_pagos_listar_por_estado(
    in p_estado enum("pendiente", "confirmado", "denegado")
)
begin
    select * from pagos where estado = p_estado;
end //

create procedure sp_pagos_buscar_por_pedido(
    in p_id_pedido int
)
begin
    select * from pagos where id_pedido = p_id_pedido;
end //

delimiter ;

SQL
delimiter //

create procedure sp_envios_insertar(
    in p_id_pedido int,
    in p_id_producto int,
    in p_id_cliente int,
    in p_id_provincia int,
    in p_n_casa int,
    in p_nombre_calle varchar(45),
    in p_nombre_barrio varchar(45),
    in p_f_inicio datetime
)
begin
    insert into envios (id_pedido, id_producto, id_cliente, id_provincia, n_casa, nombre_calle, nombre_barrio, f_inicio, estado_env)
    values (p_id_pedido, p_id_producto, p_id_cliente, p_id_provincia, p_n_casa, p_nombre_calle, p_nombre_barrio, p_f_inicio, 'en almacen');
end //

create procedure sp_envios_actualizar_estado(
    in p_id_envio int,
    in p_nuevo_estado enum("en camino", "entregado", "en almacen", "reenviando"),
    in p_f_final datetime
)
begin
    update envios 
    set estado_env = p_nuevo_estado, f_final = p_f_final
    where id_envio = p_id_envio;
end //

create procedure sp_envios_pendientes()
begin
    select * from envios 
    where estado_env in ('en camino', 'en almacen', 'reenviando');
end //

create procedure sp_envios_por_cliente(
    in p_id_cliente int
)
begin
    select e.*, p.nombre as provincia
    from envios e
    inner join provincias p on e.id_provincia = p.id_provincia
    where e.id_cliente = p_id_cliente;
end //

create procedure sp_envios_eliminar(
    in p_id_envio int
)
begin
    delete from envios where id_envio = p_id_envio;
end //

delimiter ;

SQL
delimiter //

create procedure sp_ventas_insertar(
    in p_f_venta datetime,
    in p_cant_prod int,
    in p_tipo_pedido varchar(30),
    in p_id_producto int,
    in p_id_empleado int,
    in p_id_envio int,
    in p_id_pago int
)
begin
    insert into ventas (f_venta, cant_prod, tipo_pedido, id_producto, id_empleado, id_envio, id_pago)
    values (p_f_venta, p_cant_prod, p_tipo_pedido, p_id_producto, p_id_empleado, p_id_envio, p_id_pago);
end //

create procedure sp_ventas_por_rango_fechas(
    in p_fecha_desde datetime,
    in p_fecha_hasta datetime
)
begin
    select v.id_venta, v.f_venta, p.nombre as producto, v.cant_prod, e.nombre as empleado
    from ventas v
    inner join productos p on v.id_producto = p.id_producto
    inner join empleados e on v.id_empleado = e.id_empleado
    where v.f_venta between p_fecha_desde and p_fecha_hasta;
end //

create procedure sp_ventas_total_por_tipo(
    in p_tipo_pedido varchar(30),
    out p_monto_total float
)
begin
    select coalesce(sum(pg.monto), 0) into p_monto_total
    from ventas v
    inner join pagos pg on v.id_pago = pg.id_pago
    where v.tipo_pedido = p_tipo_pedido and pg.estado = 'confirmado';
end //

create procedure sp_ventas_producto_mas_vendido(
    out p_id_producto int,
    out p_nombre_producto varchar(35),
    out p_total_unidades int
)
begin
    select v.id_producto, p.nombre, sum(v.cant_prod) as total
    into p_id_producto, p_nombre_producto, p_total_unidades
    from ventas v
    inner join productos p on v.id_producto = p.id_producto
    group by v.id_producto, p.nombre
    order by total desc
    limit 1;
end //

create procedure sp_ventas_eliminar(
    in p_id_venta int
)
begin
    delete from ventas where id_venta = p_id_venta;
end //

delimiter ;
