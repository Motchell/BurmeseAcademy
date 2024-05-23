package com.codingdojo.burmeseacademy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

import com.codingdojo.burmeseacademy.models.Login;
import com.codingdojo.burmeseacademy.models.Usuario;
import com.codingdojo.burmeseacademy.services.ServicioUsuarios;

import jakarta.servlet.http.HttpSession;
import jakarta.validation.Valid;

@Controller
public class ControladorUsuarios {
	
	@Autowired
	private ServicioUsuarios servicioUsuarios;
	
	@PostMapping("/registro")
	public String procesaRegistro(@Valid @ModelAttribute("usuarios") Usuario nuevoUsuarios,
								  BindingResult resultado,
								  @ModelAttribute("loginUsuarios") Login loginUsuarios,
								  HttpSession session) {
		resultado = this.servicioUsuarios.confirmacionRegistro(resultado, nuevoUsuarios);
		if(resultado.hasErrors()) {
			return "user/login";
		}
		nuevoUsuarios = this.servicioUsuarios.insertarUsuarios(nuevoUsuarios);
		session.setAttribute("idUsuarios", nuevoUsuarios.getId());
		session.setAttribute("name", nuevoUsuarios.getNombre());
		session.setAttribute("email", nuevoUsuarios.getEmail());
	
		return "redirect:/";
	}
	
	@PostMapping("/login")
	public String loginProcess(@Valid @ModelAttribute("loginUsuarios") Login loginUsuarios,
								BindingResult resultado,
								@ModelAttribute("usuarios") Usuario usuarios,
								HttpSession session) {
		resultado = this.servicioUsuarios.validarLogin(resultado, loginUsuarios);
		if(resultado.hasErrors()) {
			return "user/login";
		}
		
		Usuario usuarioExistente = this.servicioUsuarios.selectByEmail(loginUsuarios.getLoginEmail());
		
		session.setAttribute("idUsuarios", usuarioExistente.getId());
		session.setAttribute("name", usuarioExistente.getNombre());
		session.setAttribute("email", usuarioExistente.getEmail());
		
		return "redirect:/";
	}
	
	@GetMapping("/logout")
	public String processLogout(HttpSession session) {
		session.invalidate();
		return "redirect:/";
	}
}
