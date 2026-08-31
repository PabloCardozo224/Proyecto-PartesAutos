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
public class Camion extends Vehiculo{
    private  String problemaCamion;
    
    @Override
    public void mostrarVehiculo(){
    JOptionPane.showInputDialog("problema camion" + problemaCamion);
    JOptionPane.showInputDialog("marca" + marca +"/n año " + año + "/n kilometraje" + kilometraje + "/n electronico" + electronico);
    }

    public String getProblemaCamion() {
        return problemaCamion;
    }

    public void setProblemaCamion(String problemaCamion) {
        this.problemaCamion = problemaCamion;
    }

    public String getMarca() {
        return marca;
    }

    public void setMarca(String marca) {
        this.marca = marca;
    }

    public int getAño() {
        return año;
    }

    public void setAño(int año) {
        this.año = año;
    }

    public int getKilometraje() {
        return kilometraje;
    }

    public void setKilometraje(int kilometraje) {
        this.kilometraje = kilometraje;
    }

    public boolean isElectronico() {
        return electronico;
    }

    public void setElectronico(boolean electronico) {
        this.electronico = electronico;
    }

    public Camion(String problemaCamion, String marca, int año, int kilometraje, boolean electronico) {
        super(marca, año, kilometraje, electronico);
        this.problemaCamion = problemaCamion;
    }
}
