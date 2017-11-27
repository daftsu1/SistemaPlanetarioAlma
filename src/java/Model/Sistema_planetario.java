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
public class Sistema_planetario {
    int id_sistema_planetario;
    String nombre;

    public Sistema_planetario(){
        
    }
    
    public Sistema_planetario(String nombre){
        this.nombre = nombre;
    }

    public void setId_sistema_planetario(int id_sistema_planetario) {
        this.id_sistema_planetario = id_sistema_planetario;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }
    
}
