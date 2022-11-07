<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Pessoa"%>
<%@page import="backenddmn20222.controllers.ControllerPessoa"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String cpf = request.getParameter("CPF");
    String nome = request.getParameter("NOME");
    String mail = request.getParameter("EMAIL");
    String rg = request.getParameter("RG");
    String pbusca = request.getParameter("PBUSCA");
    Pessoa pes = new Pessoa(id,nome,rg,cpf,mail);
    ControllerPessoa pesCont = new ControllerPessoa();
    pes = pesCont.alterar(pes);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarPessoa.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>