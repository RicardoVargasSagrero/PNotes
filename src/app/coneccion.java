/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;

import java.sql.Connection;
import java.sql.DriverManager;
import javax.swing.JOptionPane;

/**
 *
 * @author Ricardo
 */
public class coneccion {
    private static final String url = "jdbc:mysql://localhost:3306/notes?autoReconnect=true&useSSL=false";
    private static final String user = "root";
    private static String password = "1234";
    
    public Connection getConection(){
        Connection con = null;
        try{
            Class.forName("com.mysql.jdbc.Driver");
            con = DriverManager.getConnection(url, user, password);
            //JOptionPane.showMessageDialog(null,"Conexion exitosa");
        }catch(Exception ex){
            
            JOptionPane.showMessageDialog(null,"Error en la conexión con la base de datos");
            ex.printStackTrace();
        }
        return con;
    } 
    
}
