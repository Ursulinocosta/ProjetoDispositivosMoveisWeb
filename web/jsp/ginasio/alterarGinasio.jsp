<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Ginasio"%>
<%@page import="backenddmn20222.controllers.ControllerGinasio"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Ginasio gin = new Ginasio(id);
    ControllerGinasio ginCont = new ControllerGinasio();
    gin = ginCont.buscar(gin);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - GINASIO</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR GINASIO</h1>
        <form name="alterarGinasio" action="validaAlterarGinasio.jsp" method="post">
            Estado: <input type="text" name="ESTADO" value="<%=gin.getEstado()%>"> <br>
            PAIS: <input type="text" name="PAIS" value="<%=gin.getPais()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=gin.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>