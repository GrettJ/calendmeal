package es.greta.calendmeal.model;

import java.util.List;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.Id;
import jakarta.persistence.OneToMany;
import jakarta.persistence.Table;

@Entity
@Table(name="recetas")
public class Receta {
    @Id
    private Long id;

    @Column(nullable = false)
    private String nombre;

    @Column(nullable = false)
    private String instrucciones;
    

    @OneToMany(mappedBy = "ingredienteRecetaId.idReceta") // O similar, revisar
    private List<IngredienteReceta> ingredientesReceta;

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getNombre() {
        return nombre;
    }

    public void setNombre(String nombre) {
        this.nombre = nombre;
    }

    public String getInstrucciones() {
        return instrucciones;
    }

    public void setInstrucciones(String instrucciones) {
        this.instrucciones = instrucciones;
    }

	public List<IngredienteReceta> getIngredientesReceta() {
		return ingredientesReceta;
	}

	public void setIngredientesReceta(List<IngredienteReceta> ingredientesReceta) {
		this.ingredientesReceta = ingredientesReceta;
	}
    
}
