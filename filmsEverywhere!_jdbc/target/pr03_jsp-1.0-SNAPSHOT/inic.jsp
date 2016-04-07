<%--@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" --%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/layout/cabecera.jspf" %>
<main>
    <div class="jumbotron boxlogin">
        <form action="j_security_check" method="POST" name="login" id="login">
            <label>Nombre de usuario: </label>
            <input type="text" name="j_username" id="username" class="form-control"/>
            <label>Contraseña: </label>
            <input type="password" name="j_password" id="password" class="form-control"/><br/>
            <div class="col-md-2"></div>
            <input type="submit" value="Enviar"/>
            
            <!--<a href="UserControlador" class="btn btn-primary boton botonE" role="button">Iniciar Sesión como user</a>
            <a href="AdminControlador" class="btn btn-primary boton botonE" role="button">Iniciar Sesión como admin</a>
            <div class="row">
                <div class="col-md-3">
                </div>
                <label><a href="WEB-INF/Vistas/Registro.jsp">o regístrate</a></label>
            </div>-->

        </form>

    </div> 

</main>
<%@include file="/WEB-INF/layout/pie.jspf" %>