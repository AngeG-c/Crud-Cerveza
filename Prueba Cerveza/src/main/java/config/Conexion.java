package config;

import java.sql.*;

/**
 *
 * @author Kevin_Paez
 */
public class Conexion {

    private Connection conexion = null;
    private static final String localhost="localhost";
    private static final String usuario="root";
    private static final String password="";
    private static final String bd="usuarios";
    
    public Connection getConexion() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conexion = DriverManager.getConnection("jdbc:mysql://localhost/cerveza ", "root", "");
        } catch (Exception e) {
            System.out.println("Error " + e);
        } finally {
            return conexion;
        }
    }

}
