<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Status"%>
<%@page import="backenddmn20222.controllers.ControllerStatus"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Status sta = new Status(id);
    ControllerStatus staCont = new ControllerStatus();
    sta = staCont.buscar(sta);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - STATUS</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR STATUS</h1>
        <form name="alterarPessoa" action="validaAlterarStatus.jsp" method="post">
            NOME: <input type="text" name="NOME" value="<%=sta.getNome()%>"> <br>
            DESC: <input type="text" name="DESC" value="<%=sta.getObs()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=sta.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>