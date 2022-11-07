<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - POKEMON</title>
    <body>
       <div class="container"/>
        <h1>INSERIR POKEMON</h1>
        <form name="inserirPokemon" action="validaInserirPokemon.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            Tipo: <input type="text" name="TIPO" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>

