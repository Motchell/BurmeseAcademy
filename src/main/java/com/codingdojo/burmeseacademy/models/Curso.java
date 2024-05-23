package com.codingdojo.burmeseacademy.models;

import java.util.Date;
import java.util.List;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.*;

@Entity
public class Curso {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "profesor_id", nullable = false)
    private Profesor profesor;

    private String titulo;
    private String descripcion;
    private Double precio;
    private Double promedioCalificacion;

    @Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date fechaCreacion;
	
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date fechaActualizacion;

    @OneToMany(mappedBy = "curso")
    private List<ComentarioCurso> comentarios;

    @PrePersist
    protected void onCreate() {
        this.fechaCreacion = new Date();
    }

    @PreUpdate
    protected void onUpdate() {
        this.fechaActualizacion = new Date();
    }

	public Long getId() {
		return id;
	}

	public Profesor getProfesor() {
		return profesor;
	}

	public String getTitulo() {
		return titulo;
	}

	public String getDescripcion() {
		return descripcion;
	}

	public Double getPrecio() {
		return precio;
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

	public List<ComentarioCurso> getComentarios() {
		return comentarios;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setProfesor(Profesor profesor) {
		this.profesor = profesor;
	}

	public void setTitulo(String titulo) {
		this.titulo = titulo;
	}

	public void setDescripcion(String descripcion) {
		this.descripcion = descripcion;
	}

	public void setPrecio(Double precio) {
		this.precio = precio;
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

	public void setComentarios(List<ComentarioCurso> comentarios) {
		this.comentarios = comentarios;
	}

}
