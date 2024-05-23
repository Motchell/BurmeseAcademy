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
        <title>Burmese Academy - Inicio</title>
        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/assets/gatito-icon.png">
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <!-- CSS -->
        <link href="/css/index.css" rel="stylesheet">
        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    </head>
    <body>
    <div class="container-fluid">
        <jsp:include page="/WEB-INF/templates/header.jsp" />
        <!-- Contenido principal top -->
        <div class="container-top d-flex justify-content-between">
            <div class="left text-center">
                <h1>Conoce algunas experiencias</h1>
                <img src="/assets/5-stars.svg" width="300" alt="5-stars">
                <h3>Miles de alumnos han evaluado a nuestros instructores con la mejor puntuación</h3>
            </div>
            <div class="right">
                <div id="carouselExampleControls" class="carousel slide" data-bs-ride="carousel">
                    <div class="carousel-inner">
                        <div class="carousel-item active">
                            <div class="row">
                                <div class="nombre-profesor d-flex align-items-center">
                                    <div class="col-4 imagen">
                                        <img src="/assets/prof-pilates.jpg" width="100" class="img-fluid rounded-circle" alt="prof-pilates">
                                    </div>
                                    <div class="col-8">
                                        <h4>María Paz Barda</h4>
                                        <p>Instructora de Pilates</p>
                                    </div>
                                </div>
                                <div class="evaluacion">
                                    <p class="texto">"Siempre nos motiva a superarnos y nos guía con tanta calidez y cuidado. Sus clases no solo fortalecen mi cuerpo, sino también mi mente. ¡No puedo imaginar hacer Pilates sin ella!"</p>
                                    <div class="derecha">
                                        <img src="/assets/5-stars.svg" width="100" alt="5 Estrellas">
                                        <h6>Isidora J.</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="nombre-profesor d-flex align-items-center">
                                    <div class="col-4 imagen">
                                        <img src="/assets/prof-ajedrez.jpg" width="100" class="img-fluid rounded-circle" alt="prof-ajedrez">
                                    </div>
                                    <div class="col-8">
                                        <h4>Oscar Herrera</h4>
                                        <p>Instructor de Ajedrez</p>
                                    </div>
                                </div>
                                <div class="evaluacion">
                                    <p class="texto">"No solo me enseña estrategias, sino que también me inspira a pensar de forma más profunda y creativa. Cada lección es emocionante y enriquecedora."</p>
                                    <div class="derecha">
                                        <img src="/assets/5-stars.svg" width="100" alt="5 Estrellas">
                                        <h6>Julia S.</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <div class="row">
                                <div class="nombre-profesor d-flex align-items-center">
                                    <div class="col-4 imagen">
                                        <img src="/assets/prof-programacion.jpg" width="100" class="img-fluid rounded-circle" alt="prof-programacion">
                                    </div>
                                    <div class="col-8">
                                        <h4>Mario Acosta</h4>
                                        <p>Instructor de Programación</p>
                                    </div>
                                </div>
                                <div class="evaluacion">
                                    <p class="texto">"Inspira confianza en las habilidades de programación de los estudiantes."</p>
                                    <div class="derecha">
                                        <img src="/assets/5-stars.svg" width="100" alt="5 Estrellas">
                                        <h6>Ana M.</h6>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                    <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Anterior</span>
                    </button>
                    <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleControls" data-bs-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="visually-hidden">Siguiente</span>
                    </button>
                </div>
            </div>
        </div>        
        <!-- Contenido principal middle -->
        <div class="container-middle text-center">
            <h2>Instructores altamente calificados, para todas las áreas!</h2>
            <div class="instructores-container">
                <button class="flechas flecha-izquierda" style="display: none;">&#9664;</button>
                <div class="instructores-cards">
                    <div class="instructores">
                        <div class="card text-bg-dark">
                            <img src="/assets/prof-ajedrez.jpg" class="card-img" alt="prof-ajedrez">
                            <div class="card-img-overlay">
                                <h5 class="card-title">Oscar Herrera</h5>
                                <p class="card-text">Instructor de Ajedrez</p>
                            </div>
                        </div>
                        <div class="calificacion-intructor d-flex">
                            <span class="icon">⭐</span>
                            <span class="numero">4.9</span>
                            <span class="opiniones">(150 opiniones)</span>
                        </div>
                        <div class="info-instructor">
                            <p><strong>Ajedrez</strong> - Ajedrecista profesional con más de 10 años de experiencia. Imparto mentorías para todas las edades.</p>
                            <p>$10.000/hr</p>
                            <a href="/profesor" class="btn btn-link">Ver más</a>
                        </div>
                    </div>
                    <div class="instructores">
                        <div class="card text-bg-dark">
                            <img src="/assets/prof-ingles.jpg" class="card-img" alt="prof-ingles">
                            <div class="card-img-overlay">
                                <h5 class="card-title">Lucía Salgado</h5>
                                <p class="card-text">Instructora de Inglés</p>
                            </div>
                        </div>
                        <div class="calificacion-intructor d-flex">
                            <span class="icon">⭐</span>
                            <span class="numero">4.8</span>
                            <span class="opiniones">(85 opiniones)</span>
                        </div>
                        <div class="info-instructor">
                            <p><strong>Inglés</strong> - Soy profesora de inglés y realizo preparaciones para IELTS y TOEFL.</p>
                            <p>$15.000/hr</p>
                            <a href="/profesor" class="btn btn-link">Ver más</a>
                        </div>
                    </div>
                    <div class="instructores">
                        <div class="card text-bg-dark">
                            <img src="/assets/prof-maquillaje.jpg" class="card-img" alt="prof-maquillaje">
                            <div class="card-img-overlay">
                                <h5 class="card-title">Karen Salgado</h5>
                                <p class="card-text">Instructora de Maquillaje</p>
                            </div>
                        </div>
                        <div class="calificacion-intructor d-flex">
                            <span class="icon">⭐</span>
                            <span class="numero">4.6</span>
                            <span class="opiniones">(47 opiniones)</span>
                        </div>
                        <div class="info-instructor">
                            <p><strong>Inglés</strong> - Makeup artist con 5 años de experiencia en distintos eventos, me especializo en maquillajes de alta duración.</p>
                            <p>$8.000/hr</p>
                            <a href="/profesor" class="btn btn-link">Ver más</a>
                        </div>
                    </div>
                    <div class="instructores">
                        <div class="card text-bg-dark">
                            <img src="/assets/prof-matematica.jpg" class="card-img" alt="prof-matemáticas">
                            <div class="card-img-overlay">
                                <h5 class="card-title">Jorge Lecerf</h5>
                                <p class="card-text">Instructor de Matemática</p>
                            </div>
                        </div>
                        <div class="calificacion-intructor d-flex">
                            <span class="icon">⭐</span>
                            <span class="numero">4.8</span>
                            <span class="opiniones">(98 opiniones)</span>
                        </div>
                        <div class="info-instructor">
                            <p><strong>Inglés</strong> - Soy profesor de matemáticas y me especializo en preparación de PAES matemática.</p>
                            <p>$12.000/hr</p>
                            <a href="/profesor" class="btn btn-link">Ver más</a>
                        </div>
                    </div>
                    <div class="instructores">
                        <div class="card text-bg-dark">
                            <img src="/assets/prof-piano.jpg" class="card-img" alt="prof-piano">
                            <div class="card-img-overlay">
                                <h5 class="card-title">Antonio Salgado</h5>
                                <p class="card-text">Instructor de Piano</p>
                            </div>
                        </div>
                        <div class="calificacion-intructor d-flex">
                            <span class="icon">⭐</span>
                            <span class="numero">4.5</span>
                            <span class="opiniones">(35 opiniones)</span>
                        </div>
                        <div class="info-instructor">
                            <p><strong>Inglés</strong> - Imparto clases de piano para personas que tengan previo conocimiento.</p>
                            <p>$20.000/hr</p>
                            <a href="/profesor" class="btn btn-link">Ver más</a>
                        </div>
                    </div>
                </div>
                <button class="flechas flecha-derecha">&#9654;</button>
            </div>
            <script>
                document.addEventListener('DOMContentLoaded', function () {
                    const flechaIzquierda = document.querySelector('.flecha-izquierda');
                    const flechaDerecha = document.querySelector('.flecha-derecha');
                    const instructoresContainer = document.querySelector('.instructores-cards ');
                    let scrollAmount = 0;
                    const cardWidth = 320;        
                    flechaDerecha.addEventListener('click', function () {
                        instructoresContainer.scrollBy({ left: cardWidth, behavior: 'smooth' });
                        scrollAmount += cardWidth;
                        actualizarVisibilidadFlechas();
                    });        
                    flechaIzquierda.addEventListener('click', function () {
                        instructoresContainer.scrollBy({ left: -cardWidth, behavior: 'smooth' });
                        scrollAmount -= cardWidth;
                        actualizarVisibilidadFlechas();
                    });        
                    function actualizarVisibilidadFlechas() {
                        const maxScrollLeft = instructoresContainer.scrollWidth - instructoresContainer.clientWidth;
                        flechaIzquierda.style.display = scrollAmount > 0 ? 'block' : 'none';
                        flechaDerecha.style.display = scrollAmount < maxScrollLeft ? 'block' : 'none';
                    }
                    // Inicializa la visibilidad de las flechas
                    actualizarVisibilidadFlechas();
                });
            </script>
        </div>
        <!-- Contenido principal bottom -->
        <div class="container-bottom text-center">
            <h2>Si una clase no es suficiente, te invitamos a tomar nuestros cursos destacados</h2>
            <div class="cursos">
                <div class="cards-group d-flex flex-wrap justify-content-center">
                    <div class="cards">
                        <img src="/assets/ajedrez.jpeg" class="card-img-top" alt="ajedrez">
                        <div class="cards-body">
                            <h5 class="card-title"><strong>Ajedrez desde cero</strong></h5>
                            <p class="card-text"><small class="text-body-secondary">Oscar Herrera</small></p>
                            <p class="card-text-description">Aprende ajedrez desde cero con un mentor experto en el área.</p>
                            <p class="card-text">$40.000</p>
                            <a href="/curso" class="btn btn-link">Ver detalle</a>
                        </div>
                    </div>
                    <div class="cards">
                        <img src="/assets/pilates.jpg" class="card-img-top" alt="pilates">
                        <div class="cards-body">
                            <h5 class="card-title"><strong>Pilates Reformer</strong></h5>
                            <p class="card-text"><small class="text-body-secondary">María Paz Barda</small></p>
                            <p class="card-text">Ejercitate con Pilates Reformer desde cero en la comodidad de tu hogar.</p>
                            <p class="card-text">$150.000</p>
                            <a href="/curso" class="btn btn-link">Ver detalle</a>
                        </div>
                    </div>
                    <div class="cards">
                        <img src="/assets/piano.jpg" class="card-img-top" alt="piano">
                        <div class="cards-body">
                            <h5 class="card-title"><strong>Piano para principiantes</strong></h5>
                            <p class="card-text"><small class="text-body-secondary">Antonio Salgado</small></p>
                            <p class="card-text">Aprende a tocar piano con clases personalizadas.</p>
                            <p class="card-text">$80.000</p>
                            <a href="/curso" class="btn btn-link">Ver detalle</a>
                        </div>
                    </div>
                    <div class="cards">
                        <img src="/assets/maquillaje.jpg" class="card-img-top" alt="maquillaje">
                        <div class="cards-body">
                            <h5 class="card-title"><strong>Automaquillaje</strong></h5>
                            <p class="card-text"><small class="text-body-secondary">Karen Salgado</small></p>
                            <p class="card-text">Si no tienes experiencia en maquillaje, este curso es ideal.</p>
                            <p class="card-text">$50.000</p>
                            <a href="/curso" class="btn btn-link">Ver detalle</a>
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
