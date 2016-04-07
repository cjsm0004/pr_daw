<%-- 
    Document   : Registro
    Created on : 26-feb-2016, 18:10:25
    Author     : Susana y Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/layout/cabecera.jspf" %>
<main>
    <div class="formulario jumbotron form_reg">
        <div>
            <h3><strong>Registro</strong></h3>
        </div>
        <div class="contacto">
            <form method='POST' name='registro' id='registro' action='./'>
                <div class="row">
                    <div class="col-md-8">
                        <label>Nombre de Usuario</label>
                        <input type="text" name="username" id="username" class="form-control"/>
                        <label>Contraseña</label>
                        <input type="password" name="password" id="password" class="form-control"/>
                        <label>Repita contraseña</label>
                        <input type="password" name="r_password" id="r_password" class="form-control"/>
                    </div>
                    <div class="col-md-10">
                        <label>Correo electrónico</label>
                        <input type="text" name="username" id="username" class="form-control"/>
                    </div>
                </div>
                <label>Fecha de nacimiento</label>
                <input type="date" name="fechaNacim" id="fecha" /><br/>
                <label>Sexo</label><br/>
                <input type="radio" name="sexo" value="Mujer" checked="checked"/>Mujer
                <input type="radio" name="sexo" value="Hombre"/>Hombre<br/>
                <label>Subir foto</label>
                <input type="file" name="adjunto" /><br/>
                <div class="col-md-4">
                </div>
                <div>
                    <a href="Inicio.jsp" class="btn btn-primary boton botonE" role="button">Registrarme</a>
                </div>
        </div>
        </form>
    </div>
</div>

</main>
<%@include file="WEB-INF/layout/pie.jspf" %>
