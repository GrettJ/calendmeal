package es.greta.calendmeal.repository;

import es.greta.calendmeal.model.UnidadesMedida;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface UnidadesMedidaRepository extends JpaRepository <UnidadesMedida, Integer> {
}
