<%@include file="/WEB-INF/layout/cabecera.jspf" %>
<%@include file="/WEB-INF/layout/menu.jspf" %>
<main>       
    <div class="row">

        <c:forEach var="p" items="${peliculas}">
            <c:set var="qry" value="?id=${p.id}"/>
            <div class="col-md-4">
                <div class="thumbnail">
                    <a href="${srvUrl}/verFicha${qry}"><img src="${imgUrl}/${p.imagen}"></a>
                    <div class="caption">
                        <h3>${p.titulo}</h3>
                        <p>...</p>
                        <p>
                            <a href="${srvUrl}/verFicha${qry}" class="btn btn-primary" role="button">Ver ficha</a>
                            <a href="#" class="btn btn-success" role="button">Comprar</a>

                    </div>
                </div>
            </div>
        </c:forEach>


        <%--<div class="col-md-4">
            <div class="thumbnail">
                <img src="imagenes/origen.jpg" alt="origen">
                <div class="caption">
                    <h3>Origen</h3>
                    <p>...</p>
                    <p>
                        <a href="FichaOrigen.jsp" class="btn btn-primary" role="button">Ver ficha</a>
                        <a href="#" class="btn btn-success" role="button">Comprar</a>

                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="thumbnail">
                <img src="imagenes/50primeras.jpg" alt="origen">
                <div class="caption">
                    <h3>50 primeras citas</h3>
                    <p>...</p>
                    <p>
                        <a href="Ficha50.jsp" class="btn btn-primary" role="button">Ver ficha</a>
                        <a href="#" class="btn btn-success" role="button">Comprar</a>

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
                        <a href="FichaHP.jsp" class="btn btn-primary" role="button">Ver ficha</a>
                        <a href="#" class="btn btn-success" role="button">Comprar</a>

                </div>
            </div>
</div> --%>

    </div>






</main>

<%@include file="/WEB-INF/layout/pie.jspf" %>
