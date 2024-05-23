<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form" %>
<nav class="navbar navbar-expand-md navbar-light">
	<div class="container-fluid">
    	<button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarTogglerDemo01" aria-controls="navbarTogglerDemo01" aria-expanded="false" aria-label="Toggle navigation">
        	<span class="navbar-toggler-icon"></span>
    	</button>
    	<div class="logo">
        	<a class="navbar-brand" href="/">
            	<img src="/assets/burmese-logo.png" width="80" alt="Logo BurmeseAcademy">
        	</a>
        	<a class="navbar-brand" href="/">Burmese Academy</a>
    	</div> 
    	<ul class="navbar-nav">
    		<c:if test="${empty idUsuarios}">
	        	<li class="nav-item">
	            	<a class="nav-link" aria-current="page" href="/registro">Ingresar</a>
	        	</li>
        	</c:if>
        	<c:if test="${not empty idUsuarios}">
        		<li class="nav-item">
	            	<a class="nav-link" aria-current="page" href="/perfil">Perfil</a>
	        	</li>
	        	<li class="nav-item">
	            	<a class="nav-link" aria-current="page" href="/logout">Cerrar sesión</a>
	        	</li>
        	</c:if>
    	</ul>
	</div>
</nav>

	<c:if test="${display==1}"> 
        <div class="barra-busqueda text-center">
            <h1>¿Qué quieres aprender?</h1>
		    <form:form modelAttribute="profesorBusqueda" method="post" action="/buscar-profesores">
	            <div class="buscar-container align-items-center justify-content-center">
	                <form:input path="especialidad" type="text" class="buscar-input" placeholder="Buscar instructor de..."/>
	                <button class="buscar-boton" type="submit">Buscar</button>
	            </div>
		    </form:form>
        </div>
    </c:if>