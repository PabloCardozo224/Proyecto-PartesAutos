
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
    }
    }
}
    
    

