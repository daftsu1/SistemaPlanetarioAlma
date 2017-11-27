<%-- 
    Document   : login
    Created on : 26-11-2017, 21:17:56
    Author     : BuddySz
--%>

<%
    HttpSession miSesioon = request.getSession();
    String error = (String) miSesioon.getAttribute("error");
    if (error == null) {
        error = "Ingrese sus credenciales";
    }
%>

<html>
    <head>

        <%@page contentType="text/html" pageEncoding="UTF-8"%>
        <%@include file="statics/menu_1.jsp"%>
        <link href="../css/style2.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <title>LOGIN</title>
        <div class="imgcontainer">
            <img name="logincito" src="../imagenes/saturn.png" alt="Avatar" class="avatar">
        </div>

        <!-- Modal Content -->
        <form class="modal-content animate" name="login" action="../InicioSesion" method="POST" class="x">

            <div class="container">
                <label><b>Username</b></label>
                <input type="text" placeholder="Enter Username" name="user" required>

                <label><b>Password</b></label>
                <input type="password" placeholder="Enter Password" name="pass" required>

                <button type="submit">Login</button>
            </div>
        </form>
    </body>
</html>

