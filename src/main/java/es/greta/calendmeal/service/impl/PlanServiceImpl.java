package es.greta.calendmeal.service.impl;

import es.greta.calendmeal.dto.DiaPlanDTO;
import es.greta.calendmeal.dto.PlanDTO;
import es.greta.calendmeal.dto.RecetaResumenDTO;
import es.greta.calendmeal.service.PlanService;
import es.greta.calendmeal.service.SpoonacularClient;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.Map;

@Service
public class PlanServiceImpl implements PlanService {

    @Autowired
    private SpoonacularClient spoonacularClient;

    @Override
    public PlanDTO generarPlanSemanal() {
        // Fetch recipes from Spoonacular API
        List<Map<String, Object>> recetas = spoonacularClient.buscarRecetasPorNombre(""); // Fetch all recipes
        Collections.shuffle(recetas); // Shuffle for variety

        List<DiaPlanDTO> dias = new ArrayList<>();
        String[] nombresDias = {"Lunes", "Martes", "Miércoles", "Jueves", "Viernes"};

        int index = 0;
        for (String dia : nombresDias) {
            List<RecetaResumenDTO> comidas = new ArrayList<>();

            for (int i = 0; i < 2; i++) {
                if (index < recetas.size()) {
                    Map<String, Object> receta = recetas.get(index++);
                    RecetaResumenDTO dto = new RecetaResumenDTO();
                    dto.setId(((Number) receta.get("id")).longValue());
                    dto.setNombre((String) receta.get("title"));
                    dto.setAlergenos(""); // Spoonacular API does not provide allergens directly

                    comidas.add(dto);
                }
            }

            DiaPlanDTO diaPlan = new DiaPlanDTO();
            diaPlan.setDia(dia);
            diaPlan.setComidas(comidas);
            dias.add(diaPlan);
        }

        PlanDTO plan = new PlanDTO();
        plan.setDias(dias);
        return plan;
    }
}