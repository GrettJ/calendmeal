package es.greta.calendmeal.service.impl;

import es.greta.calendmeal.model.IngredienteReceta;
import es.greta.calendmeal.repository.IngredienteRecetaRepository;
import es.greta.calendmeal.service.IngredienteRecetaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IngredienteRecetaServiceImpl implements IngredienteRecetaService {

    @Autowired
    private IngredienteRecetaRepository ingredienteRecetaRepository;

    @Override
    public List<IngredienteReceta> getAllIngredientesReceta() {

        return ingredienteRecetaRepository.findAll();

    }

}
