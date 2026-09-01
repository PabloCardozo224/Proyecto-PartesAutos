
package tallerautopartes;


public abstract class Vehiculo {
    protected String marca ;
    protected int año;
    protected int kilometraje;
    protected boolean electronico;

   public abstract void mostrarVehiculo();

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

    public Vehiculo(String marca, int año, int kilometraje, boolean electronico) {
        this.marca = marca;
        this.año = año;
        this.kilometraje = kilometraje;
        this.electronico = electronico;
    }

}
