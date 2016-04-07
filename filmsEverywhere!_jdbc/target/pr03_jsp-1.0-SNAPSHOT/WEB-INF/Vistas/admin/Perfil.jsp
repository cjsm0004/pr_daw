<%-- 
    Document   : PerfilAdmin
    Created on : 02-mar-2016, 11:41:27
    Author     : Susana y Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/layout/cabecera.jspf" %>
<%@include file="WEB-INF/layout/menu_admin.jspf" %>
<div class="row">
    <div class="col-md-3">
    </div>
    <div class="col-md-4">
        <h3>Últimas vistas: </h3>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        <div class="thumbnail">
            <img src="imagenes/perfil.jpg" alt="perfil">
            <div class="caption">
                <h3>Nombre.</h3>
                <h4><i>(Administrador)</i></h4>
            </div>
        </div>
        <div class="col-md-1">
            <a href="Editar perfil.jsp" class="btn btn-primary boton botonE" role="button">Editar perfil</a>
        </div>
    </div>
    <div class="col-md-1">
    </div>
    <div class="col-md-2 thumbnail">
        <img src="imagenes/Enllamas.jpg" alt="Enllamas">
        <div class="caption">
        </div>
    </div>
    <div class="col-md-2 thumbnail">
        <img src="imagenes/Enllamas.jpg" alt="Enllamas">
        <div class="caption">
        </div>
    </div>
    <div class="col-md-2 thumbnail">
        <img src="imagenes/Enllamas.jpg" alt="Enllamas">
        <div class="caption">
        </div>
    </div>
    <div class="col-md-2 thumbnail">
        <img src="imagenes/Enllamas.jpg" alt="Enllamas">
        <div class="caption">
        </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">

    </div>
</div>

<%@include file="WEB-INF/layout/pie.jspf" %>