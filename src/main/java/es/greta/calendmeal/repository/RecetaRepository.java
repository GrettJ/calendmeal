package es.greta.calendmeal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import es.greta.calendmeal.model.Receta;

@Repository
public interface RecetaRepository extends JpaRepository<Receta, Long> {
	
    @Query("SELECT r FROM Receta r WHERE LOWER(r.nombre) LIKE LOWER(CONCAT('%', :nombre, '%'))")
    List<Receta> buscarPorNombre(String nombre);


}