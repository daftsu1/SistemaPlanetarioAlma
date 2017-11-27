<%-- 
    Document   : Form_Star
    Created on : 26-11-2017, 22:35:09
    Author     : BuddySz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.sql.*" %>

<!DOCTYPE html>
<html>
    <head>
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Estrella</title>
    </head>
    <body>
        <%@include file="statics/menu_1.jsp"%>         
        <div class="container">
            <h1>Contenido</h1>
            <p>Ingrese los siguientes datos para registrar una estrella central.</p>
            <div style="background-color: graytext;">
                <form method="post" action="">
                    <div class="input-group"> 
                        <p>Sistema planetario</p>
                        <select name="Sistema_planetario" class="form-control">
                            <option value="-1">Seleccione un sistema planetario</option>
                            <%
                                try {
                                    String Query = ("select * from sistema_planetario");
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/observatorio", "root", "");
                                    Statement stm = conn.createStatement();
                                    ResultSet rs = stm.executeQuery(Query);
                                    while (rs.next()) {
                            %>
                            <option value="<%=rs.getInt("id_sistema_planetario")%>"><%=rs.getString("nombre")%></option>
                            <%
                                    }
                                } catch (Exception e) {

                                }
                            %>
                        </select>
                        <p>Nombre</p>
                        <input type="text" name="nombre" class="form-control"><br>
                    </div>  
                    <br><br>
                    <button type="submit" style=""><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Registrar</button>
                </form>     
            </div>
        </div>
    </body>
</html>
