package es.greta.calendmeal.service.impl;

import es.greta.calendmeal.model.UnidadesMedida;
import es.greta.calendmeal.repository.UnidadesMedidaRepository;
import es.greta.calendmeal.service.UnidadesMedidaService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UnidadesMedidaServiceImpl implements UnidadesMedidaService {
    @Autowired
    private UnidadesMedidaRepository unidadesMedidaRepository;

    @Override
    public List<UnidadesMedida> getAllUnidadesMedida() {

        return unidadesMedidaRepository.findAll();

    }
}
