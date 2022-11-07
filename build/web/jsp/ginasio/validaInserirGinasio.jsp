<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Ginasio"%>
<%@page import="backenddmn20222.controllers.ControllerGinasio"%>

<%
    String estado = request.getParameter("ESTADO");
    String pais = request.getParameter("PAIS");
 
    Ginasio gin = new Ginasio(estado,pais);
    ControllerGinasio gincont = new ControllerGinasio();
    gin = gincont.inserir(gin);

    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "inserirGinasio.jsp";
    response.sendRedirect(url);
%>

