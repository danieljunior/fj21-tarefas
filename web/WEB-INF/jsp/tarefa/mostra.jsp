<%-- 
    Document   : mostra
    Created on : 18/03/2015, 18:17:45
    Author     : danieljr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@taglib tagdir="/WEB-INF/tags" prefix="dj" %>
<script src="js/jquery-2.1.0.min.js"></script>
<script src="js/jquery-ui.min.js"></script>

<html>
    <body>
        <h3>Alterar tarefa - ${tarefa.id}</h3>

        <form action="alteraTarefa" method="post">

            <input type="hidden" name="id" value="${tarefa.id}" />

            Descrição:<br />
            <textarea name="descricao" cols="100" rows="5">
                ${tarefa.descricao}
            </textarea>
            <br />      

            Finalizado? <input type="checkbox" name="finalizado" 
                               value="true" ${tarefa.finalizado? 'checked' : '' }/> <br />      

            Data de finalização: <br />
            <dj:data id="dataFinalizacao" valor="${tarefa.dataFinalizacao.time}"/>        
            <br />

            <input type="submit" value="Alterar"/>

        </form>
    </body>
</html>