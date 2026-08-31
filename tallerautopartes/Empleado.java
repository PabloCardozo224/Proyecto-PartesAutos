/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package tallerautopartes;

import javax.swing.JOptionPane;

/**
 *
 * @author Redes-20
 */
public class Empleado extends Persona{
    private int sueldo;
    private int legajo;
    private String horario;
    private int antiguedad;
    
    @Override 
    
    public void mostrarPersona(){
    JOptionPane.showInputDialog("sueldo" + sueldo + "legajo" + legajo + "horario" + horario + "antiiguedad" + antiguedad);
     JOptionPane.showInputDialog("Nombre" + nombre + "Apellido" + apellido + "mail" + mail + "direccion" + direccion + "telefono" + telefono + "edad" + edad +"dni" + dni + "frecuente" + frecuente);
  
    }

    public Empleado(int sueldo, int legajo, String horario, int antiguedad, String nombre, String apellido, String mail, String direccion, int telefono, int edad, int dni, boolean frecuente) {
        super(nombre, apellido, mail, direccion, telefono, edad, dni, frecuente);
        this.sueldo = sueldo;
        this.legajo = legajo;
        this.horario = horario;
        this.antiguedad = antiguedad;
    }

    public int getSueldo() {
        return sueldo;
    }

    public void setSueldo(int sueldo) {
        this.sueldo = sueldo;
    }

    public int getLegajo() {
        return legajo;
    }

    public void setLegajo(int legajo) {
        this.legajo = legajo;
    }

    public String getHorario() {
        return horario;
    }

    public void setHorario(String horario) {
        this.horario = horario;
    }

    public int getAntiguedad() {
        return antiguedad;
    }

    public void setAntiguedad(int antiguedad) {
        this.antiguedad = antiguedad;
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
