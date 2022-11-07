<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Pokemon"%>
<%@page import="backenddmn20222.controllers.ControllerPokemon"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Pokemon pok = new Pokemon(id);
    ControllerPokemon pokCont = new ControllerPokemon();
    pok = pokCont.buscar(pok);
    String pbusca = request.getParameter("PBUSCA");
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - POKEMON</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR POKEMON</h1>
        <form name="alterarPokemon" action="validaAlterarPokemon.jsp" method="post">
            Nome: <input type="text" name="NOME" value="<%=pok.getNome()%>"> <br>
            Tipo: <input type="text" name="TIPO" value="<%=pok.getTipo()%>"> <br>
            <input type="HIDDEN" name="ID" value="<%=pok.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>"> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>