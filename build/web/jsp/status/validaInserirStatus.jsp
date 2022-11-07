<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Status"%>
<%@page import="backenddmn20222.controllers.ControllerStatus"%>

<%
    String nome = request.getParameter("NOME");
    String desc = request.getParameter("DESC");
 
    Status sta = new Status(nome,desc);
    ControllerStatus stacont = new ControllerStatus();
    sta = stacont.inserir(sta);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirStatus.jsp";
    response.sendRedirect(url);
%>

