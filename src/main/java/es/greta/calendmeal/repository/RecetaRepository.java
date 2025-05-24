package es.greta.calendmeal.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import es.greta.calendmeal.model.Receta;

import java.util.List;

@Repository
public interface RecetaRepository extends JpaRepository<Receta, Long> {

}