package es.greta.calendmeal.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.greta.calendmeal.dto.DiaPlanDTO;
import es.greta.calendmeal.dto.PlanDTO;
import es.greta.calendmeal.model.Receta;
import es.greta.calendmeal.service.PlanService;
import es.greta.calendmeal.service.RecetaService;

@Service
public class PlanServiceImpl implements PlanService {


	@Autowired
	RecetaService recetaService;
	
	  @Override
	    public PlanDTO generarPlanSemanal() {
	        PlanDTO planSemanal = new PlanDTO();
	        List<DiaPlanDTO> dias = new ArrayList<>();
	        String[] nombresDias = {"Lunes", "Martes", "Miércoles", "Jueves", "Viernes"};

	        // Obtener todas las recetas disponibles
	        List<Receta> todasLasRecetas = recetaService.buscarTodasRecetas();

	        if (todasLasRecetas.size() < 10) {
	            throw new RuntimeException("Debe haber al menos 10 recetas para generar el plan (5 días x 2 comidas)");
	        }

	        // Barajar recetas aleatoriamente
	        Collections.shuffle(todasLasRecetas);

	        int index = 0;
	        for (String nombreDia : nombresDias) {
	            DiaPlanDTO dia = new DiaPlanDTO();
	            dia.setDia(nombreDia);
	            dia.setComida(recetaService.obtenerRecetaConIngredientes(todasLasRecetas.get(index++).getId()));
	            dia.setCena(recetaService.obtenerRecetaConIngredientes(todasLasRecetas.get(index++).getId()));
	            dias.add(dia);
	        }

	        planSemanal.setDias(dias);
	        
	        return planSemanal;
	    }
}