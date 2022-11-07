<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - PESSOA</title>
    <body>
       <div class="container"/>
        <h1>INSERIR PESSOA</h1>
        <form name="inserirPessoa" action="validaInserirPessoa.jsp" method="post">
            Cpf: <input type="text" name="CPF" value=""> <br>
            Nome: <input type="text" name="NOME" value=""> <br>
            Email: <input type="text" name="EMAIL" value=""> <br>
            RG: <input type="text" name="RG" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
