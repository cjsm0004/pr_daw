<%-- 
    Document   : carro.jsp
    Created on : 03-mar-2016, 16:41:27
    Author     : Susana y Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/layout/cabecera.jspf" %>
<%@include file="WEB-INF/layout/menu.jspf" %>

<div class="row">
    <h3><strong>Mi carrito de compra</strong></h3>
</div>
<div class="row">
    <div class="col-md-1"></div>

    <div class="col-md-3 thumbnail">
        <img src="imagenes/origen.jpg" alt="Enllamas">
        <div class="caption"></div>
        <div class="col-md-1"></div>
        <a href="FichaOrigen.jsp" class="btn btn-primary" role="button">Ver ficha</a>
        <a href="editarPelicula.jsp" class="btn btn-danger" role="button">Eliminar del carrito</a>
    </div>
    <div class="col-md-3 thumbnail">
        <img src="imagenes/hp.jpg" alt="Enllamas">
        <div class="caption"></div>
        <div class="col-md-1"></div>
        <a href="FichaHP.jsp" class="btn btn-primary" role="button">Ver ficha</a>
        <a href="editarPelicula.jsp" class="btn btn-danger" role="button">Eliminar del carrito</a>
    </div>
    <div class="col-md-3 thumbnail">
        <img src="imagenes/50primeras.jpg" alt="Enllamas">
        <div class="caption"></div>
        <div class="col-md-1"></div>
        <a href="Ficha50.jsp" class="btn btn-primary" role="button">Ver ficha</a>
        <a href="editarPelicula.jsp" class="btn btn-danger" role="button">Eliminar del carrito</a>    
    </div>
</div>
<div class="row finaliza_compra">
    <div class="col-md-10"></div>
    <a href="Ficha50.jsp" class="btn btn-success" role="button">Finalizar compra</a>
</div>
<div class="caption"></div>

<%@include file="WEB-INF/layout/pie.jspf" %>