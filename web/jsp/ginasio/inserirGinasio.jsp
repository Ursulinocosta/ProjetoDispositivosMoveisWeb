<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>INSERIR - GINASIO</title>
    <body>
       <div class="container"/>
        <h1>INSERIR GINASIO</h1>
        <form name="inserirGinasio" action="validaInserirGinasio.jsp" method="post">
            ESTADO: <input type="text" name="ESTADO" value=""> <br>
            PAIS: <input type="text" name="PAIS" value=""> <br>
            <input type="submit" name="Enviar" value="OK">
        </form>
        </div>
    </body>
</html>
