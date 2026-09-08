
package tallerautopartes;

import javax.swing.JOptionPane;


public class TallerAutoPartes {

    
    public static void main(String[] args) {
        String nombre=JOptionPane.showInputDialog("Ingrese el nombre de la Empresa:");
        int stock=Integer.parseInt(JOptionPane.showInputDialog("Ingrese el stock:"));
        int codigo=Integer.parseInt(JOptionPane.showInputDialog("Ingrese el codigo:"));
        
        Empresa emp=new Empresa(nombre, stock, codigo);
        
        
        JOptionPane.showMessageDialog(null,   "Ingrese el numero de la opcion que desea realizar"
                                            + "\n1) Agregar Auto"
                                            + "\n2) Agregar Moto"
                                            + "\n3) Agregar Camion"
                                            + "\n4) Agregar Cliente"
                                            + "\n5) Agregar Empleado"
                                            + "\n6) Agregar Chasis"
                                            + "\n7) Agregar Mecanica"
                                            + "\n8) Agregar Pedido"
                                            + "\n9) Buscar"
                                            + "\n10) Eliminar"
                                            + "\n11) Editar");
        int opcion = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la opcion."));
        switch(opcion){
            case 1:
        int cantA = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la cantidad de autos: "));
        
        for(int a=0;a<cantA; a++){
            String marca=JOptionPane.showInputDialog("Ingrese la marca:");
            int anio=Integer.parseInt(JOptionPane.showInputDialog("Ingrese el anio del vehiculo:"));
            int kilometraje=Integer.parseInt(JOptionPane.showInputDialog("Ingrese los kilometros:"));
            boolean electrico =Boolean.parseBoolean("indique si es electronico:");
            String ProblemaAuto=JOptionPane.showInputDialog("Ingrese el problema del aut:");
            Auto auto= new Auto(ProblemaAuto, marca, anio, kilometraje, electrico);
            
            emp.agregarVehiculo(auto);
        }
        break;
            case 2:
            int cantM = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la cantidad de motos: "));
        
        for(int m=0;m<cantM;m++){
         String marca=JOptionPane.showInputDialog("Ingrese la marca:");
            int anio=Integer.parseInt(JOptionPane.showInputDialog("Ingrese el anio del vehiculo:"));
            int kilometraje=Integer.parseInt(JOptionPane.showInputDialog("Ingrese los kilometros:"));
            boolean electrico =Boolean.parseBoolean("indique si es electronico:");
            String ProblemaMoto=JOptionPane.showInputDialog("Ingrese el problema de la moto: ");
            
             Moto moto= new Moto(ProblemaMoto, marca, anio, kilometraje, electrico);
            emp.agregarVehiculo(moto);
        }
        break;
            case 3:
        int cantC = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la cantidad de camion: "));
        
        for(int c=0;c<cantC;c++){
         String marca=JOptionPane.showInputDialog("Ingrese la marca:");
            int anio=Integer.parseInt(JOptionPane.showInputDialog("Ingrese el anio del vehiculo:"));
            int kilometraje=Integer.parseInt(JOptionPane.showInputDialog("Ingrese los kilometros:"));
            boolean electrico =Boolean.parseBoolean("indique si es electronico:");
            String ProblemaCamion=JOptionPane.showInputDialog("Ingrese el problema del camion: ");
            
             Camion camion= new Camion(ProblemaCamion, marca, anio, kilometraje, electrico);
            emp.agregarVehiculo(camion);
        }
        break;
              case 4:
        int cantD = Integer.parseInt(JOptionPane.showInputDialog("Ingrese Cuantos Clientes quiere ingresar: "));
        
        for(int c=0;c<cantD;c++){
            int id_cliente = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el id del cliente"));
            int cantidadpedidos=Integer.parseInt(JOptionPane.showInputDialog("Ingrese la cantidad de pedidos:"));
            String nombreC = JOptionPane.showInputDialog("Ingrese el nombre del cliente");
            String ApellidoC = JOptionPane.showInputDialog("Ingrese el apellido del cliente");
            String mailC=JOptionPane.showInputDialog("Ingrese el email del Cliente: ");
            String direccionC = JOptionPane.showInputDialog("Ingrese la direccion del cliente: ");
            int telefonoC = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la direccion del cliente: "));
            int edadC = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la edad del cliente: "));
            int dniC = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el dni del cliente: "));
            boolean FrecuenteC = Boolean.parseBoolean(JOptionPane.showInputDialog("El cliente es frecuente?: "));
            
            Cliente cliente = new Cliente(id_cliente, cantidadpedidos, nombreC, ApellidoC, mailC, direccionC, telefonoC, edadC, dniC, FrecuenteC);
            emp.agregarPersona(cliente);
        }
        break;
        case 5:
        int cantE = Integer.parseInt(JOptionPane.showInputDialog("Ingrese Cuantos Empleados quiere ingresar: "));
        
        for(int c=0;c<cantE;c++){
            int sueldo = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el sueldo del empleado: "));
            int legajo = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el legajo del empleado: "));
            String horario = JOptionPane.showInputDialog("Ingrese el horario del empleado: ");
            int antiguedad = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la antiguedad del empleado: "));
            String nombreE = JOptionPane.showInputDialog("Ingrese el nombre del empleado: ");
            String ApellidoE = JOptionPane.showInputDialog("Ingrese el apellido del empleado: ");
            String mailE=JOptionPane.showInputDialog("Ingrese el email del empleado: ");
            String direccionE = JOptionPane.showInputDialog("Ingrese la direccion del empleado: ");
            int telefonoE = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la direccion del empleado: "));
            int edadE = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la edad del empleado: "));
            int dniE = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el dni del empleado: "));
            boolean FrecuenteE = Boolean.parseBoolean(JOptionPane.showInputDialog("El empleado es frecuente?: "));
            
            Empleado empleado = new Empleado(sueldo, legajo, horario, antiguedad, nombreE, ApellidoE, mailE, direccionE, telefonoE, edadE, dniE, FrecuenteE);
            emp.agregarPersona(empleado);
        }
        break;
              case 6:
        int cantF = Integer.parseInt(JOptionPane.showInputDialog("Ingrese Cuantos Chasis quiere ingresar: "));
        
        for(int c=0;c<cantF;c++){
            int año = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el año del chasis: "));
            String parte = JOptionPane.showInputDialog("Ingrese la parte del chasis: ");
            String color = JOptionPane.showInputDialog("Ingrese el color del chasis: ");
            int codigoparteC = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el codigo de la parte del chasis: "));
            String ubicacionparteC = JOptionPane.showInputDialog("Ingrese la ubicacion de la parte del chasis: ");
            
            Chasis chasis = new Chasis(año, parte, color, codigoparteC, ubicacionparteC);
            emp.agregarInventario(chasis);
        }
        break;
        case 7:
        int cantG = Integer.parseInt(JOptionPane.showInputDialog("Ingrese Cuanta Mecanica quiere que tenga el auto: "));
        
        for(int c=0;c<cantG;c++){
            int año = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el año de la parte mecanica: "));
            String funcion = JOptionPane.showInputDialog("Ingrese la funcion de la parte mecanica: ");
            int codigoparteC = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el codigo de la parte de la parte mecanica: "));
            String ubicacionparteC = JOptionPane.showInputDialog("Ingrese la ubicacion de la parte de la parte mecanica: ");
            
            Mecanica mecanica = new Mecanica(año, funcion, codigoparteC, ubicacionparteC);
            emp.agregarInventario(mecanica);
        }
        break;
        case 8:
        int cantP = Integer.parseInt(JOptionPane.showInputDialog("Ingrese Cuantos pedidos quiere ingresar: "));
        
        for(int c=0;c<cantP;c++){
            String tipoPedido = JOptionPane.showInputDialog("Ingrese el tipo de pedido: ");
            String descripcion = JOptionPane.showInputDialog("Ingrese la descripcion del pedido: ");
            String mediopago = JOptionPane.showInputDialog("Ingrese el medio de pago a usar: ");
            String Fechaentrega = JOptionPane.showInputDialog("Ingrese la fecha de entrega: ");
            int total = Integer.parseInt(JOptionPane.showInputDialog("Ingrese el total del pedido"));
            
            Pedido pedido = new Pedido(tipoPedido, descripcion, mediopago, Fechaentrega, total);
            emp.agregarPedido(pedido);
        }
        break;
        case 9:
        JOptionPane.showMessageDialog(null,   "Ingrese el numero de lo que quiere buscar"
                                            + "\n1) Buscar Persona"
                                            + "\n2) Buscar Vehiculo"
                                            + "\n3) Buscar Pedido"
                                            + "\n4) Buscar inventario");
        int opcionBuscar = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la opcion."));
        switch(opcionBuscar){
            case 1:
                emp.buscarPersona(nombre);
                break;
            case 2:
                emp.buscarVehiculo(nombre);
            break;
            case 3:
                emp.buscarPedido(nombre);
            break;
            case 4:
                emp.buscarInventario(nombre);
        }
        break;
        case 10:
        JOptionPane.showMessageDialog(null,   "Ingrese el numero de lo que quiere eliminar"
                                            + "\n1) Eliminar Persona"
                                            + "\n2) Eliminar Vehiculo"
                                            + "\n3) Eliminar Pedido"
                                            + "\n4) Eliminar inventario");
        int opcionEliminar = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la opcion."));
        switch(opcionEliminar){
            case 1:
                emp.eliminarPersona(nombre);
                break;
            case 2:
                emp.eliminarVehiculo(nombre);
            break;
            case 3:
                emp.eliminarPedido(nombre);
            break;
            case 4:
                emp.eliminarInventario(nombre);
        }
        break;
    }
    
    }
    
}
