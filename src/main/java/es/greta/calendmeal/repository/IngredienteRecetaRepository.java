package es.greta.calendmeal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import es.greta.calendmeal.model.IngredienteReceta;
import es.greta.calendmeal.model.IngredienteRecetaId;

@Repository
public interface IngredienteRecetaRepository extends JpaRepository<IngredienteReceta, IngredienteRecetaId> {

}
