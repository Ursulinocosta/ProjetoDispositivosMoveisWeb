<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - TREINADOR</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR TREINADOR</h1>
       <form name="consultarTreinador" action="validaConsultarTreinador.jsp" method="post">
           NOME: <input type="text" name ="NOME" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
