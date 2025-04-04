package es.greta.calendmeal.service.impl;

import es.greta.calendmeal.model.Alergeno;
import es.greta.calendmeal.repository.AlergenoRepository;
import es.greta.calendmeal.service.AlergenoService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class AlergenoServiceImpl implements AlergenoService {
    @Autowired
    private AlergenoRepository alergenoRepository;
    @Override
    public List<Alergeno> getAllAlergenos() {
        return alergenoRepository.findAll();
    }
}
