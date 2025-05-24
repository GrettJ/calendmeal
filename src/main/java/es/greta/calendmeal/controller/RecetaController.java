package es.greta.calendmeal.controller;

import es.greta.calendmeal.service.SpoonacularClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

import java.util.List;
import java.util.Map;

@RestController
@RequestMapping("/receta")
@CrossOrigin(origins = "http://localhost:4200")
public class RecetaController {

    @Autowired
    private SpoonacularClient spoonacularClient;

    @GetMapping("/buscar")
    public List<Map<String, Object>> buscarRecetas(@RequestParam String nombre) {
        return spoonacularClient.buscarRecetasPorNombre(nombre);
    }

    @GetMapping("/{id}")
    public Map<String, Object> obtenerReceta(@PathVariable Long id) {
        return spoonacularClient.obtenerRecetaPorId(id);
    }
}