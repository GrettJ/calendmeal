package es.greta.calendmeal.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.RestController;

import es.greta.calendmeal.dto.RecetaDTO;
import es.greta.calendmeal.model.Receta;
import es.greta.calendmeal.service.RecetaService;

@RestController
@RequestMapping("/receta")
@CrossOrigin(origins = "http://localhost:4200")
public class RecetaController {

    @Autowired
    private RecetaService recetaService;

    @GetMapping("/buscar")
    public List<Receta> buscarRecetas(@RequestParam String nombre) {
        return recetaService.buscarRecetas(nombre);
    }

    @GetMapping("/{id}")
    public RecetaDTO obtenerReceta(@PathVariable Long id) {
        return recetaService.obtenerRecetaConIngredientes(id);
    }
    
}