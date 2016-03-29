<%-- 
    Document   : Inicio
    Created on : 27-feb-2016, 11:49:58
    Author     : Susana y Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/layout/cabecera.jspf" %>
<%@include file="/WEB-INF/layout/menu.jspf" %>
<h1>Bienvenido (nombre)</h1>
<h2>Últimas novedades... </h2>
<div class="row">
    <c:forEach var="p" items="${peliculas}">
        <c:set var="qry" value="?id=${p.id}"/>
        <div class="col-sm-6 col-md-3 thumbnail">
            <a href="${srvUrl}/verFicha${qry}"><img src="${imgUrl}/${p.imagen}" /></a>
            <div class="caption">
                <h3>${p.titulo}</h3> 
            </div>
        </div>
    </c:forEach>
    <%--<div class="col-sm-6 col-md-3 thumbnail">
        <img src="imagenes/chihiro.jpg" alt="chihiro">
        <div class="caption">
            <h3>El viaje de chihiro.</h3>
        </div>
    </div>
    <div class="col-sm-6 col-md-3 thumbnail">
        <img src="imagenes/Enllamas.jpg" alt="Enllamas">
        <div class="caption">
            <h3>Los juegos del hambre: En Llamas.</h3>
        </div>
    </div>
    <div class="col-sm-6 col-md-3 thumbnail">
        <img src="imagenes/corredor.jpg" alt="corredor">
        <div class="caption">
            <h3>El corredor del laberinto.</h3>
        </div>
    </div>
    <div class="col-sm-6 col-md-3 thumbnail">
        <img src="imagenes/hp.jpg" alt="origen">
        <div class="caption">
            <h3>Harry Potter y la piedra filosofal.</h3>
        </div>
    </div> --%>

</div>
<div class="row">
    <div class="col-md-11">
    </div>
    <a href='${srvUrl}/Peliculas' class="btn btn-info" role="button">Ver más</a> 
</div>
<br/>
<%@include file="/WEB-INF/layout/pie.jspf" %>
