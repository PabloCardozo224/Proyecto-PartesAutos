
package tallerautopartes;

import java.util.ArrayList;
import javax.swing.JOptionPane;


public class Empresa {
    private String nombre;
    private int stock;
    private int codigo;
    private ArrayList<Inventario>Lista_Inventario;
    private ArrayList<Vehiculo>Lista_Vehiculo;
    private ArrayList<Persona>Lista_Persona;
    private ArrayList<Pedido>Lista_Pedido;

    public Empresa(String nombre, int stock, int codigo) {
        this.nombre = nombre;
        this.stock = stock;
        this.codigo = codigo;
        this.Lista_Inventario = new ArrayList<>();
        this.Lista_Vehiculo = new ArrayList<>();
        this.Lista_Persona = new ArrayList<>();
        this.Lista_Pedido = new ArrayList<>();
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public int getCodigo() {
        return codigo;
    }

    public void setCodigo(int codigo) {
        this.codigo = codigo;
    }
    public Persona buscarPersona (String nombre){
        for (Persona p : Lista_Persona){
            if(p.getNombre().equalsIgnoreCase(nombre)){
            return p;
            }
        }
        return null;
    }          
    public Inventario buscarInventario (String UbicacionParte){
        for (Inventario i : Lista_Inventario){
            if(i.getUbicacionParte().equalsIgnoreCase(UbicacionParte)){
            return i;
            }
        }
        return null;
    } 
    public Vehiculo buscarVehiculo (String marca){
        for (Vehiculo v : Lista_Vehiculo){
            if(v.getMarca().equalsIgnoreCase(marca)){
            return v;
            }
        }
        return null;
    } 
    public Pedido buscarPedido (String tipoPedido){
        for (Pedido p1 : Lista_Pedido){
            if(p1.getTipoPedido().equalsIgnoreCase(tipoPedido)){
            return p1;
            }
        }
        return null;
    } 
    public void eliminarPersona (String nombre){
        Persona p= buscarPersona(nombre);
        if(p!=null){
            Lista_Persona.remove(p);
            JOptionPane.showMessageDialog(null, "Persona eliminada");
        }else{
            JOptionPane.showMessageDialog(null, "Persona no encontrada");
        }
    }
    
    public void eliminarInventario (String ubicacionParte){
        Inventario i= buscarInventario(ubicacionParte);
        if(i!=null){
            Lista_Inventario.remove(i);
            JOptionPane.showMessageDialog(null, "Inventario eliminado");
        }else{
            JOptionPane.showMessageDialog(null, "Inventario no encontrado");
        }
    }
    
    public void eliminarVehiculo (String marca){
        Vehiculo v= buscarVehiculo(marca);
        if(v!=null){
            Lista_Vehiculo.remove(v);
            JOptionPane.showMessageDialog(null, "Vehiculo eliminado");
        }else{
            JOptionPane.showMessageDialog(null, "Vehiculo no encontrado");
        }
    }
    
    public void eliminarPedido (String tipoPedido){
        Pedido p1= buscarPedido(tipoPedido);
        if(p1!=null){
            Lista_Pedido.remove(p1);
            JOptionPane.showMessageDialog(null, "Pedido eliminado");
        }else{
            JOptionPane.showMessageDialog(null, "Pedido no encontrado");
        }
    }
    
    public void agregarPersona(Persona p){
    Lista_Persona.add(p);
    }
    
    public void agregarInventario(Inventario i){
        Lista_Inventario.add(i);
    }
    
    public void agregarVehiculo(Vehiculo v){
        Lista_Vehiculo.add(v);
    }
    
    public void agregarPedido(Pedido p1){
        Lista_Pedido.add(p1);
    }
    
    public void editarPersonas(String nomrbe){
        Persona persona = buscarPersona(nombre);{}
        if(persona == null){
        JOptionPane.showMessageDialog(null, "No se encontro una persona con ese nombre");
        return;
    }

        String nuevoNombre = JOptionPane.showInputDialog("Ingrese el nuevo nombre");
        String nuevoApellido = JOptionPane.showInputDialog("Ingrese el nuevo apellido");
        int edad = Integer.parseInt(JOptionPane.showInputDialog("Ingrese la nueva edad"));
        persona.setNombre(nuevoNombre);
        persona.setApellido(nuevoApellido);
        persona.setEdad(edad);
        

    }
}
