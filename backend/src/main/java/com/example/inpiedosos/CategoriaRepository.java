package com.example.inpiedosos;
import java.util.List;
import org.springframework.data.repository.CrudRepository;

import com.example.inpiedosos.CategoriaRepository;

public interface CategoriaRepository extends CrudRepository<Categoria, Long> {
  List<Categoria> findByCategoria(String categoria);
}
