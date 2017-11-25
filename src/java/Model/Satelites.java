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
public class Satelites {
    private int id_satelite;
    private String nombre;
    private int diametro;
    private int periodo_orbital_dia;
    private int periodo_orbital_horas;
    private int periodo_orbital_minutos;
    private String imagen;

    public int getId_satelite() {
        return id_satelite;
    }

    public void setId_satelite(int id_satelite) {
        this.id_satelite = id_satelite;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public int getDiametro() {
        return diametro;
    }

    public void setDiametro(int diametro) {
        this.diametro = diametro;
    }

    public int getPeriodo_orbital_dia() {
        return periodo_orbital_dia;
    }

    public void setPeriodo_orbital_dia(int periodo_orbital_dia) {
        this.periodo_orbital_dia = periodo_orbital_dia;
    }

    public int getPeriodo_orbital_horas() {
        return periodo_orbital_horas;
    }

    public void setPeriodo_orbital_horas(int periodo_orbital_horas) {
        this.periodo_orbital_horas = periodo_orbital_horas;
    }

    public int getPeriodo_orbital_minutos() {
        return periodo_orbital_minutos;
    }

    public void setPeriodo_orbital_minutos(int periodo_orbital_minutos) {
        this.periodo_orbital_minutos = periodo_orbital_minutos;
    }

    public String getImagen() {
        return imagen;
    }

    public void setImagen(String imagen) {
        this.imagen = imagen;
    }
    
    
}
