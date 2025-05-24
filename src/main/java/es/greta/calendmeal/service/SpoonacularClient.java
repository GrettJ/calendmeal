package es.greta.calendmeal.service;

import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;
import org.springframework.web.client.RestTemplate;

import java.util.List;
import java.util.Map;


@Service
public class SpoonacularClient {

    private final String API_KEY = "1494f77046934051a48fbfe211ca153d";
    private final String BASE_URL = "https://api.spoonacular.com/recipes";

    private final RestTemplate restTemplate = new RestTemplate();

    public List<Map<String, Object>> buscarRecetasPorNombre(String nombre) {
        String url = BASE_URL + "/complexSearch?query=" + nombre + "&number=5&apiKey=" + API_KEY;
        ResponseEntity<Map> response = restTemplate.getForEntity(url, Map.class);

        // Spoonacular devuelve "results" dentro del JSON
        List<Map<String, Object>> resultados = (List<Map<String, Object>>) response.getBody().get("results");
        return resultados;
    }

    public Map<String, Object> obtenerRecetaPorId(Long id) {
        String url = BASE_URL + "/" + id + "/information?apiKey=" + API_KEY;
        ResponseEntity<Map> response = restTemplate.getForEntity(url, Map.class);
        return response.getBody();
    }
}

