package es.greta.calendmeal.service;

import java.util.List;

import es.greta.calendmeal.dto.RecetaDTO;
import es.greta.calendmeal.model.Receta;

public interface RecetaService {
	
	List<Receta> buscarTodasRecetas();
    List<Receta> buscarRecetas(String nombre);
    RecetaDTO obtenerRecetaConIngredientes(Long id);


}

