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
            <h3><strong>Añadir Película</strong></h3>
        </div>
        <div class="contacto">
            <form method='POST' name='addPeplicula' id='addPelicula'>
                <div class="row">

                    <label>Título: </label>
                    <input type="text" name="titulo" value="" class="form-control"/>
                    <span class='label label-warning'>${errTitulo}</span><br/>
                    <label>Sinopsis:</label>
                    <textarea class="form-control" name="sinopsis" value="" rows="3"></textarea>
                    <span class='label label-warning'>${errSinopsis}</span><br/>
                    <label>Cartel: </label>
                    <input type="file" name="adjunto" /><br/>

                </div><br/>
                <div class="col-md-4">
                </div>
                <div>
                    <input name="enviar" type="submit" value='Añadir' class='btn btn-primary'>
                </div>
            </form>
        </div>

    </div>
</div>

</main>
<%@include file="/WEB-INF/layout/pie.jspf" %>
