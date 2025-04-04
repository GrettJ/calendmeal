package es.greta.calendmeal.repository;

import es.greta.calendmeal.model.IngredienteReceta;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface IngredienteRecetaRepository extends JpaRepository<IngredienteReceta, Integer> {
}
