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
public class Estrella {

    private int id_estrella;
    private String nombre;
    private int id_sistema_planetario;

    public Estrella() {

    }

    public Estrella(int id_sistema_planetario, String nombre) {
        this.id_estrella = id_estrella;
        this.nombre = nombre;
    }

    public int getId_estrella() {
        return id_estrella;
    }

    public void setId_estrella(int id_estrella) {
        this.id_estrella = id_estrella;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getId_sistema_planetario() {
        return id_sistema_planetario;
    }

    public void setId_sistema_planetario(int id_sistema_planetario) {
        this.id_sistema_planetario = id_sistema_planetario;
    }

}
