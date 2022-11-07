<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="backenddmn20222.models.beans.Usuario"%>
<%@page import="backenddmn20222.controllers.ControllerUsuario"%>

<%
    String login = request.getParameter("LOGIN");
    String senha = request.getParameter("SENHA");
    Usuario usuEntrada = new Usuario(login,senha);
    ControllerUsuario usucont = new ControllerUsuario();
    Usuario usuSaida = usucont.validaWeb(usuEntrada);
    session.setAttribute("UsuarioLogado",usuSaida);
%>

<!DOCTYPE html> 
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>SISTEMA </title>
    <body>
        <% if (usuSaida != null) { %>
            <!-- Dropdown1 Trigger -->
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown1'>Manter Usuário</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown2'>Manter Pessoa</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown3'>Manter Acesso</a>        
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown4'>Manter Status</a>   
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown5'>Manter Pokemon</a> 
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown6'>Manter Treinador</a> 
            <a class='dropdown-button btn' data-beloworigin="true" href='#' data-activates='dropdown7'>Manter Ginasio</a> 

            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown1 Structure -->
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/inserirUsuario.jsp"> InseriUsuario </a></li>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown1' class='dropdown-content'>
                    <li><a href="../usuario/consultarUsuario.jsp"> ConsultaUsuarioParametro </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown2 Structure -->
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/inserirPessoa.jsp"> InseriPessoa </a></li>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown2' class='dropdown-content'>
                    <li><a href="../pessoa/consultarPessoa.jsp"> ConsultaPessoa </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usupes/inserirRelacaoUsuarioPessoa.jsp"> InseriUsuarioPessoa </a></li>
                    <li><a href="../usupes/consultarRelacaoUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown3' class='dropdown-content'>
                    <li><a href="../usuario/consultarRelacaoUsuarioPessoa.jsp"> ConsultaUsuarioPessoa </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../status/inserirStatus.jsp"> InseriStatus </a></li>
                    <li><a href="../status/consultarStatus.jsp"> ConsultaStatus </a></li>
                </ul>
            <% } else { %>
                <ul id='dropdown4' class='dropdown-content'>
                    <li><a href="../status/consultarStatus.jsp"> ConsultaStatus </a></li>
                </ul>
            <% } %>
            
               <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../pokemon/inserirPokemon.jsp"> InseriPokemon </a></li>
                    <li><a href="../pokemon/consultarPokemon.jsp"> ConsultaPokemon </a></li>
                </ul> 
            <% } else { %>
                <ul id='dropdown5' class='dropdown-content'>
                    <li><a href="../pokemon/consultarPokemon.jsp"> ConsultaPokemon </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../treinador/inserirTreinador.jsp"> InseriTreinador </a></li>
                    <li><a href="../treinador/consultarTreinador.jsp"> ConsultaTreinador </a></li>
                </ul> 
            <% } else { %>
                <ul id='dropdown6' class='dropdown-content'>
                    <li><a href="../treinador/consultarTreinador.jsp"> ConsultaTreinador </a></li>
                </ul>
            <% } %>
            <% if (usuSaida.getTipo().equals("ADM")) { %>
                <!-- Dropdown3 Structure -->
                <ul id='dropdown7' class='dropdown-content'>
                    <li><a href="../ginasio/inserirGinasio.jsp"> InseriGinasio </a></li>
                    <li><a href="../ginasio/consultarGinasio.jsp"> ConsultaGinasio </a></li>
                </ul> 
            <% } else { %>
                <ul id='dropdown7' class='dropdown-content'>
                    <li><a href="../ginasio/consultarGinasio.jsp"> ConsultaGinasio </a></li>
                </ul>
            <% } %>
            
            <% } else { %>
                <h1>USUÁRIO INVÁLIDO</h1>
        <% } %>
    </body>
</html>