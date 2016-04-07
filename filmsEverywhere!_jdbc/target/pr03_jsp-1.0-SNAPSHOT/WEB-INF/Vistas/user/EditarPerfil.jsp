<%-- 
    Document   : Registro
    Created on : 26-feb-2016, 18:10:25
    Author     : Susana y Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/layout/cabecera.jspf" %>
<main>
    <div class="editarE jumbotron">
        <div>
            <h3><strong>Editar Perfil</strong></h3>
        </div>
        <div class="contacto">
            <form method='POST' name='registro' id='registro' action='./'>
                <div class="row">
                    <div class="col-md-8">
                        <label>Nombre de Usuario</label>
                        <input type="text" name="username" id="username" class="form-control"/>
                        <label>Contraseña</label>
                        <input type="password" name="username" id="username" class="form-control"/>
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
                            <a href="Perfil.jsp" class="btn btn-primary boton botonE" role="button">Aceptar</a>
                    </div>
                    </div>
            </form>
           </div>
        </div>
   
</main>
<%@include file="WEB-INF/layout/pie.jspf" %>
