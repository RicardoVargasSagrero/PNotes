/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package app;

import java.sql.Connection;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.HashMap;
import java.util.Map;
import static javax.swing.WindowConstants.DISPOSE_ON_CLOSE;
import net.sf.jasperreports.engine.JRException;
import net.sf.jasperreports.engine.JasperFillManager;
import net.sf.jasperreports.engine.JasperPrint;
import net.sf.jasperreports.engine.JasperReport;
import net.sf.jasperreports.engine.util.JRLoader;
import net.sf.jasperreports.view.JasperViewer;

/**
 *
 * @author Ricardo
 * This is a template to call a Jasper Report
 */
public class jReport {
    private JasperReport reporte = null;
    private static final String path = "pnotes\\Pedido_v3.jasper";
    private ResultSet id = null;
    private String consulta = null;
    private Statement s; 
    private Connection con;
    
    public jReport(){
        coneccion c = new coneccion();
        this.con = c.getConection();
    }
    public jReport(String c){
        this.consulta = c;
    }
    public void getReporte_conQuery() throws SQLException, JRException{
        coneccion c = new coneccion();
        con = c.getConection();
        s = con.createStatement();
        id = s.executeQuery(consulta);
        Map parametro = new HashMap();
        id.next();
        System.out.println("id de consulta"+id+"\nExecute querty"+id.toString()+"\nnext "+id.getString(1));
        String id_ = id.getString("MAX(id_Cliente)");
        parametro.put("id_Cliente",Integer.parseInt(id_));
        /*Se manda a llamar el reporte */
        reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
        /*Esta variable sirve para el llenado del reporte
        Donde (Reporte, null, la conexcio con BD)
        */
        JasperPrint jprint = JasperFillManager.fillReport(reporte, parametro,con);
        /*Se crea la vista del reporte*/ 
        JasperViewer view = new JasperViewer(jprint,false);
        /*Funcion para que se cierre el reporte*/
        view.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        view.setVisible(true);  
    }
    public void getReporte(String par) throws JRException{
        Map parametro = new HashMap();
        parametro.put("id_Cliente", Integer.parseInt(par));
        reporte = (JasperReport) JRLoader.loadObjectFromFile(path);
        /*Esta variable sirve para el llenado del reporte
        Donde (Reporte, null, la conexcio con BD)
        */
        JasperPrint jprint = JasperFillManager.fillReport(reporte, parametro,con);
        /*Se crea la vista del reporte*/ 
        JasperViewer view = new JasperViewer(jprint,false);
        /*Funcion para que se cierre el reporte*/
        view.setDefaultCloseOperation(DISPOSE_ON_CLOSE);
        view.setVisible(true);
        System.out.println(reporte.toString());
    }
}
