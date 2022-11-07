<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="backenddmn20222.models.beans.Treinador"%>
<%@page import="backenddmn20222.controllers.ControllerTreinador"%>
<%@page import="backenddmn20222.models.beans.Pokemon"%>
<%@page import="backenddmn20222.controllers.ControllerPokemon"%>
<%@page import="backenddmn20222.models.beans.TreinadorPokemon"%>
<%@page import="backenddmn20222.controllers.ControllerTreinadorPokemon"%>

<%
    ControllerPokemon pokCont = new ControllerPokemon();
    Pokemon pfv = new Pokemon("");
    List<Pokemon> pokk = pokCont.listar(pfv);

    ControllerTreinador treCont = new ControllerTreinador();
    Treinador treEnt = new Treinador("");
    List<Treinador> trei = treCont.listar(treEnt);

    String cod = request.getParameter("ID");
    int id = Integer.parseInt(cod);
    TreinadorPokemon trePok = new TreinadorPokemon(id);
    ControllerTreinadorPokemon trePokCont = new ControllerTreinadorPokemon();
    trePok = trePokCont.buscar(trePok);
    String pbusca = request.getParameter("PBUSCA");


%>

<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>ALTERAR - TREINADOR POKEMON</title>
    <body>
       <div class="container"/>
       <h1>ALTERAR - TREINADOR POKEMON</h1>
        <form name="alterarTreinadorPokemon" action="validaAlterarRelacaoTreinadorPokemon.jsp" method="post">
            <table>
                <tr>
                    <td>Usuario:</td>
                        <td>
                            <select NAME="ID_TREINADOR" class="browser-default">
                                <% for (Treinador tre : trei) { %>
                                    <% if( tre.getId() == trePok.getIdTreinador()) { %>
                                        <option selected value="<%=tre.getId()%>"><%=tre.getObs()%></option>
                                    <% } else { %>
                                        <option value="<%=tre.getId()%>"><%=tre.getLogin()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                </tr>
                <tr>
                        <td>Pessoa:</td>
                        <td>
                            <select NAME ="ID_POKEMON" class="browser-default">
                                <% for (Pokemon pes : pokk) { %>
                                    <% if( pes.getId()== trePok.getIdPokemon()) { %>
                                        <option selected value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% } else { %>
                                        <option value="<%=pes.getId()%>"><%=pes.getNome()%></option>
                                    <% } %>
                                <% } %>
                            </select> 
                        </td>
                    </tr>
                    <tr>
                        <td>Observação:</td>
                        <td><input type="text" name="OBS" value="<%=trePok.getObs()%>"></td>

                    </tr>
                </table>    
            <input type="HIDDEN" name="ID" value="<%=trePok.getId()%>"> <br>
            <input type="HIDDEN" name="PBUSCA" value="<%=pbusca%>">
            <input type="submit" name="Enviar" value="OK">
        </form>
        <div>
    </body>
</html>