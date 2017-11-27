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
public class PlanetaDao extends Conexion {

    Connection conecta;

    Planeta elPlaneta;

    public PlanetaDao() {
    }
    public PlanetaDao(Planeta newPlaneta) {
        this.elPlaneta = newPlaneta;
    }
    
    public boolean insertarPlaneta()
    {
        boolean var = true;
        conecta = Conexion.conecta();
        try {
            Statement stat = conecta.createStatement();
            stat.execute("insert into sistema_planetario(nombre) values ('" + elPlaneta.getNombre() + "')");

            System.out.print(elPlaneta.getNombre());

            conecta.close();

        } catch (Exception e) {
            System.out.print("Error en el Registro: " + e);
            var = false;
        } finally {
            return var;
        }
    }

}
