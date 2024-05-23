package com.codingdojo.burmeseacademy.services;

import org.mindrot.jbcrypt.BCrypt;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.validation.BindingResult;

import com.codingdojo.burmeseacademy.models.Login;
import com.codingdojo.burmeseacademy.models.Usuario;
import com.codingdojo.burmeseacademy.repositories.RepositorioUsuarios;

@Service
public class ServicioUsuarios {
	@Autowired
	private RepositorioUsuarios repositorioUsuarios;
	
	public BindingResult confirmacionRegistro(BindingResult resultado, Usuario nuevoUsuarios) {
		if(!nuevoUsuarios.getContraseña().equals(nuevoUsuarios.getConfirmacionContraseña())) {
			resultado.rejectValue("confirmacionContraseña", "Matches", "Las contraseñas no coinciden");
		}
		Usuario usuarioExistente = this.repositorioUsuarios.getByEmail(nuevoUsuarios.getEmail());
		if(usuarioExistente != null) {
			resultado.rejectValue("email", "Unique", "Este correo ya existe, por favor selecciona otro.");
		}
	
		return resultado;
	}
	
	public BindingResult validarLogin(BindingResult resultado, Login loginUsuarios) {
		Usuario usuarioExistente = this.repositorioUsuarios.getByEmail(loginUsuarios.getLoginEmail());
		if(usuarioExistente == null) {
			resultado.rejectValue("loginEmail", "Matches", "Credenciales Incorrectas.");
			return resultado;
		}
		
		if(! BCrypt.checkpw(loginUsuarios.getLoginContraseña(), usuarioExistente.getContraseña())) {
			resultado.rejectValue("loginEmail", "Matches", "Credenciales Incorrectas.");
		}
			return resultado;
	}
	
	public Usuario insertarUsuarios(Usuario nuevoUsuarios) {
		String encriptarContraseña = BCrypt.hashpw(nuevoUsuarios.getContraseña(), BCrypt.gensalt());
		nuevoUsuarios.setContraseña(encriptarContraseña);
		return this.repositorioUsuarios.save(nuevoUsuarios);
	}
	
	public Usuario selectByEmail(String email) {
		return this.repositorioUsuarios.getByEmail(email);
	}
	
	public Usuario selectById(Long id) {
		return this.repositorioUsuarios.getById(id);
	}

}
