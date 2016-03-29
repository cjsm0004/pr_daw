<%-- 
    Document   : Perfil
    Created on : 27-feb-2016, 13:02:40
    Author     : Susana y Carlos
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@include file="WEB-INF/layout/cabecera.jspf" %>
<%@include file="WEB-INF/layout/menu.jspf" %>
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
          </div>
        </div>
        <div class="col-md-1">
        <a href="Editar perfil.jsp" class="btn btn-primary boton botonE" role="button">Editar perfil</a>
        </div>
    </div>
    <div class="col-md-1">
    </div>
    <div class="col-md-2 thumbnail">
       <img src="imagenes/chicasM.jpg" alt="Enllamas">
          <div class="caption">
          </div>
    </div>
    <div class="col-md-2 thumbnail">
       <img src="imagenes/RubyS.jpg" alt="Enllamas">
          <div class="caption">
          </div>
    </div>
    <div class="col-md-2 thumbnail">
       <img src="imagenes/her.jpg" alt="Enllamas">
          <div class="caption">
          </div>
    </div>
    <div class="col-md-2 thumbnail">
       <img src="imagenes/whiplash.jpg" alt="Enllamas">
          <div class="caption">
          </div>
    </div>
</div>
<div class="row">
    <div class="col-md-2">
        
    </div>
</div>

<%@include file="WEB-INF/layout/pie.jspf" %>