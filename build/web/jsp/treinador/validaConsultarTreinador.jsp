<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Treinador"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerTreinador"%>

<%
    String nome = request.getParameter("NOME");
    Treinador sta = new Treinador(nome);
    ControllerTreinador stacont = new ControllerTreinador();
    List<Treinador> trei = stacont.listar(sta);
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
                  <th data-field="Cpf">Cpf</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(trei.isEmpty())) { %>    
                <tbody>
                    <% for (Treinador listaTreinador : trei) { %>
                        <tr>
                            <td><%=listaTreinador.getId()%></td>
                            <td><%=listaTreinador.getNome()%></td>
                            <td><%=listaTreinador.getCpf()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirTreinador.jsp?<%=url + listaTreinador.getId()%>">Excluir</a></td>
                                <td><a href="alterarTreinador.jsp?<%=url + listaTreinador.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>