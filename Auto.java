
package tallerautopartes;

import javax.swing.JOptionPane;


public class Auto extends Vehiculo{
     private String ProblemaAuto;

    @Override
    public void mostrarVehiculo(){
    JOptionPane.showInputDialog("Problema auto" + ProblemaAuto);   
    JOptionPane.showInputDialog("marca" + marca + "/n año " + año, "/n kilometraje" + kilometraje + "/n electronico" + electronico);
    
    }

    public String getProblemaAuto() {
        return ProblemaAuto;
    }

    public void setProblemaAuto(String ProblemaAuto) {
        this.ProblemaAuto = ProblemaAuto;
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

    public Auto(String ProblemaAuto, String marca, int año, int kilometraje, boolean electronico) {
        super(marca, año, kilometraje, electronico);
        this.ProblemaAuto = ProblemaAuto;
    }
}

