package com.codingdojo.burmeseacademy.repositories;

import java.util.List;

import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

import com.codingdojo.burmeseacademy.models.Usuario;

@Repository
public interface RepositorioUsuarios extends CrudRepository<Usuario, Long>{
	List<Usuario> findAll();
	Usuario getByEmail(String email);
	Usuario getById(Long Id);
}
