package com.codingdojo.burmeseacademy.models;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.*;

@Entity
public class Profesor {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @OneToOne
    @JoinColumn(name = "usuario_id", nullable = false)
    private Usuario usuario;
    
    private String tiempoRespuesta;
    private String especialidad;
    private String descripcion;
    private String modalidad; //TODO normalización
    private Double promedioCalificacion;

    @Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date fechaCreacion;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date fechaActualizacion;

    @OneToMany(mappedBy = "profesor")
    private List<Curso> cursos;

    @OneToMany(mappedBy = "profesor")
    private List<ComentarioProfesor> comentarios;

    @PrePersist
    protected void onCreate() {
        this.fechaCreacion = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.fechaActualizacion = new Date();
    }
    
    public Profesor() {
    }

	public Long getId() {
		return id;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public String getTiempoRespuesta() {
		return tiempoRespuesta;
	}

	public String getEspecialidad() {
		return especialidad;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public String getModalidad() {
		return modalidad;
	}

	public Double getPromedioCalificacion() {
		return promedioCalificacion;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public Date getFechaActualizacion() {
		return fechaActualizacion;
	}

	public List<Curso> getCursos() {
		return cursos;
	}

	public List<ComentarioProfesor> getComentarios() {
		return comentarios;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public void setTiempoRespuesta(String tiempoRespuesta) {
		this.tiempoRespuesta = tiempoRespuesta;
	}

	public void setEspecialidad(String especialidad) {
		this.especialidad = especialidad;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public void setModalidad(String modalidad) {
		this.modalidad = modalidad;
	}

	public void setPromedioCalificacion(Double promedioCalificacion) {
		this.promedioCalificacion = promedioCalificacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

	public void setFechaActualizacion(Date fechaActualizacion) {
		this.fechaActualizacion = fechaActualizacion;
	}

	public void setCursos(List<Curso> cursos) {
		this.cursos = cursos;
	}

	public void setComentarios(List<ComentarioProfesor> comentarios) {
		this.comentarios = comentarios;
	}

}