<%@page import="java.util.List"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.models.beans.Pokemon"%>
<%@page import="backenddmn20222.controllers.ControllerPokemon"%>

<%
    String nome = request.getParameter("NOME");
    Pokemon pok = new Pokemon(nome);
    ControllerPokemon pokcont = new ControllerPokemon();
    List<Pokemon> pokk = pokcont.listar(pok);
    Usuario usuLogado = (Usuario) session.getAttribute("UsuarioLogado");
    String url = "PBUSCA=" + nome+"&ID=" ;
%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>LISTA POKEMON</title>
    <body>
        <table class="striped responsive-table">
            <thead>
              <tr>
                  <th data-field="Nome">Nome</th>
                  <th data-field="Tipo">Tipo</th>
                  <th data-field="Excluir">Excluir</th>
                  <th data-field="Alterar">Alterar</th>
              </tr>
            </thead>
            <% if (!(pokk.isEmpty())) { %>    
                <tbody>
                    <% for (Pokemon listaPokemon : pokk) { %>
                        <tr>
                            <td><%=listaPokemon.getId()%></td>
                            <td><%=listaPokemon.getNome()%></td>
                            <td><%=listaPokemon.getTipo()%></td>
                            <% if (usuLogado.getTipo().equals("ADM")) { %>
                                <td><a href="excluirPokemon.jsp?<%=url + listaPokemon.getId()%>">Excluir</a></td>
                                <td><a href="alterarPokemon.jsp?<%=url + listaPokemon.getId()%>">Alterar</a></td>
                            <% } %>
                        </tr>
                    <% } %>
                </tbody>
            <% } %>
        </table>    
    </body>
</html>

