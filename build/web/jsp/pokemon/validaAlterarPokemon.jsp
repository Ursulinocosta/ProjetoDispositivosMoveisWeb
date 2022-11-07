<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Pokemon"%>
<%@page import="backenddmn20222.controllers.ControllerPokemon"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String tipo = request.getParameter("TIPO");
    String pbusca = request.getParameter("PBUSCA");
    Pokemon pok = new Pokemon(id,nome,tipo);
    ControllerPokemon pokCont = new ControllerPokemon();
    pok = pokCont.alterar(pok);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPokemon.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>

