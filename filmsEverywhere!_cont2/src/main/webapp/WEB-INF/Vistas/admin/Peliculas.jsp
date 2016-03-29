<%@include file="/WEB-INF/layout/cabecera.jspf" %>
<%@include file="/WEB-INF/layout/menu_admin.jspf" %>
<main>       
    <div class="row">
        <div class="col-md-10">
            <a href="${srvUrl}/addPelicula" class="btn btn-primary" role="button">Añadir Pelicula</a>
        </div>
    </div><br/>
    <div class="row">
        <c:forEach var="p" items="${peliculas}">
            <c:set var="qry" value="?id=${p.id}"/>
            <div class="col-md-4">
                <div class="thumbnail">
                    <a href="${srvUrl}/verFicha${qry}"><img src="${imgUrl}/${p.imagen}" /></a>
                    <div class="caption">
                        <h3>${p.titulo}</h3>
                        <p>...</p>
                        <p>
                            <a href="${srvUrl}/verFicha${qry}" class="btn btn-success" role="button">Ver ficha</a>
                            <a href="${srvUrl}/editarPelicula${qry}" class="btn btn-primary" role="button">Editar ficha</a>
                            <a href="${srvUrl}/borra${qry}" class="btn btn-danger" role="button">Eliminar</a>

                    </div>
                </div>
            </div>
        </c:forEach>
        <%-- <div class="col-md-10">
             <a href="Controlador/addPelicula" class="btn btn-primary" role="button">Añadir Pelicula</a>
         </div>
     </div><br/>
     <div class="row">
         <div class="col-md-4">
             <div class="thumbnail">
                 <img src="imagenes/origen.jpg" alt="origen">
                 <div class="caption">
                     <h3>Origen</h3>
                     <p>...</p>
                     <p>
                         <a href="Controlador/editarPelicula" class="btn btn-primary" role="button">Editar ficha</a>
                         <a href="#" class="btn btn-danger" role="button">Eliminar</a>

                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <img src="imagenes/50primeras.jpg" alt="origen">
                <div class="caption">
                    <h3>Origen</h3>
                    <p>...</p>
                    <p>
                        <a href="${srvUrl}/editarPelicula"class="btn btn-primary" role="button">Editar ficha</a>
                        <a href="#" class="btn btn-danger" role="button">Eliminar</a>

                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <img src="imagenes/hp.jpg" alt="origen">
                <div class="caption">
                    <h3>Harry Potter y la piedra filosofal.</h3>
                    <p>...</p>
                    <p>
                        <a href="Controlador/editarPelicula" class="btn btn-primary" role="button">Editar ficha</a>
                        <a href="#" class="btn btn-danger" role="button">Eliminar</a>

                </div>
            </div>
        </div> --%>

    </div>






</main>

<%@include file="/WEB-INF/layout/pie.jspf" %>
