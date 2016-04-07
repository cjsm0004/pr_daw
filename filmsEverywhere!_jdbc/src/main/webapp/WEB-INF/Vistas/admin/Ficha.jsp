<%-- 
    Document   : Ficha
    Created on : 26-feb-2016, 19:39:36
    Author     : Susana y Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/layout/cabecera.jspf" %>
<%@include file="/WEB-INF/layout/menu.jspf" %>
<main>
    <div class="row">
        <div class="col-md-4">
            <div class="thumbnail">
                <img src="${imgUrl}/${pelicula.imagen}" alt="origen">
                <div class="caption">
                    <h3>${pelicula.titulo}</h3>
                </div>
            </div>
        </div>
        <div class="col-md-6 sinopsis">
            <p>${pelicula.sinopsis}</p>
            <a href="#" class="btn btn-success" role="button">Comprar</a>
        </div>
    </div>
</main>
<%@include file="/WEB-INF/layout/pie.jspf" %>