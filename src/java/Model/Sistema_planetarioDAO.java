/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Model;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

/**
 *
 * @author BuddySz
 */
public class Sistema_planetarioDAO extends Conexion {

    Connection conecta;
    int id_sistema_planetario;
    String nombre;

    Sistema_planetario elSistema;

    public Sistema_planetarioDAO(Sistema_planetario newSystem) {
        this.elSistema = newSystem;
    }

    public Sistema_planetarioDAO() {
    }

    public boolean insertarSistema() {
        boolean var = true;
        conecta = Conexion.conecta();
        try {
            Statement stat = conecta.createStatement();
            stat.execute("insert into sistema_planetario(nombre) values ('" + elSistema.getNombre() + "')");

            System.out.print(elSistema.getNombre());

            conecta.close();

        } catch (Exception e) {
            System.out.print("Error en el Registro: " + e);
            var = false;
        } finally {
            return var;
        }

    }

}
