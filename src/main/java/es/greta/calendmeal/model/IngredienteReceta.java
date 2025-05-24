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
    
    @ManyToOne
    @MapsId("idReceta") // indica que este campo usa el idReceta dentro de IngredienteRecetaId
    @JoinColumn(name = "id_receta", insertable = false, updatable = false)
    private Receta receta;

    @ManyToOne
    @MapsId("idIngrediente") // indica que este campo usa el idIngrediente dentro de IngredienteRecetaId
    @JoinColumn(name = "id_ingrediente", insertable = false, updatable = false)
    private Ingrediente ingrediente;


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

	public Ingrediente getIngrediente() {
		return ingrediente;
	}

	public void setIngrediente(Ingrediente ingrediente) {
		this.ingrediente = ingrediente;
	}
    
}
