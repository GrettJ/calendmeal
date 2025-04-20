package es.greta.calendmeal.controller;


import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import es.greta.calendmeal.model.Alergeno;
import es.greta.calendmeal.service.AlergenoService;

@RestController
@RequestMapping("/alergenos")
public class AlergenoController {


    @Autowired
    private AlergenoService alergenoService;

    @GetMapping
    public List<Alergeno> listarAlergeno(){
        System.out.println("listarAlergeno");
        return alergenoService.getAllAlergenos();
    }

}
