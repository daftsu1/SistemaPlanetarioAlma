<%-- 
    Document   : menu
    Created on : 25-11-2017, 23:51:52
    Author     : BuddySz
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

 <% 
        try{
            HttpSession miSesion=request.getSession();
            String usuario=(String)miSesion.getAttribute("username");
            if(usuario==null){
                out.println("Estás conectado como <i><b>Invitado</b></i>");
            }
            else{
            out.println("<label> Usuario conectado: "+usuario);
            }
        }           
        catch(Exception e){
            out.print("Ha ocurrido un error "+e);
            
        }
%>

<ul>
  <li><a title="op1" href="home.jsp">Home</a></li>
  <li><a title="op2" href="Form_SystemPlanetary.jsp">Sistema Planetario</a></li>
  <li><a title="op3" href="Form_Star.jsp">Estrella</a></li>
  <li><a title="op4" href="Form_Planet.jsp">Planeta</a></li>
  <li><a title="op5" href="login.jsp">Log in</a></li>
</ul>