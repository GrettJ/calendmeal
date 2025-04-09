package es.greta.calendmeal.controller;

import es.greta.calendmeal.model.Ingrediente;
import es.greta.calendmeal.service.IngredienteService;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/ingredientes")
public class IngredienteController {

    @PostConstruct
    public void init() {
        System.out.println("IngredienteController cargando correctamente");
    }

    @Autowired
    private IngredienteService ingredienteService;

    @GetMapping
    public List<Ingrediente> listarIngrediente(){
        System.out.println("listarIngrediente");
        return ingredienteService.getAllIngredientes();
    }
}
