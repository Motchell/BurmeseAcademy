package com.codingdojo.burmeseacademy.models;

import jakarta.validation.constraints.Size;

public class Login {
	
	@Size(min=3, message="Por favor proporcione su correo.")
	private String loginEmail;
	
	@Size(min=3, message="Por favor proporcione su contraseña.")
	private String loginContraseña;

	public Login() {
	}

	public String getLoginEmail() {
		return loginEmail;
	}

	public void setLoginEmail(String loginEmail) {
		this.loginEmail = loginEmail;
	}

	public String getLoginContraseña() {
		return loginContraseña;
	}

	public void setLoginContraseña(String loginContraseña) {
		this.loginContraseña = loginContraseña;
	}
}
