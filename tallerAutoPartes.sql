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




create table pagos(
id_pago int auto_increment,
id_pedido int,
metodo enum ('efectivo', 'transferencia', 'tarjeta de debito'),
monto float (50),
estado enum('pendiente', 'confirmado', 'denegado'),
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

use autopartes;


insert into provincias (nombre, localidad) values
('buenos aires', 'la plata'), 
('buenos aires', 'mar del plata'), 
('buenos aires', 'bahia blanca'), 
('buenos aires', 'tandil'), 
('buenos aires', 'quilmes'),
('cordoba', 'cordoba capital'),
 ('cordoba', 'villa maria'),
 ('cordoba', 'rio cuarto'), 
 ('cordoba', 'carlos paz'), 
 ('cordoba', 'alta gracia'), 
('santa fe', 'santa fe capital'), 
('santa fe', 'rosario'), 
('santa fe', 'rafaela'), 
('santa fe', 'venado tuerto'), 
('santa fe', 'reconquista'),
('mendoza', 'mendoza capital'),
 ('mendoza', 'san rafael'), 
 ('mendoza', 'godoy cruz'),
 ('mendoza', 'maipu'),
 ('mendoza', 'lujan de cuyo'),
('tucuman', 'san miguel de tucuman'),
 ('tucuman', 'yerba buena'), 
 ('tucuman', 'concepcion'),
 ('tucuman', 'tafi viejo'),
('salta', 'salta capital'),
 ('salta', 'san ramon de la nueva oran'),
 ('salta', 'tartagal'),
 ('salta', 'cafayate'),
('entre rios', 'parana'),
 ('entre rios', 'concordia'),
 ('entre rios', 'gualeguaychu'),
('chaco', 'resistencia'), 
('chaco', 'saenz peña'),
('corrientes', 'corrientes capital'), 
('corrientes', 'goya'),
('misiones', 'posadas'), 
('misiones', 'obera'),
('rio negro', 'bariloche'),
 ('rio negro', 'viedma'),
  ('santa cruz', 'calafate'),
('chubut', 'comodoro rivadavia');

insert into clientes (nombre, apellido, dni, telefono, direccion) values
('juan', 'perez', 30111222, 1144445555, 'av de mayo 123'), 
('maria', 'gomez', 31222333, 1155556666, 'rivadavia 456'),
('carlos', 'rodriguez', 32333444, 1166667777, 'corrientes 789'),
 ('ana', 'fernandez', 33444555, 3414445555, 'san martin 1011'),
('luis', 'lopez', 34555666, 3515556666, 'colon 1213'),
 ('laura', 'martinez', 35666777, 2616667777, 'belgrano 1415'),
('diego', 'gonzalez', 36777888, 3817778888, 'mitre 1617'),
 ('sofia', 'alvarez', 37888999, 3878889999, 'balcarce 1819'),
('pedro', 'romero', 38999000, 3439990000, 'urquiza 2021'),
 ('lucia', 'benitez', 39000111, 3620001111, 'sarmiento 2223'),
('marcelo', 'diaz', 40111222, 3791112222, 'junin 2425'),
 ('valeria', 'silva', 41222333, 3762223333, 'ayacucho 2627'),
('martin', 'sanchez', 42333444, 2943334444, 'moreno 2829'),
 ('camila', 'romano', 43444555, 2974445555, 'av chile 3031'),
('jorge', 'torres', 29111222, 1122223333, 'lavalle 111'),
 ('elena', 'ruiz', 28222333, 1133334444, 'callao 222'),
('ricardo', 'castro', 27333444, 1144445556, 'pueyrredon 333'),
 ('claudia', 'morales', 26444555, 3415556667, 'pellegrini 444'),
('gabriel', 'herrera', 25555666, 3516667778, 'general paz 555'),
 ('patricia', 'medina', 24666777, 2617778889, 'las heras 666'),
('andres', 'castillo', 23777888, 3818889990, 'avellaneda 777'),
 ('natalia', 'castro', 22888999, 3879990001, 'alvarado 888'),
('javier', 'ortiz', 21999000, 3431112222, '25 de mayo 999'),
 ('monica', 'suarez', 20000111, 3622223333, '9 de julio 101'),
('fernando', 'blanco', 19111222, 3793334444, 'caseros 202'),
 ('silvia', 'mendez', 18222333, 3764445555, 'bolivar 303'),
('hugo', 'acosta', 17333444, 2945445555, 'elflein 404'), 
('beatriz', 'gutierrez', 16444555, 2976667777, 'alsina 505'),
('claudio', 'garcia', 30999888, 1167891234, 'corrientes 4500'),
 ('marina', 'vidal', 32444555, 1123456789, 'cabildo 1200'),
('sergio', 'pereyra', 31555666, 3419876543, 'mendoza 3400'),
 ('daniela', 'rios', 33666777, 3511234567, 'olmos 800'),
('gustavo', 'gimenez', 34777888, 2619876543, 'san martin 500'),
('paula', 'ledesma', 35888999, 3811234567, 'muñecas 200'),
('mariano', 'insaurralde', 36999000, 3879876543, 'mitre 150'),
 ('veronica', 'flores', 37000111, 3431234567, 'ramirez 600'),
('ezequiel', 'rossi', 38111222, 3629876543, 'alberdi 900'), 
('florencia', 'luna', 39222333, 3791234567, 'veracruz 1500'),
('cristian', 'duarte', 40333444, 3769876543, 'urquiza 1800'),
('pedro', 'parker', 40133414, 316923633411, 'urquiza 1880'),
 ('roberta', 'campos', 41444555, 2941234567, 'mitre 400');
	
insert into empleados (nombre, apellido, dni, telefono, puesto, rol) values
('marcos', 'rojo', 30111001, 1120003001, 'vendedor', 'atencion al cliente'),
 ('pablo', 'perez', 31222002, 1120003002, 'vendedor', 'atencion al cliente'),
('enzo', 'fernandez', 32333003, 1120003003, 'cajero', 'gestion de cobros'), 
('franco', 'armani', 33444004, 1120003004, 'repositor', 'logistica interna'),
('julian', 'alvarez', 34555005, 1120003005, 'gerente', 'administrador general'),
 ('lionel', 'scaloni', 25666006, 1120003006, 'supervisor', 'control de personal'),
('rodrigo', 'de paul', 36777007, 1120003007, 'repartidor', 'envios locales'),
 ('lautaro', 'martinez', 37888008, 1120003008, 'vendedor', 'atencion al cliente'),
('angel', 'di maria', 28999009, 1120003009, 'vendedor', 'ventas mayoristas'), 
('nicolas', 'otamendi', 29000010, 1120003010, 'seguridad', 'vigilancia'),
('nahuel', 'molina', 40111011, 1120003011, 'repositor', 'logistica interna'), 
('cristian', 'romero', 41222012, 1120003012, 'mecanico', 'soporte tecnico'),
('lisandro', 'martinez', 42333013, 1120003013, 'vendedor', 'atencion al cliente'),
 ('marcos', 'acuña', 33444014, 1120003014, 'cadete', 'envios locales'),
('leandro', 'paredes', 34555015, 1120003015, 'cajero', 'gestion de cobros'),
 ('gonzalo', 'montiel', 35666016, 1120003016, 'repositor', 'logistica interna'),
('german', 'pezzella', 30777017, 1120003017, 'supervisor', 'control de stock'),
 ('guido', 'rodriguez', 31888018, 1120003018, 'vendedor', 'atencion al cliente'),
('alejandro', 'gomez', 28999019, 1120003019, 'vendedor', 'atencion al cliente'),
 ('alexis', 'mac allister', 40000020, 1120003020, 'cajero', 'gestion de cobros'),
('paulo', 'dybala', 34111021, 1120003021, 'vendedor', 'ventas online'),
 ('joaquin', 'correa', 35222022, 1120003022, 'repositor', 'logistica interna'),
('juan', 'foyth', 39333023, 1120003023, 'repartidor', 'envios locales'),
 ('geronimo', 'rulli', 32444024, 1120003024, 'seguridad', 'vigilancia'),
('emiliano', 'martinez', 33555025, 1120003025, 'supervisor', 'encargado de sucursal'), 
('walter', 'samuel', 20666026, 1120003026, 'gerente', 'administrador adjunto'),
('pablo', 'aimar', 21777027, 1120003027, 'supervisor', 'capacitador'), 
('roberto', 'ayala', 22888028, 1120003028, 'seguridad', 'jefe de seguridad'),
('facundo', 'medina', 43999029, 1120003029, 'vendedor', 'atencion al cliente'), 
('nehuen', 'perez', 44000030, 1120003030, 'repositor', 'logistica interna'),
('lucas', 'ocampos', 35111031, 1120003031, 'vendedor', 'ventas online'), 
('emiliano', 'buendia', 36222032, 1120003032, 'cajero', 'gestion de cobros'),
('giovani', 'lo celso', 37333033, 1120003033, 'vendedor', 'atencion al cliente'),
 ('nicolas', 'gonzalez', 38444034, 1120003034, 'cadete', 'envios locales'),
('lucas', 'alario', 32555035, 1120003035, 'repositor', 'logistica interna'),
 ('giovanni', 'simeone', 33666036, 1120003036, 'vendedor', 'atencion al cliente'),
('exequiel', 'palacios', 40777037, 1120003037, 'cajero', 'gestion de cobros'),
 ('thiago', 'almada', 44888038, 1120003038, 'repartidor', 'envios locales'),
('nicolas', 'tagliafico', 34999039, 1120003039, 'supervisor', 'control de despacho'),
 ('yasuri', 'yamilet', 45003334, 1120203340, 'repartidor', 'envios locales'),
 ('piero', 'hincapie', 45000040, 1120003040, 'repositor', 'logistica interna');

insert into productos (nombre, descripcion, tipo_parte, tamaño, cantidad, precio, color, modelo) values
('amortiguador delantero', 'amortiguador para corsa', 'suspension', 'mediano', 100, 45000.00, 'negro', 'chevrolet corsa 2010'),
('pastilla de freno', 'pastillas ceramicas hilux', 'frenos', 'chico', 150, 25000.00, 'gris', 'toyota hilux 2015'),
('filtro de aceite', 'filtro de aceite gol trend', 'motor', 'chico', 300, 8500.00, 'blanco', 'volkswagen gol trend'),
('optica derecha', 'optica delantera fiat palio', 'iluminacion', 'grande', 40, 65000.00, 'transparente', 'fiat palio 2012'),
('bateria 12v 75ah', 'bateria de alta duracion', 'electricidad', 'mediano', 60, 95000.00, 'negro', 'universal'),
('bomba de agua', 'bomba de agua peugeot 208', 'motor', 'mediano', 50, 38000.00, 'gris aluminio', 'peugeot 208 2018'),
('correa de distribucion', 'correa dentada ford fiesta', 'motor', 'chico', 120, 15000.00, 'negro', 'ford fiesta kinetic'),
('disco de freno', 'par de discos delanteros bora', 'frenos', 'mediano', 70, 55000.00, 'gris metal', 'volkswagen bora'),
('radiador de agua', 'radiador motor renault clio', 'motor', 'grande', 35, 72000.00, 'negro', 'renault clio mio'),
('bujia de encendido', 'bujia ngk iridium unida', 'electricidad', 'chico', 500, 6000.00, 'blanco', 'universal'),
('espejo retrovisor', 'espejo electrico izquierdo', 'carroceria', 'mediano', 45, 28000.00, 'negro', 'ford ecosport'),
('paragolpes delantero', 'paragolpes listo para pintar', 'carroceria', 'grande', 20, 110000.00, 'gris primer', 'fiat cronos'),
('filtro de aire', 'filtro de aire original ford', 'motor', 'chico', 200, 9000.00, 'amarillo', 'ford ranger'),
('alternador 12v', 'alternador completo renovado', 'electricidad', 'mediano', 15, 140000.00, 'gris', 'renault kangoo'),
('motor de arranque', 'burro de arranque completo', 'electricidad', 'mediano', 22, 125000.00, 'negro', 'chevrolet onix'),
('kit embrague', 'placa, disco y ruleman', 'transmision', 'grande', 30, 190000.00, 'gris', 'volkswagen amrok'),
('homocinetica', 'junta homocinetica lado rueda', 'transmision', 'chico', 85, 23000.00, 'negro', 'fiat uno fire'),
('parrilla de suspension', 'parrilla delantera derecha', 'suspension', 'mediano', 40, 34000.00, 'negro', 'peugeot 308'),
('cazoleta amortiguador', 'cazoleta delantera con crapodina', 'suspension', 'chico', 90, 18000.00, 'negro', 'renault sandero'),
('rotula suspension', 'rotula inferior delantera', 'suspension', 'chico', 110, 12500.00, 'gris', 'toyota etios'),
('extremo de direccion', 'extremo largo derecho', 'direccion', 'chico', 130, 14000.00, 'negro', 'chevrolet prisma'),
('cremallera direccion', 'cremallera hidraulica completa', 'direccion', 'grande', 12, 210000.00, 'gris aluminio', 'ford focus 2'),
('cremallera direccion', 'cremallera hidraulica completa', 'direccion', 'chico', 11, 210000.00, 'gris aluminio', 'volkswagen amrok'),
('semieje derecho', 'semieje completo con juntas', 'transmision', 'grande', 18, 98000.00, 'negro', 'peugeot 207');
