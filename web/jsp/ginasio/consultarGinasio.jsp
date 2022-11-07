<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <%@include file="../../inc/materalizeWeb.inc" %>
    <title>CONSULTAR - GINASIO</title>
    <body>
       <div class="container"/>
       <h1>CONSULTAR GINASIO</h1>
       <form name="consultarPessoa" action="validaConsultarGinasio.jsp" method="post">
           ESTADO <input type="text" name ="ESTADO" value=""> <br>
           <input type="submit" name ="Enviar" value="Enviar"> <br>
       </form>
       </div>
    </body>
</html>
