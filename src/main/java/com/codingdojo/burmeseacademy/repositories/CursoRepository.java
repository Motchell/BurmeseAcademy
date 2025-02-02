package com.codingdojo.burmeseacademy.repositories;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.burmeseacademy.models.Curso;

@Repository
public interface CursoRepository extends JpaRepository<Curso, Long> {
}