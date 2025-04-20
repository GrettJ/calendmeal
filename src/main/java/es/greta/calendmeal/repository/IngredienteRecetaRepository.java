package es.greta.calendmeal.repository;

import es.greta.calendmeal.model.Alergeno;
import es.greta.calendmeal.model.Ingrediente;
import es.greta.calendmeal.model.IngredienteReceta;
import es.greta.calendmeal.model.IngredienteRecetaId;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface IngredienteRecetaRepository extends JpaRepository<IngredienteReceta, IngredienteRecetaId> {

}
