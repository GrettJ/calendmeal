package es.greta.calendmeal.controller;


import es.greta.calendmeal.model.IngredienteReceta;
import es.greta.calendmeal.repository.IngredienteRecetaRepository;
import es.greta.calendmeal.service.IngredienteRecetaService;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/ingredientesreceta")
public class IngredienteRecetaController {

    @Autowired
    private IngredienteRecetaService ingredienteRecetaService;

    @GetMapping
    public List<IngredienteReceta> listarIngredientesReceta() {

        return ingredienteRecetaService.getAllIngredientesReceta();
    }

}
