package es.greta.calendmeal.dto;

import java.util.List;

public class DiaPlanDTO {

    private String dia;
    private List<RecetaResumenDTO> comidas;

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

    public List<RecetaResumenDTO> getComidas() {
        return comidas;
    }

    public void setComidas(List<RecetaResumenDTO> comidas) {
        this.comidas = comidas;
    }
}
