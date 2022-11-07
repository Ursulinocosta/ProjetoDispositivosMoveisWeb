<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Ginasio"%>
<%@page import="backenddmn20222.controllers.ControllerGinasio"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Ginasio gin = new Ginasio(id);
    ControllerGinasio ginCont = new ControllerGinasio();
    gin = ginCont.excluir(gin);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarGinasio.jsp?NOME=" + pbusca;
    response.sendRedirect(url);
%>