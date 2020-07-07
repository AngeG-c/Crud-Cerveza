package Dao;

/**
 *
 * @author Kevin_Paez
 */
public class Usuario {
    private int id_cerveza;
    private String cerveza;
    private String tipo;
    private String envase;
    private String id_cap;
    public Usuario(){
        
    }

    public Usuario(int id_cerveza, String cerveza, String tipo, String envase, String capacidad) {
        this.id_cerveza = id_cerveza;
        this.cerveza = cerveza;
        this.tipo = tipo;
        this.envase = envase;
        this.id_cap=capacidad;
    }

    public Usuario(String cerveza, String tipo, String envase, String capacidad) {
        this.cerveza = cerveza;
        this.tipo = tipo;
        this.envase = envase;
        this.id_cap=capacidad;
    }

    public Usuario(int id_cerveza) {
        this.id_cerveza = id_cerveza;
    }

    public Usuario(int id_cerveza, String cerveza) {
        this.id_cerveza = id_cerveza;
        this.cerveza = cerveza;
    }
    
    public int getId_cerveza() {
        return id_cerveza;
    }

    public void setId_cerveza(int id_cerveza) {
        this.id_cerveza = id_cerveza;
    }

    public String getCerveza() {
        return cerveza;
    }

    public void setCerveza(String cerveza) {
        this.cerveza = cerveza;
    }

    public String getTipo() {
        return tipo;
    }

    public void setTipo(String tipo) {
        this.tipo = tipo;
    }

    public String getEnvase() {
        return envase;
    }

    public void setEnvase(String envase) {
        this.envase = envase;
    }

    public String getCapacidad() {
        return id_cap;
    }

    public void setCapacidad(String capacidad) {
        this.id_cap = capacidad;
    }



    @Override
    public String toString() {
        return "Usuario{" + "id_cerveza=" + id_cerveza + ", cerveza=" + cerveza + ", tipo=" + tipo + ", envase=" + envase + ", capacidad=" + id_cap +  '}';
    }

  
    
    
    
}
