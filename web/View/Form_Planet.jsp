<%-- 
    Document   : Form_Planet
    Created on : 26-11-2017, 21:14:36
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
        <title>Planeta</title>
    </head>
    <body>
        <%@include file="statics/menu_1.jsp"%>     
        <div class="container">
            <h1>Contenido</h1>
            <p>Ingrese los siguientes datos para registrar un planeta.</p>
            <div style="background-color: graytext;">
                <form method="post" action="">
                    <div class="input-group"> 
                        <p>Estrella</p>
                        <select name="Estrella" class="form-control">
                            <option value="-1">Seleccione una estrella</option>
                            <%
                                try {
                                    String Query = ("select * from estrella");
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/observatorio", "root", "");
                                    Statement stm = conn.createStatement();
                                    ResultSet rs = stm.executeQuery(Query);
                                    while (rs.next()) {
                            %>
                            <option value="<%=rs.getInt("id_estrella")%>"><%=rs.getString("nombre")%></option>
                            <%
                                    }
                                } catch (Exception e) {

                                }
                            %>
                        </select>                        
                        <p>Nombre</p>
                        <input type="text" name="nombre" class="form-control"><br>
                        <p>Tipo de planeta</p>
                        <select name="Tipo_estrella" class="form-control">
                            <option value="-1">Seleccione el tipo de planeta</option>
                            <%
                                try {
                                    String Query = ("select * from tipo");
                                    Class.forName("com.mysql.jdbc.Driver").newInstance();
                                    Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/observatorio", "root", "");
                                    Statement stm = conn.createStatement();
                                    ResultSet rs = stm.executeQuery(Query);
                                    while (rs.next()) {
                            %>
                            <option value="<%=rs.getInt("id_tipo")%>"><%=rs.getString("nombre")%></option>
                            <%
                                    }
                                } catch (Exception e) {

                                }
                            %>
                        </select>                            
                        <p>Simbologia</p>
                        <input type="text" name="simbologia" class="form-control"><br>
                        <p>Diametro ecuatorial</p>
                        <input type="number" name="diametro_ecuatorial" class="form-control"><br>
                        <p>Masa</p>
                        <input type="number" name="masa" class="form-control"><br>
                        <p>Radio orbital</p>
                        <input type="number" name="radio_orbital" class="form-control"><br>
                        <p>Periodo orbital</p> 
                        <input type="number" name="periodo_orbital" class="form-control"><br>
                        <p>Periodo rotación</p>
                        <input type="number" name="periodo_rotacion" class="form-control"><br>
                        <p>Composición atmosfera</p>
                        <input type="text" name="composicion_atmosfera" class="form-control"><br>
                        <p>Imagen</p>
                        <input type="file" name="imagen" class="form-control"><br>
                    </div>  
                    <br><br>
                    <button type="submit" style=""><span class="glyphicon glyphicon-plus" aria-hidden="true"></span> Registrar</button>
                </form>     
            </div>
        </div>
    </body>
</html>
