<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Status"%>
<%@page import="backenddmn20222.controllers.ControllerStatus"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Status sta = new Status(id);
    ControllerStatus staCont = new ControllerStatus();
    sta = staCont.excluir(sta);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarStatus.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>