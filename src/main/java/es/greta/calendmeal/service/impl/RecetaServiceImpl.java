package es.greta.calendmeal.service.impl;

import es.greta.calendmeal.dto.IngredienteDTO;
import es.greta.calendmeal.dto.RecetaDetalleDTO;
import es.greta.calendmeal.service.RecetaService;
import es.greta.calendmeal.service.SpoonacularClient;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.Map;

@Service
public class RecetaServiceImpl implements RecetaService {

    private final String API_KEY = "1494f77046934051a48fbfe211ca153d";
    private final String BASE_URL = "https://api.spoonacular.com/recipes";

    @Override
    public List<Map<String, Object>> buscarRecetas(String nombre) {
        String url = BASE_URL + "/complexSearch?query=" + nombre + "&number=5&apiKey=" + API_KEY;

        RestTemplate restTemplate = new RestTemplate();
        Map<String, Object> response = restTemplate.getForObject(url, Map.class);

        return (List<Map<String, Object>>) response.get("results");
    }

    @Override
    public RecetaDetalleDTO obtenerReceta(Long id) {
        String url = BASE_URL + "/" + id + "/information?includeNutrition=false&apiKey=" + API_KEY;

        RestTemplate restTemplate = new RestTemplate();
        Map<String, Object> response = restTemplate.getForObject(url, Map.class);

        RecetaDetalleDTO detalle = new RecetaDetalleDTO();
        detalle.setId(id.intValue());
        detalle.setNombre((String) response.get("title"));
        detalle.setInstrucciones((String) response.get("instructions"));
        detalle.setImagenUrl((String) response.get("image"));
        detalle.setAlergenos((String) response.get("allergens"));

        // Obtener los ingredientes
        @SuppressWarnings("unchecked")
        // Cast a List<Map<String, Object>> para evitar advertencias de tipo
        // Se asume que la API devuelve una lista de mapas para los ingredientes

        List<Map<String, Object>> extendedIngredients = (List<Map<String, Object>>) response.get("extendedIngredients");

        List<IngredienteDTO> ingredientes = extendedIngredients.stream().map(ingrediente -> {
            IngredienteDTO dto = new IngredienteDTO();
            dto.setNombre((String) ingrediente.get("name"));
            dto.setCantidad(((Number) ingrediente.get("amount")).doubleValue());
            dto.setUnidad((String) ingrediente.get("unit"));
            return dto;
        }).toList();

        detalle.setIngredientes(ingredientes);
        return detalle;
    }

}

