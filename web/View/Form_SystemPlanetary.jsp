<%-- 
    Document   : Form_SystemPlanetary
    Created on : 26-11-2017, 3:40:12
    Author     : BuddySz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <%@include file="statics/menu_1.jsp"%> 
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="../css/style.css" rel="stylesheet" type="text/css"/>
        <link href="../css/bootstrap.min.css" rel="stylesheet">

    </head>
    <body>
        <h1>Sistema Planetario</h1>
        <div class="container">
        <form name ="form1" method="post" action="../RegistroSistema">

            Nombre:<br>
            <input type="text" name="nombre"><br>
            <br>
            <button type="submit"><span class="glyphicon glyphicon-plus" aria-hidden="true"></span>Registrar</button>

        </form>
        </div>

        <!-- jQuery (necessary for Bootstrap's JavaScript plugins) -->
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
        <!-- Include all compiled plugins (below), or include individual files as needed -->
        <script src="js/bootstrap.min.js"></script>
    </body>
</html>

