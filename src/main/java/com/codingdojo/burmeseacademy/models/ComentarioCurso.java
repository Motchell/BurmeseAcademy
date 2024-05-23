package com.codingdojo.burmeseacademy.models;

import java.util.Date;

import org.springframework.format.annotation.DateTimeFormat;

import jakarta.persistence.*;

@Entity
public class ComentarioCurso {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @ManyToOne
    @JoinColumn(name = "usuario_id", nullable = false)
    private Usuario usuario;

    @ManyToOne
    @JoinColumn(name = "curso_id", nullable = false)
    private Curso curso;

    private String comentario;
    private Integer calificacion;

    @Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date fechaCreacion;


    @PrePersist
    protected void onCreate() {
        this.fechaCreacion = new Date();
    }

	public Long getId() {
		return id;
	}

	public Usuario getUsuario() {
		return usuario;
	}

	public Curso getCurso() {
		return curso;
	}

	public String getComentario() {
		return comentario;
	}

	public Integer getCalificacion() {
		return calificacion;
	}

	public Date getFechaCreacion() {
		return fechaCreacion;
	}

	public void setId(Long id) {
		this.id = id;
	}

	public void setUsuario(Usuario usuario) {
		this.usuario = usuario;
	}

	public void setCurso(Curso curso) {
		this.curso = curso;
	}

	public void setComentario(String comentario) {
		this.comentario = comentario;
	}

	public void setCalificacion(Integer calificacion) {
		this.calificacion = calificacion;
	}

	public void setFechaCreacion(Date fechaCreacion) {
		this.fechaCreacion = fechaCreacion;
	}

}
