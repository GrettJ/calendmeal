package es.greta.calendmeal.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.CrossOrigin;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import es.greta.calendmeal.dto.PlanDTO;
import es.greta.calendmeal.service.PlanService;

@RestController
@RequestMapping("/plan")
@CrossOrigin(origins = "http://localhost:4200")
public class PlanController {

    @Autowired
    private PlanService planService;

    @GetMapping("/semanal")
    public PlanDTO obtenerPlanSemanal() {
        return planService.generarPlanSemanal();
    }

}

