package com.codingdojo.burmeseacademy.controllers;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;

import com.codingdojo.burmeseacademy.models.Login;
import com.codingdojo.burmeseacademy.models.Profesor;
import com.codingdojo.burmeseacademy.models.ProfesorBusqueda;
import com.codingdojo.burmeseacademy.models.Usuario;
import com.codingdojo.burmeseacademy.repositories.ProfesorRepository;
import com.codingdojo.burmeseacademy.services.ProfesorService;

import jakarta.servlet.http.HttpSession;

@Controller
public class PageController {
	
    @Autowired
    private ProfesorService profesorService;
	
	@GetMapping("/")
    public String index(Model model, HttpSession session) {
		session.setAttribute("display", 1);
        model.addAttribute("profesorBusqueda", new ProfesorBusqueda());
        return "index";
    }
	
	@GetMapping("/registro")
	public String login(@ModelAttribute("usuarios") Usuario usuarios,
			@ModelAttribute("loginUsuarios") Login loginUsuarios) {
		return "user/login";
	}
	
	@GetMapping("/perfil")
	public String perfil(@ModelAttribute("usuario") Usuario usuarios,
								@ModelAttribute("login") Login loginUsuarios, 
								HttpSession session, Model model) {
        model.addAttribute("profesorBusqueda", new ProfesorBusqueda());
		session.setAttribute("display", 0);
		return "user/profile";
	}
	
	@GetMapping("vision")
	public String vision(Model model, HttpSession session) {
        model.addAttribute("profesorBusqueda", new ProfesorBusqueda());

		session.setAttribute("display", 1);
		return "search/vision";
	}
	
	@GetMapping("curso")
	public String curso(Model model, HttpSession session) {
        model.addAttribute("profesorBusqueda", new ProfesorBusqueda());
		session.setAttribute("display", 0);
		return "search/curso";
	}
	
	@GetMapping("busqueda")
	public String busqueda(Model model, HttpSession session) {
		session.setAttribute("display", 0);
        model.addAttribute("profesorBusqueda", new ProfesorBusqueda());
		return "search/busquedaInstructores";
	}
	
	@GetMapping("profesor")
	public String profesor(Model model, HttpSession session) {

        model.addAttribute("profesorBusqueda", new ProfesorBusqueda());
		session.setAttribute("display", 0);
		return "search/instructor";
	}
}
