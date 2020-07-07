
package Dao;


import config.Conexion;
import java.sql.*;
import java.util.ArrayList;
import java.util.List;

/**
 *
 * @author Kevin_Paez
 */
public class UsuarioBD {
    private static final String Listado="SELECT * FROM cerveza";
    private static final String Insertado="INSERT INTO cerveza SET cerveza=?, tipo=?, envase=?, id_cap=?";

    private Connection conexion = new Conexion().getConexion();
    private PreparedStatement stmt;
    private ResultSet rs;
    
    
    public List<Usuario> ListadoUsuario()throws SQLException {
        List<Usuario> usuarios=new ArrayList<>();
        this.stmt=this.conexion.prepareStatement(this.Listado); 
        this.rs=this.stmt.executeQuery();
        while (this.rs.next()){
            usuarios.add(new Usuario(this.rs.getInt("id_cerveza"), this.rs.getString("cerveza"), this.rs.getString("tipo"), this.rs.getString("envase"), this.rs.getString("id_cap")));
            
        }   
        return usuarios;
    }
    
    public boolean InsertarUsuario(Usuario usuario) throws SQLException{
        this.stmt=this.conexion.prepareStatement(Insertado);
        this.stmt.setString(1, usuario.getCerveza());
        this.stmt.setString(2, usuario.getTipo());
        this.stmt.setString(3, usuario.getEnvase());
        this.stmt.setString(4, usuario.getCapacidad());
        
        if(this.stmt.executeUpdate()==1){
            return true;
        }else{
            return false;
        }
    }
    
    public String BuscarUsuario(Usuario cerveza) throws SQLException{
        String user="";
        String Buscar = null;
        this.stmt=this.conexion.prepareStatement(Buscar);
        this.stmt.setInt(1, cerveza.getId_cerveza());
        this.rs=this.stmt.executeQuery();
        this.rs.next();
        user=this.rs.getString("cerveza");
        
        return user;
    }
    }

    

