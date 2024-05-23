package com.codingdojo.burmeseacademy.controllers;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;

import com.codingdojo.burmeseacademy.models.Curso;
import com.codingdojo.burmeseacademy.services.CursoService;

@Controller
@RequestMapping("/cursos")
public class CursoController {
    @Autowired
    private CursoService cursoService;

    @GetMapping
    public String listarCursos(Model model) {
        model.addAttribute("cursos", cursoService.obtenerTodosLosCursos());
        return "cursos/listar";
    }

    @GetMapping("/nuevo")
    public String mostrarFormularioDeNuevoCurso(Model model) {
        model.addAttribute("curso", new Curso());
        return "cursos/formulario";
    }

    @PostMapping
    public String crearCurso(@ModelAttribute Curso curso) {
        cursoService.crearCurso(curso);
        return "redirect:/cursos";
    }

    @GetMapping("/{id}/editar")
    public String mostrarFormularioDeEditarCurso(@PathVariable Long id, Model model) {
        model.addAttribute("curso", cursoService.obtenerCursoPorId(id));
        return "cursos/formulario";
    }

    @PostMapping("/{id}")
    public String actualizarCurso(@PathVariable Long id, @ModelAttribute Curso curso) {
        curso.setId(id);
        cursoService.actualizarCurso(curso);
        return "redirect:/cursos";
    }

    @GetMapping("/{id}/eliminar")
    public String eliminarCurso(@PathVariable Long id) {
        cursoService.eliminarCurso(id);
        return "redirect:/cursos";
    }
}