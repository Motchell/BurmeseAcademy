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
        <title>Burmese Academy - Curso</title>
        <!-- Favicon -->
        <link rel="icon" type="image/x-icon" href="/assets/gatito-icon.png">
        <!-- Bootstrap -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
        <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.11.3/font/bootstrap-icons.min.css">
        <!-- CSS -->
        <link href="/css/cursoEspecifico.css" rel="stylesheet">
        <!-- Google Fonts -->
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <link href="https://fonts.googleapis.com/css2?family=Open+Sans:ital,wght@0,300..800;1,300..800&display=swap" rel="stylesheet">
    </head>
    <body>
    <jsp:include page="/WEB-INF/templates/header.jsp" />
    	<div class="container-fluid">
            <div class="main-content d-flex">
                <div class="container info-curso">
                    <div class="nombreCurso d-flex">
                        <a href="#" class="back-link fs-3 me-2"><i class="fas fa-chevron-left"></i></a>
                        <h3>Nombre curso</h3>
                    </div>                    
                    <h6>(código curso: 123456)</h6>
                    <div class="tags d-flex">
                        <span class="badge text-dark bg-primary">Tags</span>
                        <span class="badge text-dark bg-primary">Tags</span>
                        <span class="badge text-dark bg-primary">Tags</span>
                    </div>                    
                    <p class="text-justify">Aquí va la descripción del curso: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac consectetur justo. Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eu lorem nec arcu consectetur tempor non a purus. Quisque et dolor ut magna varius vehicula a ac libero. Integer ac tincidunt elit. Nulla facilisi. Mauris eget est metus. Integer vel felis vel libero aliquet gravida.</p>
                    <h5>PROGRAMA</h5>
                    <div class="accordion" id="accordionExample">
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button" type="button" data-bs-toggle="collapse" data-bs-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                                ¿Qué aprenderás?
                                </button>
                            </h2>
                            <div id="collapseOne" class="accordion-collapse collapse show" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Aquí va la motivación y aprendizajes: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac consectetur justo. 
                                    Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eu lorem nec arcu 
                                    consectetur tempor non a purus. Quisque et dolor ut magna varius vehicula a ac libero. Integer ac tincidunt elit. Nulla 
                                    facilisi. Mauris eget est metus. Integer vel felis vel libero aliquet gravida.
								</div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseTwo" aria-expanded="false" aria-controls="collapseTwo">
                                Unidades
                                </button>
                            </h2>
                            <div id="collapseTwo" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Aquí van las unidades: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac consectetur justo. 
                                    Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eu lorem nec arcu 
                                    consectetur tempor non a purus. Quisque et dolor ut magna varius vehicula a ac libero. Integer ac tincidunt elit. Nulla 
                                    facilisi. Mauris eget est metus. Integer vel felis vel libero aliquet gravida.
								</div>
                            </div>
                        </div>
                        <div class="accordion-item">
                            <h2 class="accordion-header">
                                <button class="accordion-button collapsed" type="button" data-bs-toggle="collapse" data-bs-target="#collapseThree" aria-expanded="false" aria-controls="collapseThree">
                                Evaluaciones
                                </button>
                            </h2>
                            <div id="collapseThree" class="accordion-collapse collapse" data-bs-parent="#accordionExample">
                                <div class="accordion-body">
                                    Aquí van las evaluaciones: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Fusce ac consectetur justo. 
                                    Vestibulum ante ipsum primis in faucibus orci luctus et ultrices posuere cubilia Curae; Pellentesque eu lorem nec arcu 
                                    consectetur tempor non a purus. Quisque et dolor ut magna varius vehicula a ac libero. Integer ac tincidunt elit. Nulla 
                                    facilisi. Mauris eget est metus. Integer vel felis vel libero aliquet gravida.
								</div>
                            </div>
                        </div>
                    </div>
                    <div class="d-grid gap-2 col-6 mx-auto">
                        <button class="btn btn-primary" type="button">Reservar clase de prueba</button>
                    </div>
                </div>
                <div class="container info-prof text-center">
                    <svg xmlns="http://www.w3.org/2000/svg" width="150" height="150" fill="currentColor" class="bi bi-person-circle" viewBox="0 0 16 16">
                        <path d="M11 6a3 3 0 1 1-6 0 3 3 0 0 1 6 0"/>
                        <path fill-rule="evenodd" d="M0 8a8 8 0 1 1 16 0A8 8 0 0 1 0 8m8-7a7 7 0 0 0-5.468 11.37C3.242 11.226 4.805 10 8 10s4.757 1.225 5.468 2.37A7 7 0 0 0 8 1"/>
                    </svg>
                    <h4>Nombre Instructor</h4>
                    <h6>Título profesional o Expertiz</h6>
                    <p>correo instructor</p>
                    <p>Presentación instructor: Lorem ipsum dolor sit amet, consectetur adipiscing elit. Integer nec odio. Praesent libero. Sed cursus ante dapibus diam. Sed nisi.</p>
                    <div class="conteo-alumnos d-flex align-items-center justify-content-center text-center"> 
                        <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="currentColor" class="bi bi-person" viewBox="0 0 16 16">
                            <path d="M8 8a3 3 0 1 0 0-6 3 3 0 0 0 0 6m2-3a2 2 0 1 1-4 0 2 2 0 0 1 4 0m4 8c0 1-1 1-1 1H3s-1 0-1-1 1-4 6-4 6 3 6 4m-1-.004c-.001-.246-.154-.986-.832-1.664C11.516 10.68 10.289 10 8 10s-3.516.68-4.168 1.332c-.678.678-.83 1.418-.832 1.664z"/>
                        </svg>
                        <p>N° estudiantes</p>
                    </div>
                    <div> 
                        <button type="button" class="btn btn-primary">Contactar</button>
                    </div>
                    <button type="button" class="btn btn-link">Link Zoom Clase</button>  
                </div>
            </div>
        </div>
    	</div>
    <jsp:include page="/WEB-INF/templates/footer.jsp" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0-alpha1/dist/js/bootstrap.min.js"></script>
</body>
</html>