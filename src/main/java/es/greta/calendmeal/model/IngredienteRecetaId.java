package es.greta.calendmeal.model;

import jakarta.persistence.Column;
import jakarta.persistence.Embeddable;
import jakarta.persistence.EmbeddedId;

@Embeddable
public class IngredienteRecetaId {
    @Column(nullable = false)
    private int idRecetas;

    @Column(nullable = false)
    private int idIngredientes;
}
