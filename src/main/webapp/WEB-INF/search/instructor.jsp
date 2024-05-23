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
        <title>Burmese Academy - Instructor</title>
        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/assets/gatito-icon.png">
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <!-- CSS -->
        <link href="/css/instructorEspecifico.css" rel="stylesheet">
        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    </head>
    <body>
    <jsp:include page="/WEB-INF/templates/header.jsp" />
    	<!--Contenido principal-->
    	<div class="container-fluid">
            <div class="main-content d-flex">
                <div class="left">
                    <div class="tags d-flex justify-content-center">
                        <span class="badge">Area Instruccion</span>
                        <span class="badge">Modalidad</span>
                        <span class="badge">Plabra específica de la clase</span>
                        <span class="badge">Otro</span>
                    </div>
                    <h1>Presentación instructor, aquí da detalles de su experiencia, sus motivaciones y cualquier dato relevante.</h1>
                    <div class="modalidad">
                        <h5>Modalidad</h5>
                        <div class="card-modalidad">
                            <span class="icon-container"><i class="bi bi-stopwatch-fill"></i></span>
                                <strong>Horario:</strong> rango horario
                        </div>
                        <div class="card-modalidad">
                            <span class="icon-container"><i class="bi bi-laptop-fill"></i></span>
                            <strong>Online</strong>
                        </div>
                    </div>
                    <h5>Sobre mi</h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue.</p>
                    <h5>Acerca de la clase</h5>
                    <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Sed non risus. Suspendisse lectus tortor, dignissim sit amet, adipiscing nec, ultricies sed, dolor. Cras elementum ultrices diam. Maecenas ligula massa, varius a, semper congue, euismod non, mi. Proin porttitor, orci nec nonummy molestie, enim est eleifend mi, non fermentum diam nisl sit amet erat. Duis semper. Duis arcu massa, scelerisque vitae, consequat in, pretium a, enim. Pellentesque congue.</p>
                </div>
                <div class="right">
                    <div class="card" style="width: 18rem;">
                        <i class="bi bi-person-square text-center"></i>
                        <div class="card-body text-center">
                            <h5 class="card-title">Nombre Instructor</h5>
                            <p class="card-text">Área de instrucción</p>
                            <div class="calificacion-intructor d-flex">
                                <span class="icon">⭐</span>
                                <span class="numero">4.9</span>
                                <span class="opiniones">(150 opiniones)</span>
                            </div>
                        </div>
                        <ul class="list-group-item list-group-flush">
                            <div class="cobros d-flex justify-content-between">
                                <li class="list-group">Tarifa por hora</li>
                                <p><strong>$--.---</strong></p>
                            </div>
                            <div class="cobros d-flex justify-content-between">
                                <li class="list-group">Tiempo de respuesta</li>
                                <p><strong>h</strong></p>
                            </div>
                            <div class="cobros d-flex justify-content-between">
                                <li class="list-group">N° estudiantes</li>
                                <p><strong>n°</strong></p>
                            </div>
                        </ul>
                        <div class="card-body-contacto text-center">
                            <button type="button" class="btn btn-primary" style="--bs-btn-padding-y: .25rem; --bs-btn-padding-x: .5rem; --bs-btn-font-size: .75rem;">
                                Contactar
                            </button>
                            <p><strong>1° clase gratis</strong></p>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    <jsp:include page="/WEB-INF/templates/footer.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>