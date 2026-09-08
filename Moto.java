
package tallerautopartes;

import javax.swing.JOptionPane;


public class Moto extends Vehiculo{
    private String ProblemaMoto;
    
    @Override
    public void mostrarVehiculo(){
    JOptionPane.showInputDialog("Problema auto" + ProblemaMoto);   
    JOptionPane.showInputDialog("marca" + marca +"/n año " + año + "/n kilometraje" + kilometraje + "/n electronico" + electronico);
    
    }

    public String getProblemaMoto() {
        return ProblemaMoto;
    }

    public void setProblemaMoto(String ProblemaMoto) {
        this.ProblemaMoto = ProblemaMoto;
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

    public Moto(String ProblemaMoto, String marca, int año, int kilometraje, boolean electronico) {
        super(marca, año, kilometraje, electronico);
        this.ProblemaMoto = ProblemaMoto;
    }
}
