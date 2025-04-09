package es.greta.calendmeal.service.impl;


import es.greta.calendmeal.model.Ingrediente;
import es.greta.calendmeal.repository.IngredienteRepository;
import es.greta.calendmeal.service.IngredienteService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class IngredienteServiceImpl implements IngredienteService {

    @Autowired
    private IngredienteRepository ingredienteRepository;

    @Override
    public List<Ingrediente> getAllIngredientes(){

        return ingredienteRepository.findAll();
    }
}
