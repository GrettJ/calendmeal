package es.greta.calendmeal.model;

import jakarta.persistence.*;

@Entity
@Table(name="ingredientes_recetas")
public class IngredienteReceta {
    @EmbeddedId
    private IngredienteRecetaId ingredienteRecetaId;
    @Column(nullable = false)
    private int cantidad;

    @ManyToOne
    @JoinColumn(name = "id_medida", nullable = false)
    private UnidadesMedida medida;

    public IngredienteRecetaId getIngredienteRecetaId() {
        return ingredienteRecetaId;
    }

    public void setIngredienteRecetaId(IngredienteRecetaId ingredienteRecetaId) {
        this.ingredienteRecetaId = ingredienteRecetaId;
    }

    public int getCantidad() {
        return cantidad;
    }

    public void setCantidad(int cantidad) {
        this.cantidad = cantidad;
    }

    public UnidadesMedida getMedida() {
        return medida;
    }

    public void setMedida(UnidadesMedida medida) {
        this.medida = medida;
    }
}
