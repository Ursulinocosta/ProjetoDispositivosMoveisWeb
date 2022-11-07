<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Status"%>
<%@page import="backenddmn20222.controllers.ControllerStatus"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String nome = request.getParameter("NOME");
    String desc = request.getParameter("DESC");
    String pbusca = request.getParameter("PBUSCA");
    Status sta = new Status(id,nome,desc);
    ControllerStatus staCont = new ControllerStatus();
    sta = staCont.alterar(sta);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarStatus.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>