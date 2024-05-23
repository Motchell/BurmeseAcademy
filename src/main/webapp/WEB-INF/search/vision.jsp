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
        <title>Burmese Academy - Vision</title>
        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/assets/gatito-icon.png">
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <!-- CSS -->
        <link href="/css/mision-vision.css" rel="stylesheet">
        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    </head>
    <body>
    <div class="container-fluid">
    <jsp:include page="/WEB-INF/templates/header.jsp" />
     <!--Contenido top-->
            <div class="top">
                <div class="bg-image">
                    <div class="overlay-text">
                        <h1>"Transformando la <br>Curiosidad <br>en conocimiento <br>ilimitado"</h1>
                    </div>
                </div>
            </div>
            <!--Contenido principal-->
            <div class="middle text-center">
                <h2>Nuestro equipo</h2>
                <h5 class="descripcion"><strong>Burmese Academy</strong> está compuesto por un grupo diverso de expertos apasionados y dedicados, provenientes de múltiples disciplinas. Cada miembro aporta su conocimiento especializado y su entusiasmo por la enseñanza, comprometidos con el objetivo de transformar la curiosidad en conocimiento ilimitado. Con una combinación de experiencia académica y profesional, nuestro equipo trabaja incansablemente para ofrecer una experiencia de aprendizaje excepcional, accesible y enriquecedora para todos nuestros estudiantes.</h5>
                <div class="row row-cols-1 row-cols-md-2 g-4">
                    <div class="col">
                        <div class="card">
                            <i class="bi bi-person-circle foto"></i>
                            <div class="card-body">
                                <h5 class="card-title">Mitchell Hidalgo M.</h5>
                                <p class="card-text">---------</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <i class="bi bi-person-circle foto"></i>
                            <div class="card-body">
                                <h5 class="card-title">Paulina Jahnsen P.</h5>
                                <p class="card-text">--------</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <i class="bi bi-person-circle foto"></i>
                            <div class="card-body">
                                <h5 class="card-title">José Duque </h5>
                                <p class="card-text">---------</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <i class="bi bi-person-circle foto"></i>
                            <div class="card-body">
                                <h5 class="card-title">Felipe Carrasco</h5>
                                <p class="card-text">---------</p>
                            </div>
                        </div>
                    </div>
                    <div class="col">
                        <div class="card">
                            <i class="bi bi-person-circle foto"></i>
                            <div class="card-body">
                                <h5 class="card-title">Geraldine Leal </h5>
                                <p class="card-text">-------</p>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
            <!--Contenido final-->
            <div class="mision-vision d-flex justify-content-evenly">
                <div class="mision">
                    <h5><strong>Misión</strong></h5>
                    <p>En Burmese Academy, nuestra misión es transformar la curiosidad en conocimiento ilimitado. Conectamos a personas de todas las edades con instructores expertos en diversas áreas, creando un entorno virtual dinámico y accesible donde la inteligencia y la curiosidad se encuentran. Nos esforzamos por inspirar el amor por el aprendizaje continuo, ofreciendo recursos educativos de alta calidad y fomentando una comunidad de aprendizaje colaborativa y apasionada.</p>
                </div>
                <div class="vision">
                    <h5><strong>Visión</strong></h5>
                    <p>Ser la plataforma líder en educación virtual, reconocida globalmente por nuestra capacidad de despertar y nutrir la curiosidad en cada individuo. En Burmese Academy, aspiramos a empoderar a personas de todas partes del mundo para que alcancen su máximo potencial a través de un aprendizaje innovador y sin límites, contribuyendo así al desarrollo de una sociedad más informada, crítica y creativa.</p>
                </div>
            </div>
            <!--quote-->
            <h4 class="quote text-center">"Deja que tu curiosidad te lleve a nuevos horizontes. En Burmese Academy, cada curso es una puerta abierta al conocimiento ilimitado. Únete a nuestra comunidad y transforma tu curiosidad en sabiduría con la guía de expertos apasionados. ¡Inscríbete hoy y comienza tu viaje de aprendizaje sin límites!"</h4>
    <jsp:include page="/WEB-INF/templates/footer.jsp" />
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>