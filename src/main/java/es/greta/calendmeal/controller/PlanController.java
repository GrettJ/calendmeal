package es.greta.calendmeal.controller;

import es.greta.calendmeal.dto.PlanDTO;
import es.greta.calendmeal.dto.RecetaDetalleDTO;
import es.greta.calendmeal.service.PlanService;
import es.greta.calendmeal.service.RecetaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/plan")
@CrossOrigin(origins = "http://localhost:4200")
public class PlanController {

    @Autowired
    private PlanService planService;

    @Autowired
    private RecetaService recetaService; // Inject RecetaService

    @GetMapping("/semanal")
    public PlanDTO obtenerPlanSemanal() {
        return planService.generarPlanSemanal();
    }

    @GetMapping("/{id}")
    public RecetaDetalleDTO obtenerReceta(@PathVariable Long id) {
        return recetaService.obtenerReceta(id);
    }

}

