package es.greta.calendmeal.dto;

import java.util.List;

public class DiaPlanDTO {

    private String dia;
    private RecetaDTO comida;
    private RecetaDTO cena;

    public String getDia() {
        return dia;
    }

    public void setDia(String dia) {
        this.dia = dia;
    }

	public RecetaDTO getComida() {
		return comida;
	}

	public void setComida(RecetaDTO comida) {
		this.comida = comida;
	}

	public RecetaDTO getCena() {
		return cena;
	}

	public void setCena(RecetaDTO cena) {
		this.cena = cena;
	}

}
