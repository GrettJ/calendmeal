package es.greta.calendmeal.repository;

import es.greta.calendmeal.model.Alergeno;
import jdk.jfr.Registered;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface AlergenoRepository extends JpaRepository<Alergeno, Integer> {
}
