/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.Statement;

/**
 *
 * @author BuddySz
 */
public class EstrellaDao extends Conexion{

    Connection conecta;
    Estrella laEstrella;

    public EstrellaDao() {

    }

    public EstrellaDao(Estrella miEstrella) {
        this.laEstrella = miEstrella;
    }

    public boolean insertarEstrellita() {
        boolean var = true;
        conecta = Conexion.conecta();
        try {
            
            Statement stat = conecta.createStatement();
            stat.execute("insert into estrella(id_sistema_planetario, nombre) values ('"+ laEstrella.getNombre()+"','" + laEstrella.getId_sistema_planetario() + "')");
            System.out.print(laEstrella.getId_estrella());
            System.out.print(laEstrella.getNombre());

            conecta.close();

        } catch (Exception e) {
            System.out.print("Error en el Registro: " + e);
            var = false;
        } finally {
            return var;
        }
    }

}
