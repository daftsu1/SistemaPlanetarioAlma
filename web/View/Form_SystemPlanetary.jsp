<%-- 
    Document   : Form_SystemPlanetary
    Created on : 26-11-2017, 3:40:12
    Author     : BuddySz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
    <head> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <title>Sistema Planetario</title>
    </head>
    <body>
        <%@include file="statics/menu_1.jsp"%>    
        <div class="container">
            <h1>Sistema Planetario</h1>
            <form name ="form1" method="post" action="../RegistroSistema">
                <div style="background-color: graytext; height: 100px;">
                    <p align="center">Nombre</p>
                    <input type="text" name="nombre" style="margin-left: 40%;">

                    <button type="submit"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Registrar</button>

                </div>   
                <br>
                <br>                
            </form>
            <br>
            <br>
            <p>Lista de sistemas planetarios</p>

            <table class="table table-striped">
                <tr>
                    <th>Id</th>
                    <th>Nombre</th>
                    <th>Acción</th>
                </tr>
                
                    <%
                        try {
                            String Query = ("select * from sistema_planetario");
                            Class.forName("com.mysql.jdbc.Driver").newInstance();
                            Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/observatorio", "root", "");
                            Statement stm = conn.createStatement();
                            ResultSet rs = stm.executeQuery(Query);
                            while (rs.next()) {
                    %>
                    <tr>
                    <td><%=rs.getInt("id_sistema_planetario")%></td>
                    <td><%=rs.getString("nombre")%></td>
                    <td><button style="color:"><span class="glyphicon glyphicon-pencil"></span></button><button><span class="glyphicon glyphicon-remove"></span></button></td>
                    </tr>
                    <%
                            }
                        } catch (Exception e) {

                        }
                    %>
            </table>
        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>

