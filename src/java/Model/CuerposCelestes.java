/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

/**
 *
 * @author BuddySz
 */
public class CuerposCelestes {
    private int id_cuerpos_celestes;
    private String nombre;
    private int masa;
    private int tamano;

    public int getId_cuerpos_celestes() {
        return id_cuerpos_celestes;
    }

    public void setId_cuerpos_celestes(int id_cuerpos_celestes) {
        this.id_cuerpos_celestes = id_cuerpos_celestes;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getMasa() {
        return masa;
    }

    public void setMasa(int masa) {
        this.masa = masa;
    }

    public int getTamano() {
        return tamano;
    }

    public void setTamano(int tamano) {
        this.tamano = tamano;
    }
    
}
