<%-- 
    Document   : lista
    Created on : 18/03/2015, 17:59:52
    Author     : danieljr
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt" %>
<html>
    <head>
        <script type="text/javascript" src="resources/js/jquery-2.1.0.min.js"></script>
    </head>
    <body>
        <script>
            function finalizaAgora(id) {
                $.post("finalizaTarefa", {'id': id}, function (resposta) {
                     $("#tarefa_"+id).html(resposta);
                });
            }
            function excluir(id,element){
                $.post("excluirTarefa", {'id':id},function(){
                    $(element).closest("tr").hide()
                });
            }
        </script>
        <a href="novaTarefa">Criar nova tarefa</a> 

        <br /> <br />        

        <table>
            <tr>
                <th>Id</th>
                <th>Descrição</th>
                <th>Finalizado?</th>
                <th>Data de finalização</th>
            </tr>
            <c:forEach items="${tarefas}" var="tarefa">
                <tr id="tarefa_${tarefa.id}">
                    <td>${tarefa.id}</td>
                    <td>${tarefa.descricao}</td>
                    <c:if test="${tarefa.finalizado eq false}">
                        <td id="tarefa_${tarefa.id}">
                            <a href="#" onClick="finalizaAgora(${tarefa.id})">
                                Finaliza Agora!
                            </a>
                        </td>
                    </c:if>
                    <c:if test="${tarefa.finalizado eq true}">
                        <td>Finalizado</td>
                    </c:if>
                    <td>
                        <fmt:formatDate 
                            value="${tarefa.dataFinalizacao.time}" 
                            pattern="dd/MM/yyyy"/>
                    </td>
                    <td><a href="removeTarefa?id=${tarefa.id}">Remover</a></td>
                    <td><a href="mostraTarefa?id=${tarefa.id}">Alterar</a></td>
                    <td><a href="#" onClick="excluir(${tarefa.id},this)">Excluir</a></td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>
