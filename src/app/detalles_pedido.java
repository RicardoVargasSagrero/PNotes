package app;

/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author Ricardo
 */
public class detalles_pedido{ 
    private int id_producto;
    private int cantidad;
    private float precio;
    
    public detalles_pedido(int id_pro,int c,float p){
        this.id_producto = id_pro;
        this.cantidad = c;
        this.precio = p;
    }
    public int getID_producto(){
        return id_producto;
    }
    public int getCantidad(){
        return cantidad;
    }
    public float precio(){
        return precio;
    }
}
