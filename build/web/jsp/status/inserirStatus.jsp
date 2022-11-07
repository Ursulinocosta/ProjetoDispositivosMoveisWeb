<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - STATUS</title>
    <body>
       <div class="container"/>
        <h1>INSERIR STATUS</h1>
        <form name="inserirStatus" action="validaInserirStatus.jsp" method="post">
            Nome: <input type="text" name="NOME" value=""> <br>
            DESC: <input type="text" name="DESC" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
