package es.greta.calendmeal.service.impl;

import java.util.List;
import java.util.stream.Collectors;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.greta.calendmeal.dto.IngredienteDTO;
import es.greta.calendmeal.dto.RecetaDTO;
import es.greta.calendmeal.model.Receta;
import es.greta.calendmeal.repository.RecetaRepository;
import es.greta.calendmeal.service.RecetaService;

@Service
public class RecetaServiceImpl implements RecetaService {

	@Autowired
	private RecetaRepository recetaRepository;
	
	@Override
	public List<Receta> buscarTodasRecetas() {
		return recetaRepository.findAll();
	}

	@Override
	public List<Receta> buscarRecetas(String nombre) {
		return recetaRepository.buscarPorNombre(nombre);
	}

	@Override
	public RecetaDTO obtenerRecetaConIngredientes(Long id) {
	    Receta receta = recetaRepository.findById(id)
	            .orElseThrow(() -> new RuntimeException("Receta no encontrada"));

	        List<IngredienteDTO> ingredientesDTO = receta.getIngredientesReceta().stream()
	            .map(ir -> new IngredienteDTO(
	                ir.getIngrediente().getNombre(), // o si tienes entidad Ingrediente
	                ir.getCantidad(),
	                ir.getMedida().getNombre(),
	                ir.getIngrediente().getAlergenos().stream().map(d-> d.getNombre()).toList()
	            ))
	            .collect(Collectors.toList());

	        return new RecetaDTO(
	            receta.getId(),
	            receta.getNombre(),
	            receta.getInstrucciones(),
	            ingredientesDTO
	        );
	}

}
