<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Status"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerStatus"%>

<%
    String nome = request.getParameter("NOME");
    Status sta = new Status(nome);
    ControllerStatus stacont = new ControllerStatus();
    List<Status> stass = stacont.listar(sta);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + nome+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA PESSOAS</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Id">Id</th>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Desc">Email</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(stass.isEmpty())) { %>    
                <tbody>
                    <% for (Status listaStatus : stass) { %>
                        <tr>
                            <td><%=listaStatus.getId()%></td>
                            <td><%=listaStatus.getNome()%></td>
                            <td><%=listaStatus.getObs()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirStatus.jsp?<%=url + listaStatus.getId()%>">Excluir</a></td>
                                <td><a href="alterarStatus.jsp?<%=url + listaStatus.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>