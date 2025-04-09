package es.greta.calendmeal.controller;

import es.greta.calendmeal.model.Receta;
import es.greta.calendmeal.service.RecetaService;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/receta")
public class RecetaController {

    @PostConstruct
    public void init() {
        System.out.println("Receta cargada correctamente");
    }

    @Autowired
    public RecetaService recetaService;

    @GetMapping
    public List<Receta> listarReceta(){
        return recetaService.getAllRecetas();
    }
}
