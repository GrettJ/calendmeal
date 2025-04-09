package es.greta.calendmeal.service.impl;

import es.greta.calendmeal.model.Receta;
import es.greta.calendmeal.repository.RecetaRepository;
import es.greta.calendmeal.service.RecetaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class RecetaServiceImpl implements RecetaService {

    @Autowired
    private RecetaRepository recetaRepository;

    @Override
    public List<Receta> getAllRecetas() {

        return recetaRepository.findAll();
    }

}
