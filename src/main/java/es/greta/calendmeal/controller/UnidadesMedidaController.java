package es.greta.calendmeal.controller;


import es.greta.calendmeal.model.UnidadesMedida;
import es.greta.calendmeal.service.UnidadesMedidaService;
import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
@RequestMapping("/*unidadesmedida")

@CrossOrigin(origins = "http://localhost:4200")
public class UnidadesMedidaController {

    @PostConstruct
    public void init() {
        System.out.println("Unidades Medida Cargado");
    }

    @Autowired
    private UnidadesMedidaService unidadesMedidaService;

    @GetMapping
    public List<UnidadesMedida> listarUnidadesMedida() {
        return unidadesMedidaService.getAllUnidadesMedida();
    }
}
