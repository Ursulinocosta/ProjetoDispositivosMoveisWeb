<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - TREINADOR</title>
    <body>
       <div class="container"/>
        <h1>INSERIR TREINADOR</h1>
        <form name="inserirtreinador" action="validaInserirTreinador.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            Cpf: <input type="text" name="CPF" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
