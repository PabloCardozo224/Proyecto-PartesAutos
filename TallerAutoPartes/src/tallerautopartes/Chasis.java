
package tallerautopartes;

import javax.swing.JOptionPane;


public class Chasis extends Inventario{
    private int año;
    private String parte;
    private String color;

    @Override
    public void mostrarInventario(){
    JOptionPane.showInputDialog("año" + año + "parte" + parte + "color" + color);
    JOptionPane.showInputDialog("codigo de Parte" + codigoParte + "ubicacion de la parte" + UbicacionParte);
    }

    public int getAño() {
        return año;
    }

    public void setAño(int año) {
        this.año = año;
    }

    public String getParte() {
        return parte;
    }

    public void setParte(String parte) {
        this.parte = parte;
    }

    public String getColor() {
        return color;
    }

    public void setColor(String color) {
        this.color = color;
    }

    public int getCodigoParte() {
        return codigoParte;
    }

    public void setCodigoParte(int codigoParte) {
        this.codigoParte = codigoParte;
    }

    public String getUbicacionParte() {
        return UbicacionParte;
    }

    public void setUbicacionParte(String UbicacionParte) {
        this.UbicacionParte = UbicacionParte;
    }

    public Chasis(int año, String parte, String color, int codigoParte, String UbicacionParte) {
        super(codigoParte, UbicacionParte);
        this.año = año;
        this.parte = parte;
        this.color = color;
    }
}
