<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Treinador"%>
<%@page import="backenddmn20222.controllers.ControllerTreinador"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Treinador tre = new Treinador(id);
    ControllerTreinador treCont = new ControllerTreinador();
    tre = treCont.buscar(tre);
    String pbusca = request.getParameter("PBUSCA");

%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - TREINADOR</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR TREINADOR</h1>
        <form name="alterarTreinador" action="validaAlterarTreinador.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=tre.getNome()%>"> <br>
            Cpf: <input type="text" name="CPF" value="<%=tre.getCpf()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=tre.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>