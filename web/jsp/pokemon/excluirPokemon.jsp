<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Pokemon"%>
<%@page import="backenddmn20222.controllers.ControllerPokemon"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Pokemon pok = new Pokemon(id);
    ControllerPokemon pokCont = new ControllerPokemon();
    pok = pokCont.excluir(pok);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPokemon.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>
