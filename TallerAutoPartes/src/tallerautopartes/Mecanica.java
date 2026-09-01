
package tallerautopartes;

import javax.swing.JOptionPane;


public class Mecanica extends Inventario{
    private int año;
private String funcion;

@Override
public void mostrarInventario(){
 JOptionPane.showInputDialog("año" + año + "funcion" + funcion);
 JOptionPane.showInputDialog("codigo de Parte" + codigoParte + "ubicacion de la parte" + UbicacionParte);
}

    public int getAño() {
        return año;
    }

    public void setAño(int año) {
        this.año = año;
    }

    public String getFuncion() {
        return funcion;
    }

    public void setFuncion(String funcion) {
        this.funcion = funcion;
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

    public Mecanica(int año, String funcion, int codigoParte, String UbicacionParte) {
        super(codigoParte, UbicacionParte);
        this.año = año;
        this.funcion = funcion;
    }
}
