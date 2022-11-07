<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Ginasio"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerGinasio"%>

<%
    String estado = request.getParameter("ESTADO");
    Ginasio gin = new Ginasio(estado);
    ControllerGinasio gincont = new ControllerGinasio();
    List<Ginasio> gina = gincont.listar(gin);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + estado+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA ESTADO</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Estado">Estado</th>
                  <th data-field="Pais">Pais</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(gina.isEmpty())) { %>    
                <tbody>
                    <% for (Ginasio liginGinasio : gina) { %>
                        <tr>
                            <td><%=liginGinasio.getId()%></td>
                            <td><%=liginGinasio.getEstado()%></td>
                            <td><%=liginGinasio.getPais()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirGinasio.jsp?<%=url + liginGinasio.getId()%>">Excluir</a></td>
                                <td><a href="alterarGinasio.jsp?<%=url + liginGinasio.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>