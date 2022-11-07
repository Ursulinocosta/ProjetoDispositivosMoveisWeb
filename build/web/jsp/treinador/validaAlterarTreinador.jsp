<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Treinador"%>
<%@page import="backenddmn20222.controllers.ControllerTreinador"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String cpf = request.getParameter("CPF");
    String pbusca = request.getParameter("PBUSCA");

    Treinador tre = new Treinador(id,nome, cpf);
    ControllerTreinador treCont = new ControllerTreinador();
    tre = treCont.alterar(tre);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarUsuario.jsp?LOGIN=" + pbusca;
    response.sendRedirect(url);
%>