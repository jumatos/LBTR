/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package Conexiones;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.swing.JOptionPane;


public class Conexion2 {

static Connection contacto = null;

public static Connection getConexion(){
    
    String url = "jdbc:sqlserver://DESKTOP-9CPQFL4:1433;databaseName=LBTRIMPORT";
    try{
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
    
    }catch (ClassNotFoundException e) {
        JOptionPane.showMessageDialog(null, "No se pudo establecer la conexion..."+ e.getMessage(),
        "Error de Conexion",JOptionPane.ERROR_MESSAGE);
    }
    try{
        contacto = DriverManager.getConnection(url,"usuarioSQL","4040");
    }catch (SQLException e){
         JOptionPane.showMessageDialog(null, "Error"
                + e.getMessage(),"Error de Conexion",JOptionPane.ERROR_MESSAGE);
    }

return contacto;
}

public static ResultSet Consulta(String consulta){
    Connection con = getConexion();
    Statement declara;
    try{
        declara=con.createStatement();
        ResultSet respuesta = declara.executeQuery(consulta);
        return respuesta;
    }catch (SQLException e){
        JOptionPane.showMessageDialog(null, "Error"
                + e.getMessage(),"Error de Conexion",JOptionPane.ERROR_MESSAGE);
    }
    return null;
}
}

