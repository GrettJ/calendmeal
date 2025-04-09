package es.greta.calendmeal.repository;

import es.greta.calendmeal.model.Alergeno;
import jdk.jfr.Registered;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Query;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface AlergenoRepository extends JpaRepository<Alergeno, Integer> {

    @Query("SELECT a FROM Alergeno a")
    List<Alergeno> findAllAlergenos();
}
