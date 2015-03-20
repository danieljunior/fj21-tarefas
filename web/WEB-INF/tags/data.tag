<%-- 
    Document   : data
    Created on : 20/03/2015, 10:09:12
    Author     : danieljr
--%>

<%@tag description="put the tag description here" pageEncoding="UTF-8"%>

<%-- The list of normal or fragment attributes can be specified here: --%>
<%@attribute name="id" required="true"%>
<%@attribute name="valor" required="true"%>

<input id="${id}" name="${id}" value="${valor}"/>
<script>
    $("#${id}").datepicker({dateFormat: 'dd/mm/yy'});
</script>