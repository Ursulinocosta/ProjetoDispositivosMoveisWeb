<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Treinador"%>
<%@page import="backenddmn20222.controllers.ControllerTreinador"%>

<%
    String nome = request.getParameter("NOME");
    String cpf = request.getParameter("CPF");
 
    Treinador tre = new Treinador(nome,cpf);
    ControllerTreinador trecont = new ControllerTreinador();
    tre = trecont.inserir(tre);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirTreinador.jsp";
    response.sendRedirect(url);
%>