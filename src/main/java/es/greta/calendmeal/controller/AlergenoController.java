package es.greta.calendmeal.controller;


import es.greta.calendmeal.model.Alergeno;
import es.greta.calendmeal.service.AlergenoService;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/alergenos")
public class AlergenoController {

    @PostConstruct
    public void init() {
        System.out.println("✅ AlergenoController cargado correctamente!");
    }
    @Autowired
    private AlergenoService alergenoService;

    @GetMapping
    public List<Alergeno> listarAlergeno(){
        System.out.println("listarAlergeno");
        return alergenoService.getAllAlergenos();
    }

}
