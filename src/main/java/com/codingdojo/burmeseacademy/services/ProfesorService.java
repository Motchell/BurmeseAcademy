package com.codingdojo.burmeseacademy.services;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.codingdojo.burmeseacademy.models.Profesor;
import com.codingdojo.burmeseacademy.repositories.ProfesorRepository;

@Service
public class ProfesorService {
    @Autowired
    private ProfesorRepository profesorRepository;

    public List<Profesor> buscarProfesoresPorEspecialidad(String especialidad) {
        return profesorRepository.findByEspecialidadContaining(especialidad);
    }
    
    public List<Profesor> obtenerTodosLosProfesores() {
        return profesorRepository.findAll();
    }

    public Profesor obtenerProfesorPorId(Long id) {
        return profesorRepository.findById(id).orElse(null);
    }

    public Profesor crearProfesor(Profesor profesor) {
        return profesorRepository.save(profesor);
    }

    public Profesor actualizarProfesor(Profesor profesor) {
        return profesorRepository.save(profesor);
    }

    public void eliminarProfesor(Long id) {
        profesorRepository.deleteById(id);
    }
}