package es.greta.calendmeal.service;

import es.greta.calendmeal.dto.RecetaDetalleDTO;
import java.util.List;
import java.util.Map;

public interface RecetaService {
    List<Map<String, Object>> buscarRecetas(String nombre);

    RecetaDetalleDTO obtenerReceta(Long id);


}

