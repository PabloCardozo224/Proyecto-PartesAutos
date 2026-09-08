
package tallerautopartes;


public abstract class Inventario {
    protected int codigoParte;
    protected String UbicacionParte;
    
    public abstract void mostrarInventario();

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

    public Inventario(int codigoParte, String UbicacionParte) {
        this.codigoParte = codigoParte;
        this.UbicacionParte = UbicacionParte;
    }
}
