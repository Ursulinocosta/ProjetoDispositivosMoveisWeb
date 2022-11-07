<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Treinador"%>
<%@page import="backenddmn20222.controllers.ControllerTreinador"%>

<%
    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    Treinador tre = new Treinador(id);
    ControllerTreinador treCont = new ControllerTreinador();
    tre = treCont.excluir(tre);
    String pbusca = request.getParameter("PBUSCA");
    
    // REDIRECIONA PARA A PAG LOGIN.JSP
    String url = "validaConsultarTreinador.jsp?LOGIN=" + pbusca;
    response.sendRedirect(url);
%>