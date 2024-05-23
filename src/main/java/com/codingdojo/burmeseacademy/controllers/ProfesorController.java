package com.codingdojo.burmeseacademy.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.burmeseacademy.models.Profesor;
import com.codingdojo.burmeseacademy.models.ProfesorBusqueda;
import com.codingdojo.burmeseacademy.services.ProfesorService;

import jakarta.servlet.http.HttpSession;

@Controller
public class ProfesorController {
	
    @Autowired
    private ProfesorService profesorService;
	
	@PostMapping("/buscar-profesores")
	public String buscarProfesores(@ModelAttribute ProfesorBusqueda profesorBusqueda, 
									Model model,
									HttpSession session) {
		session.setAttribute("display", 0);
        List<Profesor> profesores = profesorService.buscarProfesoresPorEspecialidad(profesorBusqueda.getEspecialidad());
        model.addAttribute("profesores", profesores);
        return "search/busquedaInstructores";
    }
}
