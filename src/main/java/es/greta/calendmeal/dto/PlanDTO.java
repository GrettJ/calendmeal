package es.greta.calendmeal.dto;

import java.util.List;

public class PlanDTO {
    private List<DiaPlanDTO> dias;

    public List<DiaPlanDTO> getDias() {
        return dias;
    }

    public void setDias(List<DiaPlanDTO> dias) {
        this.dias = dias;
    }
}
