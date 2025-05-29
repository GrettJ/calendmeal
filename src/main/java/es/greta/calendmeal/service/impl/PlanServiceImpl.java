package es.greta.calendmeal.service.impl;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

import es.greta.calendmeal.dto.RecetaDTO;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import es.greta.calendmeal.dto.DiaPlanDTO;
import es.greta.calendmeal.dto.PlanDTO;
import es.greta.calendmeal.dto.RecetaResumenDTO;
import es.greta.calendmeal.model.Receta;
import es.greta.calendmeal.repository.RecetaRepository;
import es.greta.calendmeal.service.PlanService;
import es.greta.calendmeal.service.RecetaService;

@Service
public class PlanServiceImpl implements PlanService {

	@Autowired
	private RecetaService recetaService;

	@Autowired
	private RecetaRepository recetaRepository;

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

	@Override
	public PlanDTO generarPlanSemanalExcluyendoAlergeno(Integer alergenoId) {
		// Obtener recetas excluyendo el alérgeno especificado
		List<Receta> recetas = recetaRepository.findRecetasSinAlergeno(alergenoId);
		if (recetas.size() < 10) {
			throw new RuntimeException("Debe haber al menos 10 recetas sin el alérgeno especificado para generar el plan (5 días x 2 comidas)");
		}

		Collections.shuffle(recetas); // Barajar para mayor variedad

		List<DiaPlanDTO> dias = new ArrayList<>();
		String[] nombresDias = {"Lunes", "Martes", "Miércoles", "Jueves", "Viernes"};

		int index = 0;
		for (String dia : nombresDias) {
			List<RecetaResumenDTO> comidas = new ArrayList<>();

			for (int i = 0; i < 2; i++) {
				if (index < recetas.size()) {
					Receta receta = recetas.get(index++);
					RecetaResumenDTO dto = new RecetaResumenDTO();
					dto.setId(receta.getId());
					dto.setNombre(receta.getNombre());
					dto.setAlergenos(""); // Completar si es necesario

					comidas.add(dto);
				}
			}

			DiaPlanDTO diaPlan = new DiaPlanDTO();
			diaPlan.setDia(dia);
			diaPlan.setComida((RecetaDTO) comidas);
			dias.add(diaPlan);
		}

		PlanDTO plan = new PlanDTO();
		plan.setDias(dias);
		return plan;
	}
}