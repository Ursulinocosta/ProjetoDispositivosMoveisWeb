<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Pokemon"%>
<%@page import="backenddmn20222.controllers.ControllerPokemon"%>

<%
    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");
 
    Pokemon pok = new Pokemon(nome, tipo);
    ControllerPokemon pokcont = new ControllerPokemon();
    pok = pokcont.inserir(pok);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirPokemon.jsp";
    response.sendRedirect(url);
%>


