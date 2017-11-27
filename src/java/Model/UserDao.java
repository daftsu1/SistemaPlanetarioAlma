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
 * @author juani
 */
public class UserDao extends Conexion{
    Connection conecta;
    
    User elUser;
    
    public UserDao(){
        
    }
    
    public UserDao(User miUsuario){
        this.elUser=miUsuario;
    }
   
    
    public boolean verificaSesion(){
        boolean var = true;
        conecta = Conexion.conecta();
       try{                                                                                    
        String sql = "SELECT * FROM usuario WHERE correo='"+elUser.getUsername()+"' and contrasena='"+elUser.getPassword()+"'";
        PreparedStatement ps = conecta.prepareStatement(sql);
        ResultSet rs = ps.executeQuery();         
        if(rs.next()){         
            System.out.print("ACCESO OTORGADO");
            var=true;

        }
        else{
            System.out.print("INFO DE LA BD: "+sql);
            System.out.println("ACCESO DENEGADO");
            var=false;
            }
            conecta.close();
        }
       catch(SQLException e){
            System.out.print("Error en la consulta: "+e);
        }
        finally{
            return var;
        }
    }
    
    
}



