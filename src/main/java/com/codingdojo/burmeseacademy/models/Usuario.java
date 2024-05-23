package com.codingdojo.burmeseacademy.models;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.*;
import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.Size;

@Entity
public class Usuario {
	@Id
	@GeneratedValue(strategy = GenerationType.IDENTITY)
	private long id;
	
	@Size(min=3, message="Por favor proporcione su nombre.")
	private String nombre;
	
	@Email(message = "Por favor ingrese una dirección de correo electrónico válida")
	private String email;
	
	@Size(min=3, message="Por favor proporcione su contraseña.")
	private String contraseña;
	
	@Transient
	private String confirmacionContraseña;
	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date fechaCreacion;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date fechaActualizacion;
	
	@PrePersist
    protected void onCreate(){
        this.fechaCreacion = new Date();
    }
	
    @PreUpdate
    protected void onUpdate(){
        this.fechaActualizacion = new Date();
    }

	public Usuario() {
	}

	@OneToMany(mappedBy = "usuario")
    private List<ComentarioProfesor> comentariosProfesores;

    @OneToMany(mappedBy = "usuario")
    private List<ComentarioCurso> comentariosCursos;

    @OneToMany(mappedBy = "usuario")
    private List<CompraCurso> comprasCursos;

	public long getId() {
		return id;
	}

	public String getNombre() {
		return nombre;
	}

	public String getEmail() {
		return email;
	}

	public String getContraseña() {
		return contraseña;
	}

	public String getConfirmacionContraseña() {
		return confirmacionContraseña;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public Date getFechaActualizacion() {
		return fechaActualizacion;
	}

	public List<ComentarioProfesor> getComentariosProfesores() {
		return comentariosProfesores;
	}

	public List<ComentarioCurso> getComentariosCursos() {
		return comentariosCursos;
	}

	public List<CompraCurso> getComprasCursos() {
		return comprasCursos;
	}

	public void setId(long id) {
		this.id = id;
	}

	public void setNombre(String nombre) {
		this.nombre = nombre;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public void setContraseña(String contraseña) {
		this.contraseña = contraseña;
	}

	public void setConfirmacionContraseña(String confirmacionContraseña) {
		this.confirmacionContraseña = confirmacionContraseña;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public void setFechaActualizacion(Date fechaActualizacion) {
		this.fechaActualizacion = fechaActualizacion;
	}

	public void setComentariosProfesores(List<ComentarioProfesor> comentariosProfesores) {
		this.comentariosProfesores = comentariosProfesores;
	}

	public void setComentariosCursos(List<ComentarioCurso> comentariosCursos) {
		this.comentariosCursos = comentariosCursos;
	}

	public void setComprasCursos(List<CompraCurso> comprasCursos) {
		this.comprasCursos = comprasCursos;
	}
    
    
}
