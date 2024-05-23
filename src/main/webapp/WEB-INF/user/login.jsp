<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <!-- MetaDatos -->
        <meta charset="UTF-8">
        <meta name="author" content="BurmeseAcademy">
        <meta name="description" content="BurmeseAcademy">
        <meta name="keywords" content="BurmeseAcademy, Academy, VirtualAcademy">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <!-- Titulo -->
        <title>Burmese Academy - Registro</title>
        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/assets/gatito-icon.png">
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <!-- CSS -->
        <link href="/css/login.css" rel="stylesheet">
        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    </head>
    <body>
    <div class="container-fluid">
        <!-- Contenido principal top -->
        <div class="container-top d-flex justify-content-between">
            <div class="presentacion-container d-flex">
                <div class="container-info">
                    <div class="info">
                        <h1>"Transformando la Curiosidad en conocimiento ilimitado"</h1>
                        <p>En <strong>Burmese Academy</strong> creemos que la curiosidad es el motor del aprendizaje y el descubrimiento. Somos una escuela virtual diseñada para satisfacer tu insaciable sed de conocimiento, ofreciéndote una amplia gama de cursos en todas las áreas imaginables. Desde ciencia y tecnología hasta arte y humanidades, nuestra plataforma te abre las puertas a un universo de posibilidades educativas.</p>
                        <p>Disfruta de la primera clase ¡Gratis!</p>
                    </div>
                    <div class="login-prof">
                        <h6>¿Eres instructor? Regístrate acá:</h6>
                        <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#crearCuentaModalProfesor">
                            Registrarme
                        </button>
                        <!-- Modal registro profesor -->
                        <div class="modal fade" id="crearCuentaModalProfesor" tabindex="-1" aria-labelledby="crearCuentaModalProfesorLabel" aria-hidden="true">
                            <div class="modal-dialog">
                                <div class="modal-content">
                                    <div class="modal-header">
                                        <h5 class="modal-title" id="crearCuentaModalProfesorLabel">Registro Profesor</h5>
                                        <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                    </div>
                                    <div class="modal-body">
                                        <form>
                                            <div class="mb-3">
                                                <label for="nombreCompleto" class="form-label">Nombre Completo</label>
                                                <input type="text" class="form-control" id="nombreCompleto" placeholder="Ingrese su nombre completo">
                                            </div>
                                            <div class="mb-3">
                                                <label for="correo" class="form-label">Correo Electrónico</label>
                                                <input type="email" class="form-control" id="correo" placeholder="Ingrese su correo electrónico">
                                            </div>
                                            <div class="mb-3">
                                                <label for="contrasena" class="form-label">Contraseña</label>
                                                <input type="password" class="form-control" id="contrasena" placeholder="Ingrese su contraseña">
                                            </div>
                                            <div class="mb-3">
                                                <label for="confirmacionContrasena" class="form-label">Confirmar Contraseña</label>
                                                <input type="password" class="form-control" id="confirmacionContrasena" placeholder="Confirme su contraseña">
                                            </div>
                                            <button type="submit" class="btn btn-primary">Registrarse</button>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="login">
                    <h3>Mi cuenta</h3>
                    <form:form modelAttribute="loginUsuarios" action="/login" method="POST">
                        <form:label path="loginEmail" for="loginEmail">Email:</form:label><br>
                        <form:input path="loginEmail" id="loginEmail" name="loginEmail" type="email"/><br><br>
                        <form:label path="loginContraseña" for="loginContraseña">Contraseña:</form:label><br>
                        <form:input path="loginContraseña" id="loginContraseña" name="loginContraseña" type="password"/><br><br>
                        <input type="submit" value="Iniciar Sesión">
                    </form:form>
                    <a href="#">Olvidé mi contraseña</a>
                    <h6>¿No tienes cuenta? Regístrate!</h6>
                    <!-- Botón Modal para registro alumno -->
                    <button type="button" class="btn btn-primary" data-bs-toggle="modal" data-bs-target="#crearCuentaModalAlumno">
                        Crear cuenta
                    </button>
                    <!-- Modal registro nuevo usuario -->
                    <div class="modal fade" id="crearCuentaModalAlumno" tabindex="-1" role="dialog" aria-labelledby="crearCuentaModalAlumnoLabel" aria-hidden="true">
                        <div class="modal-dialog" role="document">
                            <div class="modal-content">
                                <div class="modal-header">
                                    <h5 class="modal-title" id="crearCuentaModalAlumnoLabel">Crear cuenta</h5>
                                    <button type="button" class="btn-close" data-bs-dismiss="modal" aria-label="Close"></button>
                                </div>
                                
                                <form:form modelAttribute="usuarios" action="/registro" method="POST">
	                                <div class="modal-body">
	                                        <div class="form-group">
	                                            <form:label path="nombre" for="nombre">Nombre completo</form:label>
	                                            <form:input path="nombre" id="nombre" name="nombre" type="text" class="form-control" placeholder="Ingresa tu nombre completo"/>
	                                        </div>
	                                        <div class="form-group mt-1">
	                                            <form:label path="email" for="email">Correo electrónico</form:label>
	                                            <form:input path="email" id="email" name="email" type="email" class="form-control" placeholder="Ingresa tu correo electrónico"/>
	                                        </div>
	                                        <div class="form-group mt-1">
	                                            <form:label path="contraseña" for="contraseña">Contraseña</form:label>
	                                            <form:input path="contraseña" id="contraseña" name="contraseña" type="password" class="form-control" placeholder="Ingresa tu contraseña" />
	                                        </div>
	                                        <div class="form-group mt-1">
	                                            <form:label path="confirmacionContraseña" for="confirmacionContraseña">Confirmar contraseña</form:label>
	                                            <form:input path="confirmacionContraseña" id="confirmacionContraseña" name="confirmacionContraseña" type="password" class="form-control" placeholder="Confirma tu contraseña" />
	                                        </div>
	                                    
	                                </div>
	                                <div class="modal-footer">
	                                    <button type="button" class="btn btn-secondary" data-bs-dismiss="modal">Cancelar</button>
	                                    <button type="submit" class="btn btn-primary">Enviar</button>
	                                </div>
                                </form:form>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <jsp:include page="/WEB-INF/templates/footer.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>
