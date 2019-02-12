/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;

/**
 *
 * @author Ricardo
 */
public class NuevoPedido {
    private int id_cliente; /*Id realicionado con el nombre de cliente*/
    private String cliente;/*Nombre del cliente*/
    private String domicilio;
    private String num_casa;
    private String num_oficina;
    private String fecha_evento;
    private int num_evento;
    private String fecha_pedido;
    private String detalles_pedido;
    private double subtotal;
    private double deposito;
    private double total;
    private String correo;
    
    public NuevoPedido(){
        this.id_cliente = 0;
        this.cliente = "";
        this.num_casa = "";
        this.fecha_evento = "";
    }
    public NuevoPedido(String c, String d, String numC,String numO,String fe,int numE,String fep,String deta,double subt, double dep,double t,String cor){
        this.cliente = c;
        this.domicilio = d;
        this.fecha_evento = fe;
        this.num_casa = numC;
        this.num_oficina = numO;
        this.num_evento = numE;
        this.fecha_pedido = fep;
        this.detalles_pedido = deta;
        this.deposito = dep;
        this.subtotal = subt;
        this.total = t;
        this.correo = cor;
    }
    public String getCorreo(){
        return correo;
    }
    public String getCliente(){
        return cliente;
    }
    public String getDomicilio(){
        return domicilio;
    }
    public String getNumCasa(){
        return num_casa;
    }
    public String getNumOficina(){
        return num_oficina;
    }
    public int getNumEvento(){
        return num_evento;
    }
    public String getFecha_evento(){
        return fecha_evento;
    }
    public String getFecha_pedido(){
        return fecha_pedido;
    }
    public String get_detallePedido(){
        return detalles_pedido;
    }
    public double get_deposito(){
        return deposito;
    }
    public double get_subtotal(){
        return subtotal;
    }
    public double get_total(){
        return total;
    }
}
