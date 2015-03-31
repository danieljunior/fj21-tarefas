<%-- 
    Document   : menu
    Created on : 31/03/2015, 13:53:52
    Author     : danieljr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <body>
        <h2>Página inicial da Lista de Tarefas</h2>
        <p>Bem vindo, ${usuarioLogado.login}</p> 
        <a href="listaTarefas">Clique aqui</a> para acessar a 
        lista de tarefas
        <a href="logout">Sair do sistema</a>
    </body>
</html>
