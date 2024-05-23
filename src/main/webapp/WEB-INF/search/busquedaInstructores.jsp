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
        <title>Burmese Academy - Búsqueda</title>
        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/assets/gatito-icon.png">
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <!-- CSS -->
        <link href="/css/index.css" rel="stylesheet">
        <link href="/css/busquedaInstructores.css" rel="stylesheet">
        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    </head>
    <body>
    <div class="container-fluid">
	    <jsp:include page="/WEB-INF/templates/header.jsp" />
	    <!--Filtro-->
            <h2 class="msg">Revisa los cientos de instructores!</h2>
            <div class="row init">
            
                <div class="col-md-3">
                    <div class="container-filtro">
                        <div class="col">
                            <div class="input-group">
                                <input type="text" class="form-control" placeholder="Buscar..." aria-label="Buscar" aria-describedby="searchIcon">
                            </div>
                        </div>
                        <div class="col">
                            <select class="form-select area-estudio" aria-label="Área de estudio">
                                <option selected>Área</option>
                                <option value="1">Educación</option>
                                <option value="2">Salud</option>
                                <option value="3">Idiomas</option>
                                <option value="4">Música</option>
                                <option value="5">Deporte</option>
                                <option value="6">Moda</option>
                                <option value="7">Otro</option>
                            </select>
                        </div>
                        <div class="col">
                            <select class="form-select nivel-academico" aria-label="Nivel académico">
                                <option selected>Nivel de habilidad</option>
                                <option value="1">Sin experiencia</option>
                                <option value="2">Nivel básico</option>
                                <option value="3">Nivel medio</option>
                                <option value="4">Nivel experto</option>
                            </select>
                        </div>
                        <div class="col">
                            <div class="container">
                                <h6><strong>Idioma de instrucción</strong></h6>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckEsp">
                                    <label class="form-check-label" for="flexCheckEsp">Español</label>
                                </div>
                                <div class="form-check">
                                    <input class="form-check-input" type="checkbox" value="" id="flexCheckEng">
                                    <label class="form-check-label" for="flexCheckEng">Inglés</label>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="container">
                                <div class="barra-precios">
                                    <label for="customRange3" class="form-label"><strong>Precio por hora</strong></label>
                                    <input type="range" class="form-range" min="0" max="5" step="0.5" id="customRange3">
                                    <div id="rangeValue" class="mt-2"></div>
                                </div>
                                <div class="mt-3">
                                    <div class="precios d-flex justify-content-between">
                                        <span>$5k</span>
                                        <span>$10k</span>
                                        <span>$15k</span>
                                        <span>$20k</span>
                                        <span>$25k</span>
                                        <span>+$25k</span>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col">
                            <div class="container">
                                <button id="applyFiltersBtn" class="btn btn-primary">Aplicar filtros</button>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-md-9 instructores">
                
                    <!-- Contenido principal middle -->
                    <!--  
                    <c:if test="${not empty profesores}">
				        <ul>
				            <c:forEach var="profesor" items="${profesores}">
				                <li>${profesor.usuario.nombre} - ${profesor.descripcion} (Especialidad: ${profesor.especialidad})</li>
				            </c:forEach>
				        </ul>
				    </c:if>
				    <c:if test="${empty profesores}">
				        <p>No se encontraron profesores con esa especialidad.</p>
				    </c:if>
				    
				    CONTENIDO DINÁMICO, SE USARÁ CONTENIDO ESTÁTICO PARA LA PRESENTACIÓN
				    -->
                    <div class="container-middle text-center">
                        <div class="instructores-container">
                            <div class="instructores-cards flex-wrap">
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
                                        <p><strong>Makeup</strong> - Makeup artist con 5 años de experiencia en distintos eventos, me especializo en maquillajes de alta duración.</p>
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
                                        <p><strong>Piano</strong> - Imparto clases de piano para personas que tengan previo conocimiento.</p>
                                        <p>$20.000/hr</p>
                                        <a href="/profesor" class="btn btn-link">Ver más</a>
                                    </div>
                                </div>
                                <div class="instructores">
                                    <div class="card text-bg-dark">
                                        <img src="/assets/prof-programacion.jpg" class="card-img" alt="prof-programacion">
                                        <div class="card-img-overlay">
                                            <h5 class="card-title">Mario Acosta</h5>
                                            <p class="card-text">Instructor de Programacion</p>
                                        </div>
                                    </div>
                                    <div class="calificacion-intructor d-flex">
                                        <span class="icon">⭐</span>
                                        <span class="numero">4.9</span>
                                        <span class="opiniones">(72 opiniones)</span>
                                    </div>
                                    <div class="info-instructor">
                                        <p><strong>Programación</strong> - Realizo asesorías de programación para principiantes especialmente en diversos lenguajes.</p>
                                        <p>$25.000/hr</p>
                                        <a href="/profesor" class="btn btn-link">Ver más</a>
                                    </div>
                                </div>
                                <div class="instructores">
                                    <div class="card text-bg-dark">
                                        <img src="/assets/prof-pilates.jpg" class="card-img" alt="prof-pilates">
                                        <div class="card-img-overlay">
                                            <h5 class="card-title">María Paz Barda</h5>
                                            <p class="card-text">Instructora de Pilates</p>
                                        </div>
                                    </div>
                                    <div class="calificacion-intructor d-flex">
                                        <span class="icon">⭐</span>
                                        <span class="numero">4.9</span>
                                        <span class="opiniones">(178 opiniones)</span>
                                    </div>
                                    <div class="info-instructor">
                                        <p><strong>Programación</strong> - Realizo clases de introducción a Pilates Reformer desde la comodidad de tu hogar.</p>
                                        <p>$22.000/hr</p>
                                        <a href="/profesor" class="btn btn-link">Ver más</a>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
	    <jsp:include page="/WEB-INF/templates/footer.jsp" />    
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>