<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
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
        <title>Burmese Academy - Perfil</title>
        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/assets/gatito-icon.png">
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <!-- CSS -->
        <link href="/css/login.css" rel="stylesheet">
        <link href="/css/vistaUsuario.css" rel="stylesheet">
        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    </head>
    <body>
	    <jsp:include page="/WEB-INF/templates/header.jsp" />
	    	<div class="container-fluid">
	    		<!--Contenido-->
            <div class="main-content d-flex">
                <div class="contenido-principal d-flex">
                    <!--Contenido principal-->
                    <div class="contenido-principal d-flex">
                        <div class="top d-flex">
                            <div class="card" style="width: 18rem;">
                                <div class="card-body">
                                    <i class="bi bi-person-circle big-icon"></i>
                                    <h5>${name}</h5>
                                    <p class="card-text text-center">Datos generales</p>
                                    <p class="card-text c-text-justify">Email: ${email}</p>
                                </div>
                            </div>
                            <div class="escuelas-cursos">
                                <!-- Contenedor Escuelas -->
                                <div class="escuelas-contenedor">
                                    <!-- Botón de flecha izquierda -->
                                    <button class=" flechas flecha-izquierda">&#9664;</button>
                                    <div class="escuelas d-flex flex-wrap">
                                        <div class="card mx-2" style="width: 18rem;">
                                            <div class="card-body">
                                                <h5 class="card-title">Nombre Curso</h5>
                                                <h6 class="card-subtitle mb-2 text-body-secondary">Instructor</h6>
                                                <p class="card-text">Descripción curso en líneas generales, quizá el enfoque</p>
                                                <a href="#" class="card-link">Ver más</a>
                                                <a href="#" class="card-link">Contactar intructor</a>
                                            </div>
                                        </div>
                                        <div class="card mx-2" style="width: 18rem;">
                                            <div class="card-body">
                                                <h5 class="card-title">Nombre Curso</h5>
                                                <h6 class="card-subtitle mb-2 text-body-secondary">Instructor</h6>
                                                <p class="card-text">Descripción curso en líneas generales, quizá el enfoque</p>
                                                <a href="#" class="card-link">Ver más</a>
                                                <a href="#" class="card-link">Contactar intructor</a>
                                            </div>
                                        </div>
                                        <div class="card mx-2" style="width: 18rem;">
                                            <div class="card-body">
                                                <h5 class="card-title">Nombre Curso</h5>
                                                <h6 class="card-subtitle mb-2 text-body-secondary">Instructor</h6>
                                                <p class="card-text">Descripción curso en líneas generales, quizá el enfoque</p>
                                                <a href="#" class="card-link">Ver más</a>
                                                <a href="#" class="card-link">Contactar intructor</a>
                                            </div>
                                        </div>
                                        <div class="card mx-2" style="width: 18rem;">
                                            <div class="card-body">
                                                <h5 class="card-title">Nombre Curso</h5>
                                                <h6 class="card-subtitle mb-2 text-body-secondary">Instructor</h6>
                                                <p class="card-text">Descripción curso en líneas generales, quizá el enfoque</p>
                                                <a href="#" class="card-link">Ver más</a>
                                                <a href="#" class="card-link">Contactar intructor</a>
                                            </div>
                                        </div>
                                        <div class="card mx-2" style="width: 18rem;">
                                            <div class="card-body">
                                                <h5 class="card-title">Nombre Curso</h5>
                                                <h6 class="card-subtitle mb-2 text-body-secondary">Instructor</h6>
                                                <p class="card-text">Descripción curso en líneas generales, quizá el enfoque</p>
                                                <a href="#" class="card-link">Ver más</a>
                                                <a href="#" class="card-link">Contactar intructor</a>
                                            </div>
                                        </div>
                                        <div class="card mx-2" style="width: 18rem;">
                                            <div class="card-body">
                                                <h5 class="card-title">Nombre Curso</h5>
                                                <h6 class="card-subtitle mb-2 text-body-secondary">Instructor</h6>
                                                <p class="card-text">Descripción curso en líneas generales, quizá el enfoque</p>
                                                <a href="#" class="card-link">Ver más</a>
                                                <a href="#" class="card-link">Contactar intructor</a>
                                            </div>
                                        </div>
                                        <div class="card mx-2" style="width: 18rem;">
                                            <div class="card-body">
                                                <h5 class="card-title">Nombre Curso</h5>
                                                <h6 class="card-subtitle mb-2 text-body-secondary">Instructor</h6>
                                                <p class="card-text">Descripción curso en líneas generales, quizá el enfoque</p>
                                                <a href="#" class="card-link">Ver más</a>
                                                <a href="#" class="card-link">Contactar intructor</a>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Botón de flecha derecha -->
                                    <button class="flechas flecha-derecha">&#9654;</button>
                                    <div class="d-grid gap-2">
                                        <button class="btn btn-primary" type="button">Buscar Instructores</button>
                                    </div>
                                </div>
                                <!-- JavaScript para controlar la navegación -->
                                <script>
                                    document.addEventListener('DOMContentLoaded', function () {
                                        const flechaIzquierda = document.querySelector('.flecha-izquierda');
                                        const flechaDerecha = document.querySelector('.flecha-derecha');
                                        const escuelas = document.querySelector('.escuelas');
                                        let indiceVisible = 0;
                                        // Función para mostrar la siguiente tarjeta de escuela
                                        function mostrarSiguienteEscuela() {
                                            if (indiceVisible < escuelas.children.length - 1) {
                                                indiceVisible++;
                                                actualizarVisibilidadEscuelas();
                                            }
                                        }
                                        // Función para mostrar la anterior tarjeta de escuela
                                        function mostrarAnteriorEscuela() {
                                            if (indiceVisible > 0) {
                                                indiceVisible--;
                                                actualizarVisibilidadEscuelas();
                                            }
                                        }
                                        // Función para actualizar la visibilidad de las tarjetas de escuela
                                        function actualizarVisibilidadEscuelas() {
                                            const tarjetasEscuela = escuelas.children;
                                            for (let i = 0; i < tarjetasEscuela.length; i++) {
                                                if (i >= indiceVisible && i < indiceVisible + 3) {
                                                    tarjetasEscuela[i].style.display = 'block';
                                                } else {
                                                    tarjetasEscuela[i].style.display = 'none';
                                                }
                                            }
                                            flechaIzquierda.style.display = indiceVisible === 0 ? 'none' : 'block';
                                            flechaDerecha.style.display = indiceVisible + 3 >= tarjetasEscuela.length ? 'none' : 'block';
                                        }
                                        // Agregar listeners para los botones de flecha
                                        flechaIzquierda.addEventListener('click', mostrarAnteriorEscuela);
                                        flechaDerecha.addEventListener('click', mostrarSiguienteEscuela);
                                        // Mostrar las primeras tres tarjetas de escuela
                                        actualizarVisibilidadEscuelas();
                                    });
                                </script>
                            </div>
                        </div>          
                    </div>
                </div>
            </div>
            <!--Recordatorios-->
            <div class="recordatorios d-flex justify-content-center text-center">
                <div class="card border-primary mb-3" style="max-width: 18rem;">
                    <div class="card-header bg-transparent border-primary">RECORDATORIO</div>
                    <div class="card-body text-primary">
                        <h5 class="card-title"><strong>Instructor</strong></h5>
                        <p class="card-text">Nombre de la clase <br>Día <br>Hora </p>
                    </div>
                    <a class="card-footer bg-transparent border-primary" href="#">Unirse a la clase</a>
                </div>
                <div class="card border-primary mb-3" style="max-width: 18rem;">
                    <div class="card-header bg-transparent border-primary">RECORDATORIO</div>
                    <div class="card-body text-primary">
                        <h5 class="card-title"><strong>Instructor</strong></h5>
                        <p class="card-text">Nombre de la clase <br>Día <br>Hora </p>
                    </div>
                    <a class="card-footer bg-transparent border-primary" href="#">Unirse a la clase</a>
                </div>
                <div class="card border-primary mb-3" style="max-width: 18rem;">
                    <div class="card-header bg-transparent border-primary">RECORDATORIO</div>
                    <div class="card-body text-primary">
                        <h5 class="card-title"><strong>Instructor</strong></h5>
                        <p class="card-text">Nombre de la clase <br>Día <br>Hora </p>
                    </div>
                    <a class="card-footer bg-transparent border-primary" href="#">Unirse a la clase</a>
                </div>
                <div class="card border-primary mb-3" style="max-width: 18rem;">
                    <div class="card-header bg-transparent border-primary">RECORDATORIO</div>
                    <div class="card-body text-primary">
                        <h5 class="card-title"><strong>Instructor</strong></h5>
                        <p class="card-text">Nombre de la clase <br>Día <br>Hora </p>
                    </div>
                    <a class="card-footer bg-transparent border-primary" href="#">Unirse a la clase</a>
                </div>
                <div class="card border-primary mb-3" style="max-width: 18rem;">
                    <div class="card-header bg-transparent border-primary">RECORDATORIO</div>
                    <div class="card-body text-primary">
                        <h5 class="card-title"><strong>Instructor</strong></h5>
                        <p class="card-text">Nombre de la clase <br>Día <br>Hora </p>
                    </div>
                    <a class="card-footer bg-transparent border-primary" href="#">Unirse a la clase</a>
                </div>
                <div class="card border-primary mb-3" style="max-width: 18rem;">
                    <div class="card-header bg-transparent border-primary">RECORDATORIO</div>
                    <div class="card-body text-primary">
                        <h5 class="card-title"><strong>Instructor</strong></h5>
                        <p class="card-text">Nombre de la clase <br>Día <br>Hora </p>
                    </div>
                    <a class="card-footer bg-transparent border-primary" href="#">Unirse a la clase</a>
                </div>                
            </div>
        </div>
	    <jsp:include page="/WEB-INF/templates/footer.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>