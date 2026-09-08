
package tallerautopartes;

import javax.swing.JOptionPane;


public class Pedido {
    private String tipoPedido;
    private String descripcion;
    private String medioPago;
    private String fechaEntrega;
    private int total;
    
    public void mostrarPedido(){
    JOptionPane.showInputDialog("tipo de pedido" + tipoPedido + "descripcion" + descripcion + "medio de Pago" + medioPago + "fecha de entrega" + fechaEntrega + "total" + total);
    }

    public String getTipoPedido() {
        return tipoPedido;
    }

    public void setTipoPedido(String tipoPedido) {
        this.tipoPedido = tipoPedido;
    }

    public String getDescripcion() {
        return descripcion;
    }

    public void setDescripcion(String descripcion) {
        this.descripcion = descripcion;
    }

    public String getMedioPago() {
        return medioPago;
    }

    public void setMedioPago(String medioPago) {
        this.medioPago = medioPago;
    }

    public String getFechaEntrega() {
        return fechaEntrega;
    }

    public void setFechaEntrega(String fechaEntrega) {
        this.fechaEntrega = fechaEntrega;
    }

    public int getTotal() {
        return total;
    }

    public void setTotal(int total) {
        this.total = total;
    }

    public Pedido(String tipoPedido, String descripcion, String medioPago, String fechaEntrega, int total) {
        this.tipoPedido = tipoPedido;
        this.descripcion = descripcion;
        this.medioPago = medioPago;
        this.fechaEntrega = fechaEntrega;
        this.total = total;
    }
}
