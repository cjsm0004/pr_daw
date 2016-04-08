<%-- 
    Document   : ini
    Created on : 07-abr-2016, 11:39:46
    Author     : Carlos
--%>

<%--@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/layout/cabecera.jspf" %>
<main>

    <div class="row">
        <div class="col-md-3"></div>
        <div class="portada">
            <img src="imagenes/1.jpg" />
        </div>
    </div>
    <div class="row">
        <div class="col-md-4"></div>
        <a href="UserControlador" class="btn btn-primary boton botonE" role="button">Iniciar Sesión como user</a>
        <a href="AdminControlador" class="btn btn-primary boton botonE" role="button">Iniciar Sesión como admin</a>
        <div class="row">
            <div class="col-md-4">
            </div>
            <label><a href="WEB-INF/Vistas/Registro.jsp">o regístrate</a></label>
        </div>
    </div>


</main>
<%@include file="/WEB-INF/layout/pie.jspf" %>