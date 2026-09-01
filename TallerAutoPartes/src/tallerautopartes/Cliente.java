
package tallerautopartes;

import javax.swing.JOptionPane;


public class Cliente extends Persona{
    private int id_cliente;
   private int cantidadPedidos;
   
   @Override
   
   public void mostrarPersona(){
   JOptionPane.showInputDialog("id cliente" + id_cliente + "cantidad de pedidos" + cantidadPedidos);
   JOptionPane.showInputDialog("Nombre" + nombre + "Apellido" + apellido + "mail" + mail + "direccion" + direccion + "telefono" + telefono + "edad" + edad + "dni" + dni + "frecuente" + frecuente);
   }

    public Cliente(int id_cliente, int cantidadPedidos, String nombre, String apellido, String mail, String direccion, int telefono, int edad, int dni, boolean frecuente) {
        super(nombre, apellido, mail, direccion, telefono, edad, dni, frecuente);
        this.id_cliente = id_cliente;
        this.cantidadPedidos = cantidadPedidos;
    }

    public int getId_cliente() {
        return id_cliente;
    }

    public void setId_cliente(int id_cliente) {
        this.id_cliente = id_cliente;
    }

    public int getCantidadPedidos() {
        return cantidadPedidos;
    }

    public void setCantidadPedidos(int cantidadPedidos) {
        this.cantidadPedidos = cantidadPedidos;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getApellido() {
        return apellido;
    }

    public void setApellido(String apellido) {
        this.apellido = apellido;
    }

    public String getMail() {
        return mail;
    }

    public void setMail(String mail) {
        this.mail = mail;
    }

    public String getDireccion() {
        return direccion;
    }

    public void setDireccion(String direccion) {
        this.direccion = direccion;
    }

    public int getTelefono() {
        return telefono;
    }

    public void setTelefono(int telefono) {
        this.telefono = telefono;
    }

    public int getEdad() {
        return edad;
    }

    public void setEdad(int edad) {
        this.edad = edad;
    }

    public int getDni() {
        return dni;
    }

    public void setDni(int dni) {
        this.dni = dni;
    }

    public boolean isFrecuente() {
        return frecuente;
    }

    public void setFrecuente(boolean frecuente) {
        this.frecuente = frecuente;
    }
}
