<%-- 
    Document   : Registro
    Created on : 26-feb-2016, 18:10:25
    Author     : Susana y Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="/WEB-INF/layout/cabecera.jspf" %>

<main>
    <div class="añadirP jumbotron">
        <div>
            <h3><strong>Editar Película</strong></h3>
        </div>
        <div class="contacto">
            <form method='POST' name='editar' id='registro'>
                <div class="row">

                    <label>Título: </label>
                    <input type="text" value="${pelicula.titulo}" name="titulo" id="titulo" class="form-control"/>
                    <span class='label label-warning'>${errTitulo}</span><br/>
                    <label>Sinopsis:</label>
                    <textarea  class="form-control" value="${pelicula.sinopsis}" rows="3" name="sinopsis"></textarea>
                    <span class='label label-warning'>${errSinopsis}</span><br/>
                    <label>Cartel: </label>
                    <input type="file" name="adjunto" /><br/>

                </div><br/>
                <div class="col-md-4"></div>
                <div>
                    <input name="enviar" type="submit" value='Editar' class='btn btn-primary'>
                </div>
            </form>
        </div>
    </div>


</main>
<%@include file="/WEB-INF/layout/pie.jspf" %>
