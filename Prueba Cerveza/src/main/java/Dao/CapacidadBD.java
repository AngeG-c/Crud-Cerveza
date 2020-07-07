/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

import config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author cgang
 */
public class CapacidadBD {
    
    
    private static final String Listado="SELECT * FROM cat_cap";

    private Connection conexion = new Conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    
    public List<Capacidad> ListadoCapacidad()throws SQLException {
        List<Capacidad> capacidad=new ArrayList<>();
        this.stmt=this.conexion.prepareStatement(this.Listado); 
        this.rs=this.stmt.executeQuery();
        while (this.rs.next()){
            capacidad.add(new Capacidad(this.rs.getInt("id_cap"), this.rs.getString("capacidad")));
            
        }   
        return capacidad;
    }

}