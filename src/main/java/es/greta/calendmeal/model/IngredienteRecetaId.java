package es.greta.calendmeal.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;

@Embeddable
public class IngredienteRecetaId {
    @Column(nullable = false)
    private int idReceta;

    @Column(nullable = false)
    private int idIngrediente;
}
