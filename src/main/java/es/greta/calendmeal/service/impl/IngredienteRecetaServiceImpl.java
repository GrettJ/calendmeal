package es.greta.calendmeal.service.impl;

import es.greta.calendmeal.model.IngredienteReceta;
import es.greta.calendmeal.repository.IngredienteRecetaRepository;
import es.greta.calendmeal.service.IngredienteRecetaService;
import org.springframework.beans.factory.annotation.Autowired;

import java.util.List;

public class IngredienteRecetaServiceImpl implements IngredienteRecetaService {

    @Autowired
    private IngredienteRecetaRepository ingredienteRecetaRepository;
    @Override
    public List<IngredienteReceta> getAllIngredientesReceta() {
        return ingredienteRecetaRepository.findAll();
    }

    /*@Override
    public List<IngredienteReceta> getCantidad() {
        return ingredienteRecetaRepository.count();
    }

    @Override
    public List<IngredienteReceta> getMedida() {
        return null;
    }*/
}
