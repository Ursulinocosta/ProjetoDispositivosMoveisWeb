<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Ginasio"%>
<%@page import="backenddmn20222.controllers.ControllerGinasio"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    String egindo = request.getParameter("ESTADO");
    String pais = request.getParameter("PAIS");
    String pbusca = request.getParameter("PBUSCA");
    Ginasio gin = new Ginasio(id,egindo,pais);
    ControllerGinasio ginCont = new ControllerGinasio();
    gin = ginCont.alterar(gin);
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarGinasio.jsp?ESTADO=" + pbusca;
    response.sendRedirect(url);
%>