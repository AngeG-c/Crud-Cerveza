/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Dao;

/**
 *
 * @author cgang
 */
public class Capacidad {
    private int id_cap;
    private String capacidad;
    
    public Capacidad(){}

    public Capacidad(int id_cap, String capcidad) {
        this.id_cap = id_cap;
        this.capacidad = capcidad;
    }

    public int getId_cap() {
        return id_cap;
    }

    public void setId_cap(int id_cap) {
        this.id_cap = id_cap;
    }

    public String getCapacidad() {
        return capacidad;
    }

    public void setCapacidad(String capcidad) {
        this.capacidad = capcidad;
    }

    @Override
    public String toString() {
        return "Capacidad{" + "id_cap=" + id_cap + ", capcidad=" + capacidad + '}';
    }
    
}
