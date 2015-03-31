<%-- 
    Document   : formulario-login
    Created on : 31/03/2015, 13:51:22
    Author     : danieljr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<html>
    <body>
        <h2>Página de Login das Tarefas</h2>
        <form action="efetuaLogin" method="post">
            Login: <input type="text" name="login" /> <br /> 
            Senha: <input type="password" name="senha" /> <br />
            <input type="submit" value="Entrar nas tarefas" /> 
        </form>
    </body>
</html>