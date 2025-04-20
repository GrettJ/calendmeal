package es.greta.calendmeal.repository;

import java.util.List;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import es.greta.calendmeal.model.Alergeno;

@Repository
public interface AlergenoRepository extends JpaRepository<Alergeno, Integer> {

    @Query("SELECT a FROM Alergeno a")
    List<Alergeno> findAllAlergenos();
}
