<%-- 
    Document   : Inicio
    Created on : 27-feb-2016, 11:49:58
    Author     : Susana y Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/layout/cabecera.jspf" %>
<%@include file="/WEB-INF/layout/menu_admin.jspf" %>
<h1>Bienvenido (nombre)</h1>
<h2>Últimas novedades... </h2>
<div class="row">
    <c:forEach var="p" items="${peliculas}">
        <c:set var="qry" value="?id=${p.id}"/>
        <div class="col-md-3">
            <div class="thumbnail">
                <a href="${srvUrl}/verFicha${qry}"><img src="${imgUrl}/${p.imagen}" /></a>
                <div class="caption">
                    <h4><strong>${p.titulo}</strong></h4> 
                </div>
            </div>
        </div>
    </c:forEach>

</div>
<div class="row">
    <div class="col-md-11"></div>
    <a href='${srvUrl}/Peliculas' class="btn btn-info" role="button">Ver más</a> 
</div>
<br/>
<%@include file="/WEB-INF/layout/pie.jspf" %>
