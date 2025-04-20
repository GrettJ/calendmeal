package es.greta.calendmeal.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import es.greta.calendmeal.model.IngredienteReceta;
import es.greta.calendmeal.service.IngredienteRecetaService;

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
